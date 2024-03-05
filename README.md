# lseri: a lua-seri fork for luajit/lua5.1

This repo is based on cloudwu/ltask and cloudwu/lua-serialize. The original implementation
targets lua5.4. The source code is thus modified to backport to lua5.1 api (e.g., no rawgetp, so use rawget instead).

<TODO>: add luajit type (cdata type) support