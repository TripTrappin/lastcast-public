#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-8000}"
cd "$(dirname "$0")"
echo "Serving Last Cast at http://localhost:${PORT}/  (Ctrl-C to stop)"
exec python3 -c '
import sys, http.server, socketserver
class H(http.server.SimpleHTTPRequestHandler):
    def guess_type(self, path):
        # The game file has no extension; serve it as HTML so browsers render it
        # rather than offering it as a download.
        import os
        if "." not in os.path.basename(path):
            return "text/html; charset=utf-8"
        return super().guess_type(path)
port = int(sys.argv[1])
socketserver.TCPServer.allow_reuse_address = True
with socketserver.TCPServer(("", port), H) as httpd:
    httpd.serve_forever()
' "${PORT}"
