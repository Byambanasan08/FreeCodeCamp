param(
  [string[]]$ContentRoots
)

$ErrorActionPreference = "Stop"

# Title used for the workspace root README and the docs-map heading.
$WorkspaceTitle = "w3schools"

$rootPath = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot ".."))
$excludedSegment = '(^|[\\/])(node_modules|\.git|\.next|dist|build|\.turbo|\.cache)([\\/]|$)'
$utilityHubNames = @(".vscode", "scripts")
$utilitySubtreeNames = @(".vscode", "src", "scripts")
$autoStart = "<!-- AUTO-GENERATED-INDEX:START -->"
$autoEnd = "<!-- AUTO-GENERATED-INDEX:END -->"

function Test-IncludedPath([string]$path) {
  return $path -notmatch $excludedSegment
}

function Test-ContentPath([string]$path) {
  $relative = [System.IO.Path]::GetFullPath($path).Substring($rootPath.Length).TrimStart("\")
  if ($relative -eq "") {
    return $true
  }

  $firstSegment = ($relative -split "\\")[0]
  return $ContentRoots -contains $firstSegment
}

function Remove-AutoIndex([string]$text) {
  return [regex]::Replace($text, "(?s)<!-- AUTO-GENERATED-INDEX:START -->.*?<!-- AUTO-GENERATED-INDEX:END -->", "").Trim()
}

function Format-Title([string]$name) {
  $base = [System.IO.Path]::GetFileNameWithoutExtension($name)
  if ([string]::IsNullOrWhiteSpace($base)) {
    $base = $name
  }

  $words = $base -replace "[-_]+", " "
  return (Get-Culture).TextInfo.ToTitleCase($words.ToLowerInvariant())
}

function Get-RelativePathCompat([string]$fromDir, [string]$toPath) {
  $fromUri = New-Object System.Uri (($fromDir.TrimEnd("\") + "\"))
  $toUri = New-Object System.Uri $toPath
  return [Uri]::UnescapeDataString($fromUri.MakeRelativeUri($toUri).ToString())
}

function Format-LinkTarget([string]$target) {
  $normalized = $target.Replace("\", "/").Replace(">", "%3E")
  return "<$normalized>"
}

function Test-ManualReadme([System.IO.DirectoryInfo]$directory) {
  $readmePath = Join-Path $directory.FullName "README.md"
  if (-not (Test-Path -LiteralPath $readmePath -PathType Leaf)) {
    return $false
  }

  $raw = Get-Content -LiteralPath $readmePath -Raw
  $base = Remove-AutoIndex $raw
  $expected = "# " + (Format-Title $directory.Name)
  return ($base -and ($base.Trim() -ne $expected))
}

function Get-ManualReadmeBody([System.IO.DirectoryInfo]$directory) {
  $readmePath = Join-Path $directory.FullName "README.md"
  if (-not (Test-Path -LiteralPath $readmePath -PathType Leaf)) {
    return ""
  }

  return Remove-AutoIndex (Get-Content -LiteralPath $readmePath -Raw)
}

function Get-DirectoryDepth([System.IO.DirectoryInfo]$directory) {
  $relative = $directory.FullName.Substring($rootPath.Length).TrimStart("\")
  if ($relative -eq "") {
    return 0
  }

  return ($relative -split "\\").Count
}

function Get-RepoRelativePath([string]$path) {
  $fullPath = [System.IO.Path]::GetFullPath($path)
  if ($fullPath -eq $rootPath) {
    return "."
  }

  return $fullPath.Substring($rootPath.Length).TrimStart("\").Replace("\", "/")
}

function Get-DirectDocFiles([System.IO.DirectoryInfo]$directory) {
  return @(Get-ChildItem -LiteralPath $directory.FullName -File -ErrorAction SilentlyContinue |
    Where-Object {
      $_.Name -ne "README.md" -and
      $_.Name -ne "docs-map.md" -and
      ($_.Extension -in @(".md", ".txt"))
    } |
    Sort-Object Name)
}

function Get-DirectProjectFiles([System.IO.DirectoryInfo]$directory) {
  return @(Get-ChildItem -LiteralPath $directory.FullName -File -ErrorAction SilentlyContinue |
    Where-Object {
      $_.Name -ne "README.md" -and
      $_.Name -ne "docs-map.md" -and
      ($_.Extension -notin @(".md", ".txt"))
    } |
    Sort-Object Name)
}

# Auto-detect content roots when none are passed: every top-level directory that
# is not a utility/build folder. Add a new folder and re-run -- it is picked up
# automatically, no edits needed.
if (-not $ContentRoots -or @($ContentRoots).Count -eq 0) {
  $ContentRoots = @(Get-ChildItem -LiteralPath $rootPath -Directory -ErrorAction SilentlyContinue |
    Where-Object {
      (Test-IncludedPath -path $_.FullName) -and
      ($utilitySubtreeNames -notcontains $_.Name.ToLowerInvariant())
    } |
    Sort-Object Name |
    Select-Object -ExpandProperty Name)
}

$includedContentFiles = @(Get-ChildItem -LiteralPath $rootPath -Recurse -File -ErrorAction SilentlyContinue |
  Where-Object {
    (Test-IncludedPath -path $_.FullName) -and
    (Test-ContentPath -path $_.FullName) -and
    $_.Name -ne "README.md" -and
    $_.Name -ne "docs-map.md"
  } |
  Sort-Object FullName)

$allDirs = @((Get-Item -LiteralPath $rootPath)) + @(Get-ChildItem -LiteralPath $rootPath -Recurse -Directory |
  Where-Object { Test-IncludedPath -path $_.FullName } |
  Sort-Object FullName)

$hubDirs = New-Object "System.Collections.Generic.HashSet[string]"

foreach ($dir in $allDirs) {
  $hasManualReadme = Test-ManualReadme $dir
  $isUtilityHub = $utilityHubNames -contains $dir.Name.ToLowerInvariant()
  $relativeDir = $dir.FullName.Substring($rootPath.Length).TrimStart("\")
  $firstSegment = if ($relativeDir -eq "") { "" } else { ($relativeDir -split "\\")[0].ToLowerInvariant() }
  $isUtilitySubtree = $utilitySubtreeNames -contains $firstSegment
  $hasContentInSubtree = $includedContentFiles |
    Where-Object { $_.FullName.StartsWith($dir.FullName.TrimEnd("\") + "\") } |
    Select-Object -First 1

  if (
    $dir.FullName -eq $rootPath -or
    $hasManualReadme -or
    ((Test-ContentPath -path $dir.FullName) -and -not $isUtilityHub -and -not $isUtilitySubtree -and $hasContentInSubtree)
  ) {
    [void]$hubDirs.Add($dir.FullName)
  }
}

foreach ($hubPath in @($hubDirs)) {
  $parent = Split-Path -Parent $hubPath
  while ($parent -and $parent.StartsWith($rootPath) -and $parent -ne $rootPath) {
    [void]$hubDirs.Add($parent)
    $parent = Split-Path -Parent $parent
  }
  [void]$hubDirs.Add($rootPath)
}

$readmes = @(Get-ChildItem -LiteralPath $rootPath -Recurse -Filter README.md -File |
  Where-Object { Test-IncludedPath -path $_.FullName })

$removedCount = 0
foreach ($readme in $readmes) {
  if ($hubDirs.Contains($readme.Directory.FullName)) {
    continue
  }

  if (Test-ManualReadme $readme.Directory) {
    continue
  }

  Remove-Item -LiteralPath $readme.FullName
  $removedCount++
}

foreach ($hubPath in ($hubDirs | Sort-Object)) {
  $dir = Get-Item -LiteralPath $hubPath
  $readmePath = Join-Path $dir.FullName "README.md"
  $body = Get-ManualReadmeBody $dir

  if ([string]::IsNullOrWhiteSpace($body)) {
    if ($dir.FullName -eq $rootPath) {
      $body = "# $WorkspaceTitle"
    } else {
      $body = "# " + (Format-Title $dir.Name)
    }
  }

  $lines = [System.Collections.Generic.List[string]]::new()
  [void]$lines.Add($body.Trim())
  [void]$lines.Add("")
  [void]$lines.Add($autoStart)
  [void]$lines.Add("")

  $nav = [System.Collections.Generic.List[string]]::new()
  if ($dir.FullName -ne $rootPath) {
    $parentReadme = Join-Path $dir.Parent.FullName "README.md"
    if ($hubDirs.Contains($dir.Parent.FullName)) {
      $parentRel = Get-RelativePathCompat $dir.FullName $parentReadme
      [void]$nav.Add("Parent: [" + (Format-Title $dir.Parent.Name) + "](" + (Format-LinkTarget $parentRel) + ")")
    }
  }

  $rootRel = Get-RelativePathCompat $dir.FullName (Join-Path $rootPath "README.md")
  if ($dir.FullName -ne $rootPath) {
    [void]$nav.Add("Root: [$WorkspaceTitle](" + (Format-LinkTarget $rootRel) + ")")
  }

  $mapRel = Get-RelativePathCompat $dir.FullName (Join-Path $rootPath "docs-map.md")
  [void]$nav.Add("Full map: [docs-map](" + (Format-LinkTarget $mapRel) + ")")

  if ($nav.Count -gt 0) {
    [void]$lines.Add(($nav -join " | "))
    [void]$lines.Add("")
  }

  [void]$lines.Add("## Index")
  [void]$lines.Add("")

  $childHubs = @(Get-ChildItem -LiteralPath $dir.FullName -Directory -ErrorAction SilentlyContinue |
    Where-Object { (Test-IncludedPath -path $_.FullName) -and $hubDirs.Contains($_.FullName) } |
    Sort-Object Name)

  if ($childHubs.Count -gt 0) {
    [void]$lines.Add("### Folders")
    [void]$lines.Add("")
    foreach ($child in $childHubs) {
      [void]$lines.Add("- [" + (Format-Title $child.Name) + "](" + (Format-LinkTarget ("./" + $child.Name + "/README.md")) + ")")
    }
    [void]$lines.Add("")
  }

  $docs = Get-DirectDocFiles $dir
  if ($docs.Count -gt 0) {
    [void]$lines.Add("### Documents")
    [void]$lines.Add("")
    foreach ($doc in $docs) {
      [void]$lines.Add("- [" + (Format-Title $doc.Name) + "](" + (Format-LinkTarget ("./" + $doc.Name)) + ")")
    }
    [void]$lines.Add("")
  }

  $depth = Get-DirectoryDepth $dir
  $projectFiles = Get-DirectProjectFiles $dir
  if ($projectFiles.Count -gt 0 -and ($depth -le 1 -or (Test-ContentPath -path $dir.FullName))) {
    [void]$lines.Add("### Project Files")
    [void]$lines.Add("")
    foreach ($file in $projectFiles) {
      [void]$lines.Add("- [" + (Format-Title $file.Name) + "](" + (Format-LinkTarget ("./" + $file.Name)) + ")")
    }
    [void]$lines.Add("")
  }

  [void]$lines.Add($autoEnd)
  [System.IO.File]::WriteAllText($readmePath, ($lines -join "`r`n"), [System.Text.UTF8Encoding]::new($true))
}

$mapLines = [System.Collections.Generic.List[string]]::new()
[void]$mapLines.Add("# Docs Map")
[void]$mapLines.Add("")
[void]$mapLines.Add("Generated navigation map for the ``$WorkspaceTitle`` workspace. Use local README indexes to reach every content file.")
[void]$mapLines.Add("")
[void]$mapLines.Add("- [Start here](<./README.md>)")
[void]$mapLines.Add("")

$includedReadmes = @(Get-ChildItem -LiteralPath $rootPath -Recurse -Filter README.md -File |
  Where-Object {
    (Test-IncludedPath -path $_.FullName) -and
    $hubDirs.Contains($_.Directory.FullName)
  } |
  Sort-Object FullName)

$rootReadme = Get-Item -LiteralPath (Join-Path $rootPath "README.md")
$includedReadmes = @($rootReadme) + $includedReadmes

function Add-MapDirectory([System.IO.DirectoryInfo]$directory, [int]$depth) {
  $readmePath = Join-Path $directory.FullName "README.md"
  if (-not (Test-Path -LiteralPath $readmePath -PathType Leaf)) {
    return
  }

  $indent = "  " * $depth
  $title = if ($directory.FullName -eq $rootPath) { $WorkspaceTitle } else { Format-Title $directory.Name }
  $relReadme = Get-RelativePathCompat $rootPath $readmePath
  [void]$mapLines.Add($indent + "- [" + $title + "](" + (Format-LinkTarget ("./" + $relReadme)) + ")")

  $children = @(Get-ChildItem -LiteralPath $directory.FullName -Directory -ErrorAction SilentlyContinue |
    Where-Object { (Test-IncludedPath -path $_.FullName) -and $hubDirs.Contains($_.FullName) } |
    Sort-Object Name)

  foreach ($child in $children) {
    Add-MapDirectory $child ($depth + 1)
  }
}

[void]$mapLines.Add("## Navigation")
[void]$mapLines.Add("")
Add-MapDirectory (Get-Item -LiteralPath $rootPath) 0

[System.IO.File]::WriteAllText((Join-Path $rootPath "docs-map.md"), ($mapLines -join "`r`n"), [System.Text.UTF8Encoding]::new($true))

$finalReadmeCount = @(Get-ChildItem -LiteralPath $rootPath -Recurse -Filter README.md -File |
  Where-Object { Test-IncludedPath -path $_.FullName }).Count

Write-Output "Content roots: $($ContentRoots -join ', ')"
Write-Output "Hub README files: $finalReadmeCount"
Write-Output "Removed auto-only README files: $removedCount"
Write-Output "Content files reachable through README indexes: $($includedContentFiles.Count)"
