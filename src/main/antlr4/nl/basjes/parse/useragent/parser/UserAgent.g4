/*
 * Yet Another UserAgent Analyzer
 * Copyright (C) 2013-2017 Niels Basjes
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

grammar UserAgent;

// =========================================================================================
// Lexer

SPACE :       (' '|'\t'|'+') -> skip;

fragment EMailLetter
    : [a-zA-Z0-9-+_]
    ;

fragment EMailWord
    : EMailLetter +
    ;

fragment EMailAT
    : '@'
    ;

fragment EMailDOT
    : '.'
    ;

fragment EMailTLD
    :  [a-zA-Z]+  // No tld has numbers in it
    ;

EMAIL       :       EMailWord (EMailDOT EMailWord )* EMailAT EMailWord ( EMailDOT EMailWord )* EMailDOT EMailTLD;

SLASH       :        '/'                 ;

VERSION
    : ([0-9] '.'?)+
    ;

WORD
    : [a-zA-Z]+
    ;

// =========================================================================================
// Parser

userAgent
    : ( product )+
    ;

product
    : productName SLASH+ productVersion
    ;

productName
    : WORD
    ;

productVersion
    : VERSION
    ;
