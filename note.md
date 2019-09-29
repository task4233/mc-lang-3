# mc-lang-3
## 3-1
 - add '<'

## 3-2
 - add token

## 3-3
 - add parsing of if

## 3-4
 - add codegen of else block
 - note **codes of assignment  in lexer.h has not been added**

## 3-5
 - add fib function

## add-div
 - add '/' to codegen.h & mc.cpp

## implement ult and ugt
 - add Builder.CreateICmpUGT(L, R, "ugttmp");
 - add Builder.CreateICmpULT(L, R, "ulttmp");
 - update BinopPrecedence
 
## implement ule and uge
 - update the difinition of BinopPrecedence
   - std::map< char, int > -> std::map< int, int 
### checklist
 - [x] add ult and ugt
 - [x] update BinOpPrecedence std::map<char,int> -> std::map<int, int > in parser.h
 - [x] add enum in mc.cpp
 - [x] add checking whether Curtok is '=' before calling ParsePrimary() in ParseBinOpRHS() in parser.h
   - [x] if CurTok is '=', call getNextToken() and ParsePrimary()
 - [x] add IR order in codegen.h
 - [x] check it's implemented correctly

## implement a ternary operator
 - add TernaryOperatorAST class
   - std::unique_ptr< ExprAST > cond, expr1, expr2
   - Value* codegen()
 - add ParseTernaryOperator()
   - parse an expression for a ternary operator like `x > 2 ? x + 10 : x - 10;`

### checklist
 - [x] add TerneryOperatorAST class
   - [x] define class
   - [x] add constructor
   - [x] implement codegen()
 - [x] check its's impelemented correctly
   - [x] by gcd() in test/ternary/ternary.mc