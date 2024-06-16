/*第一部分：声明定义*/
%{
 int chars = 0;
 int words = 0;
 int lines = 0;
%}

/*第二部分，pattern 以及其对应的action*/

%%
[a-zA-Z]+ {
    words++;
    chars += strlen(yytext);
}

\n {
    chars++;
    lines++;
}

. {
    chars++;
}
%%
/*第三部分：原封不动拷贝到生成的词法分析器中去*/
int main(int argc, char **argv) {
    yylex();
    printf("%8d%8d%8d", chars, words, lines);
}