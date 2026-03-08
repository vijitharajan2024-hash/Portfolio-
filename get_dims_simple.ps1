[Reflection.Assembly]::LoadWithPartialName("System.Drawing") | Out-Null
$images = @("flow  (1).png", "flow  (3).png")
foreach ($name in $images) {
    $path = "d:\Vijitha\Vijitha portfolio V1\assets vijitha\MY STORY\$name"
    if (Test-Path $path) {
        $img = [System.Drawing.Image]::FromFile($path)
        Write-Host "$name - WIDTH:$($img.Width) HEIGHT:$($img.Height)"
        $img.Dispose()
    } else {
        Write-Host "File not found: $path"
    }
}
