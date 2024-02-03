mkdir "$PSScriptRoot\build" -ErrorAction SilentlyContinue > $null;

$base = 'https://github.com/nerixyz/tmp-c2-icons/raw/main';

$text = Get-Content "$PSScriptRoot\README.md";
$text -replace '\(([\w/]+\.svg)\)', "($base/`$1)" > build/README.md;
