@msbuild /m:1 /v:minimal /clp:Summary /t:Rebuild /p:BuildProjectReferences=false %*
