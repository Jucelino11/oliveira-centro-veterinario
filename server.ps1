$port = 5500
$ip = [System.Net.IPAddress]::Loopback
$listener = [System.Net.Sockets.TcpListener]::new($ip, $port)
$listener.Server.SetSocketOption([System.Net.Sockets.SocketOptionLevel]::Socket, [System.Net.Sockets.SocketOptionName]::ReuseAddress, $true)

try {
    $listener.Start()
    Write-Output "Servidor HTTP iniciado em http://127.0.0.1:$port/"
} catch {
    $port = 5501
    $listener = [System.Net.Sockets.TcpListener]::new($ip, $port)
    $listener.Server.SetSocketOption([System.Net.Sockets.SocketOptionLevel]::Socket, [System.Net.Sockets.SocketOptionName]::ReuseAddress, $true)
    $listener.Start()
    Write-Output "Servidor HTTP iniciado em http://127.0.0.1:$port/"
}

$baseDir = Join-Path $PSScriptRoot "preview-site"

while ($true) {
    try {
        $client = $listener.AcceptTcpClient()
        $stream = $client.GetStream()
        $reader = [System.IO.StreamReader]::new($stream, [System.Text.Encoding]::UTF8)
        $writer = [System.IO.StreamWriter]::new($stream, [System.Text.UTF8Encoding]::new($false))

        $requestLine = $reader.ReadLine()
        while ($line = $reader.ReadLine()) {
            if ([string]::IsNullOrWhiteSpace($line)) { break }
        }

        if (-not [string]::IsNullOrWhiteSpace($requestLine)) {
            $parts = $requestLine.Split(" ")
            if ($parts.Length -ge 2) {
                $rawPath = $parts[1].Split("?")[0].TrimStart('/')
                $path = [System.Uri]::UnescapeDataString($rawPath)
                if ([string]::IsNullOrWhiteSpace($path)) {
                    $path = "index.html"
                }

                $filePath = Join-Path $baseDir $path
                if (Test-Path $filePath -PathType Container) {
                    $filePath = Join-Path $filePath "index.html"
                }
                if (Test-Path $filePath -PathType Leaf) {
                    $content = [System.IO.File]::ReadAllBytes($filePath)
                    $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
                    $contentType = switch ($ext) {
                        ".html" { "text/html; charset=utf-8" }
                        ".css"  { "text/css; charset=utf-8" }
                        ".js"   { "application/javascript; charset=utf-8" }
                        ".jpg"  { "image/jpeg" }
                        ".jpeg" { "image/jpeg" }
                        ".png"  { "image/png" }
                        ".webp" { "image/webp" }
                        ".svg"  { "image/svg+xml" }
                        ".ico"  { "image/x-icon" }
                        default { "application/octet-stream" }
                    }

                    $writer.WriteLine("HTTP/1.1 200 OK")
                    $writer.WriteLine("Content-Type: $contentType")
                    $writer.WriteLine("Content-Length: $($content.Length)")
                    $writer.WriteLine("Connection: close")
                    $writer.WriteLine()
                    $writer.Flush()
                    $stream.Write($content, 0, $content.Length)
                } else {
                    $notFoundPath = Join-Path $baseDir "404.html"
                    if (Test-Path $notFoundPath) {
                        $content = [System.IO.File]::ReadAllBytes($notFoundPath)
                        $writer.WriteLine("HTTP/1.1 404 Not Found")
                        $writer.WriteLine("Content-Type: text/html; charset=utf-8")
                        $writer.WriteLine("Content-Length: $($content.Length)")
                        $writer.WriteLine("Connection: close")
                        $writer.WriteLine()
                        $writer.Flush()
                        $stream.Write($content, 0, $content.Length)
                    } else {
                        $msg = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
                        $writer.WriteLine("HTTP/1.1 404 Not Found")
                        $writer.WriteLine("Content-Length: $($msg.Length)")
                        $writer.WriteLine("Connection: close")
                        $writer.WriteLine()
                        $writer.Flush()
                        $stream.Write($msg, 0, $msg.Length)
                    }
                }
            }
        }
        $client.Close()
    } catch {
        # ignora erros de conexao pontual
    }
}
