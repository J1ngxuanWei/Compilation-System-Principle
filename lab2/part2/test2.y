%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
#define YYSTYPE char*
char idstr[20];
char numstr[20];
int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char*s);
%}
%token NUMBER
%token ID
%token ADD SUB MUL DIV LBK RBK
%left LBK
%left ADD SUB
%left MUL DIV
%right UMINUS
%right RBK
%%

lines : lines expr '\n'{printf("%s\n",$2);}
      | lines '\n'
      |
      ;

//使用 malloc 函数分配了 100 个字符大小的内存块，并将其地址赋值给 $$,就是我们输入的表达式的位数最多是100
//使用 strcpy 函数将 $1 中的字符串复制到 $$;然后使用 strcat 函数将 $3 中的字符串追加到 $$；最后再把+加到最后
expr : expr ADD expr {$$=(char*)malloc(100*sizeof(char)); strcpy($$,$1); strcat($$,$3);strcat($$,"+ "); }
     | expr SUB expr {$$=(char*)malloc(100*sizeof(char)); strcpy($$,$1);strcat($$,$3);strcat($$,"- "); }
     | expr MUL expr {$$=(char*)malloc(100*sizeof(char)); strcpy($$,$1);strcat($$,$3);strcat($$,"* "); }
     | expr DIV expr {$$=(char*)malloc(100*sizeof(char)); strcpy($$,$1);strcat($$,$3);strcat($$,"/ "); }
     | LBK expr RBK {$$=(char*)malloc(100*sizeof(char));strcpy($$,$2);}
     | NUMBER   {$$ = (char*)malloc(100*sizeof(char)); strcpy($$,$1);strcat($$," ");}
     | ID   {$$=(char*)malloc(100*sizeof(char));strcpy($$,$1);strcat($$," ");}


%%


int yylex()
{
      int t;
      while(1){
          t=getchar();     
          if(t==' '||t=='\t'){
            //nothing to do
          }
          else if(isdigit(t)){
                  int s=0;
                  while(isdigit(t)){
                  numstr[s]=t;
                  t=getchar();
                  s++;
                }
           numstr[s]='\0';//添加结束符
           yylval=numstr;//把得到的数字串传给yylval
           ungetc(t,stdin);
           return NUMBER;
         }
      else if((t>='a'&&t<='z')||(t>='A'&&t<='Z')||(t=='_')){//标识符是有数字、字母和下划线组成的，而第一个字符不可以为数字
              int s=0;
              while((t>='a'&&t<='z')||(t>='A'&&t<='Z')
                     ||(t=='_')||(t>='0'&& t<='9')){
                      idstr[s]=t;
                      s++;
                      t=getchar();
                  }
               idstr[s]='\0';
               yylval=idstr;
               ungetc(t,stdin);
               return ID;
             }
       else 
          {
            switch(t)
           {
              case '+':
                   return ADD;
              case '-':
                   return SUB;
              case '*':
                   return MUL;
              case '/':
                   return DIV;
              case'(':
                   return LBK;
              case')':
                   return RBK;
              default: 
                   return t;
            }
          }
      return t;
   }
}

int main(void)
{
   yyin = stdin;
  do{
      yyparse();
    }while(!feof(yyin));
  return 0;
}
void yyerror(const char* s)
{
   fprintf(stderr,"Parse error:%s\n",s);
   exit(1);
}
