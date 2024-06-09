datatype btree = Empty | Node of int * btree * btree;

fun mirror tree = Empty;


datatype ae =
    CONST of int
  | VAR of string
  | POWER of string * int
  | TIMES of ae list
  | SUM of ae list;

fun diff (expr, x) = expr;