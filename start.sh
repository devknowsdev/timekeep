#!/bin/bash
# TimeKeep launcher — serves the app on localhost so the PWA can be installed
echo ""
echo "  ████████╗██╗███╗   ███╗███████╗██╗  ██╗███████╗███████╗██████╗ "
echo "     ██╔══╝██║████╗ ████║██╔════╝██║ ██╔╝██╔════╝██╔════╝██╔══██╗"
echo "     ██║   ██║██╔████╔██║█████╗  █████╔╝ █████╗  █████╗  ██████╔╝"
echo "     ██║   ██║██║╚██╔╝██║██╔══╝  ██╔═██╗ ██╔══╝  ██╔══╝  ██╔═══╝ "
echo "     ██║   ██║██║ ╚═╝ ██║███████╗██║  ██╗███████╗███████╗██║     "
echo "     ╚═╝   ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     "
echo ""
echo "  Starting on http://localhost:8765"
echo "  → Open that URL in your browser"
echo "  → Install as app via the browser menu (Install App / Add to Dock)"
echo "  → After install, this server can be stopped — app runs offline"
echo ""
echo "  Press Ctrl+C to stop the server"
echo ""

# Try Python 3 first, then Python 2
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

if command -v python3 &>/dev/null; then
  python3 -m http.server 8765
elif command -v python &>/dev/null; then
  python -m SimpleHTTPServer 8765
else
  echo "Python not found. Please install Python or open index.html directly."
  exit 1
fi
