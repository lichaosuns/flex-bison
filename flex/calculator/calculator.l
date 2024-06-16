
%%
[0-9]+ {printf("number is %s\n", yytext);}
"+" {printf("plus\n");}
"-" {printf("minus\n");}
"*" {printf("times\n");}
"/" {printf("divide\n");}
"|" {printf("abs\n");}
\n {printf("newline\n");}
[ \t] {}
. {printf("string is %s", yytext);}
%%