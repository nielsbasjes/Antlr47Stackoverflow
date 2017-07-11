grammar Experiment;

// =========================================================================================
// Lexer

SPACE
    : (' '|'\t'|'+') -> skip
    ;

fragment EMailWord
    : [a-zA-Z0-9-+_]+
    ;

fragment EMailTLD
    :  [a-zA-Z]+  // No tld has numbers in it
    ;

EMAIL
    : EMailWord ('.' EMailWord )* '@' EMailWord ('.' EMailWord )* '.' EMailTLD
    ;

VERSION
    : [0-9]+ ('.' [0-9]+)*
    ;

WORD
    : [a-zA-Z]+
    ;

// =========================================================================================
// Parser

start
    : EMAIL
    ;

