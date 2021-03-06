<#
    Borrowed with gratitude from Stefan Scherer
    https://github.com/StefanScherer/dockerfiles-windows/blob/master
#>

$ErrorActionPreference = 'Stop';
$files = ""
Write-Host Starting test -ForegroundColor 'Yellow'

if ( $env:APPVEYOR_PULL_REQUEST_NUMBER ) {
  Write-Host Pull request $env:APPVEYOR_PULL_REQUEST_NUMBER -ForegroundColor 'Yellow'
  $files = $(git --no-pager diff --name-only FETCH_HEAD $(git merge-base FETCH_HEAD master))
} else {
  Write-Host Branch $env:APPVEYOR_REPO_BRANCH -ForegroundColor 'Yellow'
  $files = $(git diff --name-only HEAD~1)
}

Write-Host Changed files: -ForegroundColor 'Yellow'

$dirs = @{}

$files | ForEach-Object {
  Write-Host $_ -ForegroundColor 'Yellow'
  $dir = $_ -replace "\/[^\/]+$", ""
  $dir = $dir -replace "/", "\"
  if (Test-Path "$dir\test.ps1") {
    Write-Host "Storing $dir for test" -ForegroundColor 'Yellow'
    $dirs.Set_Item($dir, 1)
  } else {
    $dir = $dir -replace "\\[^\\]+$", ""
    if (Test-Path "$dir\test.ps1") {
      Write-Host "Storing $dir for test" -ForegroundColor 'Yellow'
      $dirs.Set_Item($dir, 1)
    }
  }
}

$dirs.GetEnumerator() | Sort-Object Name | ForEach-Object {
  $dir = $_.Name
  Write-Host Testing in directory $dir -ForegroundColor 'Yellow'
  Push-Location $dir
  .\test.ps1
  Pop-Location
}