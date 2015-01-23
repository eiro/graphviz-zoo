divert(-1)dnl vim: ft=m4
changequote({{,}})
define({{POINT}},{{$1 [shape=cds, label="$2", $3]}})
define({{ASK}},{{$1 [shape=box, style=rounded, color=blue, label="$2", $3]}})
define({{PROC}},{{$1 [shape=box, label="$2", $3]}})
define(ABOUT,{{{define(__CUR{{}}RENT__,$1)}}})
define({{WHEN}}, $1 -> $3 [label="$2"] )
define({{YES}}, $1 -> $2 [label="oui"] )
define({{NO}}, $1 -> $2 [label="non"] )
define({{YN}},{{YES($1,$2); NO($1,$3)}})
define({{VIZ}},$1)
define({{VIZSTART}},$1 { $2 )
define({{VIZEND}},}) 
divert(0)dnl
VIZSTART(digraph,{{
node [ fontname = "Bitstream Vera Sans", 
                 fontsize = 10 ]
edge [ fontname = "Bitstream Vera Sans", 
                 fontsize = 10 ]
}})dnl
