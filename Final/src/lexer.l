%option noyywrap
%{
    #define YY_NO_UNPUT
    #define YY_NO_INPUT
    #include "parser.h"
    #include <ostream>
    #include <fstream>
    using namespace std;
    extern FILE *yyin; 
    extern FILE *yyout;
    extern bool dump_tokens;
    int chars = 0;
    #include <iostream>
%}
DECIMAL_FLOAT ((([0-9]*[.][0-9]*([eE][+-]?[0-9]+)?)|([0-9]+[eE][+-]?[0-9]+))[fLlL]?)
HEXADECIMAL_FLOAT (0[xX](([0-9A-Fa-f]*[.][0-9A-Fa-f]*([pP][+-]?[0-9]+)?)|([0-9A-Fa-f]+[pP][+-]?[0-9]+))[fLlL]?)
DECIMIAL ([1-9][0-9]*|0)
OCTAL (0[0-7]+)
HEXADECIMAL (0[xX][0-9A-Fa-f]+)
ID [[:alpha:]_][[:alpha:][:digit:]_]*
EOL (\r\n|\n|\r)
WHITE [\t ]
BLOCKCOMMENTBEGIN \/\*
BLOCKCOMMENTELEMENT .
BLOCKCOMMENTEND \*\/
%x BLOCKCOMMENT
LINECOMMENT \/\/[^\n]*
%%
"int" {
    chars += strlen("int");
    return INT;
}
"float" {
    chars += strlen("float");
    return FLOAT;
}
"void" {
    chars += strlen("void");
    return VOID;
}
"const" {
    chars += strlen("const");
    return CONST;
}
"if" {
    chars += strlen("if");
    return IF;
};
"else" {
    chars += strlen("else");
    return ELSE;
};
"return" {
    chars += strlen("return");
    return RETURN;
}
"while" {
    chars += strlen("while");
    return WHILE;
}
"break" {
    chars += strlen("break");
    return BREAK;
}
"continue" {
    chars += strlen("continue");
    return CONTINUE;
}
"==" {
    chars += strlen("==");
    return EQUAL;
}
"!=" {
    chars += strlen("!=");
    return NOTEQUAL;
}
"=" {
    chars += strlen("=");
    return ASSIGN;
}
"<" {
    chars += strlen("<");
    return LESS;
}
"<=" {
    chars += strlen("<=");
    return LESSEQUAL;
}
">" {
    chars += strlen(">");
    return GREATER;
}
">=" {
    chars += strlen(">=");
    return GREATEREQUAL;
}
"+" {
    chars += strlen("+");
    return ADD;
}
"-" {
    chars += strlen("-");
    return SUB;
}
"*" {
    chars += strlen("*");
    return MUL;
}
"/" {
    chars += strlen("/");
    return DIV;
}
"%" {
    chars += strlen("%");
    return MOD;
}
"&&" {
    chars += strlen("&&");
    return AND;
}
"||" {
    chars += strlen("||");
    return OR;
}
"!" {
    chars += strlen("!");
    return NOT;
}
";" {
    chars += strlen(";");
    return SEMICOLON;
}
"(" {
    chars += strlen("(");
    return LPAREN;
}
")" {
    chars += strlen(")");
    return RPAREN;
}
"{" {
    chars += strlen("{");
    return LBRACE;
}
"}" {
    chars += strlen("}");
    return RBRACE;
}
"[" {
    chars += strlen("[");
    return LBRACKET;
}
"]" {
    chars += strlen("]");
    return RBRACKET;
}
"," {
    chars += strlen(",");
    return COMMA;
}
"putint" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec;
    vec.push_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, vec);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"getint" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec;
    Type* funcType = new FunctionType(TypeSystem::intType, vec);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"putfloat" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::voidType, {TypeSystem::floatType});
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"getfloat" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::floatType, {});
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"putch" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec;
    vec.push_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, vec);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"getch" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec;
    Type* funcType = new FunctionType(TypeSystem::intType, vec);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"putarray" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec;
    vec.push_back(TypeSystem::intType);
    vec.push_back(new PointerType(new ArrayType({})));
    Type* funcType = new FunctionType(TypeSystem::voidType, vec);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"getarray" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::intType, {new PointerType(new ArrayType({}))});
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"putfarray" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec;
    vec.push_back(TypeSystem::intType);
    vec.push_back(new PointerType(new ArrayType({}, TypeSystem::floatType)));
    Type* funcType = new FunctionType(TypeSystem::voidType, vec);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"getfarray" {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::intType, {new PointerType(new ArrayType({}, TypeSystem::floatType))});
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, globals->getLevel(), true);
    globals->install(yytext, se);
    return ID;
}
"starttime" {
    char *lexeme;
    lexeme = new char[7 + strlen(yytext)];
    char* sysy = (char *)"_sysy_";
    strcpy(lexeme, sysy);
    strcpy(lexeme + 6, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::voidType, {TypeSystem::intType});
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, "_sysy_starttime", globals->getLevel(), true);
    globals->install("_sysy_starttime", se);
    return ID;
}
"stoptime" {
    char *lexeme;
    lexeme = new char[7 + strlen(yytext)];
    char* sysy = (char *)"_sysy_";
    strcpy(lexeme, sysy);
    strcpy(lexeme + 6, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::voidType, {TypeSystem::intType});
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, "_sysy_stoptime", globals->getLevel(), true);
    globals->install("_sysy_stoptime", se);
    return ID;
}
{DECIMIAL} {
    chars += strlen(yytext);
    yylval.inttype = double(atoi(yytext));
    return INTEGER;
}
{OCTAL} {
    int temp;
    sscanf(yytext, "%o", &temp);
    yylval.inttype = temp;
    return INTEGER;
}
{HEXADECIMAL} {
    int temp;
    sscanf(yytext, "%x", &temp);
    yylval.inttype = temp;
    return INTEGER;
}
{DECIMAL_FLOAT} {
    double temp;
    sscanf(yytext, "%lf", &temp);
    yylval.floattype = temp;
    return FLOATNUM;
}
{HEXADECIMAL_FLOAT} {
    float temp;
    sscanf(yytext, "%f", &temp);
    yylval.floattype = temp;
    return FLOATNUM;
}
{ID} {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    lexeme[strlen(yytext)] = 0;
    yylval.strtype = lexeme;
    return ID;
}
<*>{EOL} {
    chars += strlen(yytext);
    yylineno++;
    chars = 0;
}
{WHITE}
{LINECOMMENT} {}
{BLOCKCOMMENTBEGIN} {BEGIN BLOCKCOMMENT;}
<BLOCKCOMMENT>{BLOCKCOMMENTELEMENT} {}
<BLOCKCOMMENT>{BLOCKCOMMENTEND} {BEGIN INITIAL;}

%%
