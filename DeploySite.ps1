
# sass ./site/custom.sass ./site/public/index.css
# pandoc paper/Compression.tex --toc -s --mathjax -c index.css -o site/paper_proto.html --bibliography paper/Compression.bib -t html5 --citeproc
# python.exe .\0parseHtml.py
# Set-Location site
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Write-host "My directory is $dir"

Set-Location $dir

firebase deploy
# Set-Location ..