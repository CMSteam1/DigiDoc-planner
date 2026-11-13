$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$prefix = "http://127.0.0.1:8766/"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)
$listener.Start()
Write-Host "DigiDoc-Kasper bezi na $prefix"
while ($listener.IsListening) {
    $context = $listener.GetContext()
    $relative = $context.Request.Url.LocalPath.TrimStart("/")
    if ([string]::IsNullOrWhiteSpace($relative)) { $relative = "index.html" }
    $file = Join-Path $root $relative
    if (Test-Path -LiteralPath $file) {
        $bytes = [System.IO.File]::ReadAllBytes($file)
        $context.Response.ContentType = "text/html; charset=utf-8"
        $context.Response.ContentLength64 = $bytes.Length
        $context.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
        $context.Response.StatusCode = 404
    }
    $context.Response.Close()
}
