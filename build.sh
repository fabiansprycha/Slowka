#!/bin/sh
# Wraps the app source (artifact page) into index.html with PWA tags for GitHub Pages.
# Usage: ./build.sh path/to/slowka.html
SRC="$1"
{
  printf '<!doctype html>\n<html lang="pl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<link rel="manifest" href="manifest.webmanifest">\n<link rel="icon" href="icon-192.png">\n<link rel="apple-touch-icon" href="apple-touch-icon.png">\n'
  printf '<meta name="theme-color" content="#2f6fde">\n<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-title" content="Słówka">\n<meta name="apple-mobile-web-app-status-bar-style" content="default">\n'
  sed -n '1,/^<\/style>/p' "$SRC"
  printf '</head>\n<body>\n'
  sed '1,/^<\/style>/d' "$SRC"
  printf '<script>if ("serviceWorker" in navigator) navigator.serviceWorker.register("sw.js").catch(function () {});</script>\n'
  printf '</body>\n</html>\n'
} > index.html
