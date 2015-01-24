divert(-1)dnl vim: ft=m4
changequote({{,}})

define(ABOUT,{{define(__CUR{{}}RENT__,$1)}})

define({{YES_}}, $1 -> $2 [label="oui"])
define({{NO_}}, $1 -> $2 [label="non"])

define({{POINT}},{{ABOUT($1)dnl
$1 [shape=cds, label="$2", $3]}}) 

define({{ASK}},{{ABOUT($1)dnl
$1 [shape=box, style=rounded, color=blue, label="$2", $3]}})  

define({{TPROC}},{{$1 [shape=box, label="$2", $3]}})
define({{PROC}},{{ABOUT($1)TPROC($1,$2,$3)}})

define({{WHEN}},{{__CURRENT__ -> $2 [label="$1",$3]}})

define({{YN}},{{YES_(__CURRENT__,$1); NO_(__CURRENT__,$2)}})
define({{THATSALLFOLKS}},{{VIZEND}})

define({{VIZ}},$1)
define({{VIZSTART}},$1 { $2 )
define({{VIZEND}},})

divert(0)VIZSTART(digraph,{{
node [ fontname = "Bitstream Vera Sans", fontsize = 10 ]
edge [ fontname = "Bitstream Vera Sans", fontsize = 10 ]
}})dnl
