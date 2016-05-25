% Assignment 1 - Prolog Programming
% Mohammad Ghasembeigi (z3464208)
% Date: 04/04/2016

% Note: For all testing efforts, please refer to: https://gist.github.com/mohammadg/7d44ed81d779c4081e7965ad7e72ac42

% Q1
% sumsq_even(Numbers, Sum) -  sums the squares of only the even numbers in a list of integers

% base case, empty list has no even numbers
sumsq_even([], 0).

% case when head of list is an odd number
sumsq_even([CurNum | Tail], Sum) :-
  sumsq_even(Tail, TailSum),
  CurNum mod 2 =:= 1,
  Sum is TailSum.

% case when head of list is an even number
sumsq_even([CurNum | Tail], Sum) :-
  sumsq_even(Tail, TailSum),
  CurNum mod 2 =:= 0,
  Sum is TailSum + (CurNum * CurNum).

% Q2
% all_like(What, List) - succeeds if List is empty or contains only persons that like What, according to the predicate likes(Who, What).

% base case, returns true for an empty list (needed so recursive test below works)
all_like(_, []).

% Otherwise, test tail (and thus remaining persons)
all_like(What, [CurPerson| Tail]) :-
  all_like(What, Tail),
  likes(CurPerson, What).

% Q3
% sqrt_table(N, M, Result) - binds Result to the list of pairs consisting of a number and its square root, from N down to M, where N and M are non-negative integers, and N >= M.

% base case, when N and M are the same we produce the pair inside a list
sqrt_table(N, M, Result) :-
  N =:= M,
  NSquare is sqrt(N),
  Result = [[N, NSquare]].
  
% Otherwise, if N > M, we produce the pair inside a list but append the lower table result to the end of the list using a list constructor
sqrt_table(N, M, Result) :-
  N > M,
  NextN is N - 1,
  sqrt_table(NextN, M, LowerTable),
  NSquare is sqrt(N),
  Result = [[N, NSquare] | LowerTable].

% Q4
% chop_down(List, NewList) - binds NewList to List with all sequences of successive decreasing whole numbers replaced by the last number in the sequence. An example of successive decreasing whole numbers is: 22, 21, 20, 19. (Note that the numbers have to be successive in the sense of decreasing by exactly 1 at each step.)

% base case, empty list produces empty new list
chop_down([], []).
  
% case for a single number in a list, simply return as is
chop_down([SingleNum], [SingleNum]).
  
% Look at next two numbers, if NextNum is one less than CurNum
% don't add CurNum to NewList
chop_down([CurNum, NextNum | Tail], NewList) :-
  chop_down( [NextNum | Tail ], TailList),
  isDecreasing(CurNum, NextNum),
  NewList = TailList.
  
% Conversely, if NextNum is different (Not one less than CurNum),
% it should be added to NewList
chop_down([CurNum, NextNum | Tail], NewList) :-
  chop_down( [NextNum | Tail ], TailList),
  not(isDecreasing(CurNum, NextNum)),
  NewList = [ CurNum | TailList].
  
% isDecreasing - Helper function: true if NextNum is one less than CurNum (ie the numbers are decreasing)
isDecreasing(CurNum, NextNum) :-
  NextNum is CurNum - 1.
  
% Q5
% tree_eval(Value, Tree, Eval) - binds Eval to the result of evaluating the expression-tree Tree, with the variable z set equal to the specified Value.

% base case, empty tree evaluates to zero
tree_eval(_, empty, 0).
tree_eval(_, tree(empty), 0).

% Leaf case: z as value
tree_eval(Value, tree(empty, Num, empty), Eval) :-
  Num = z,
  Eval is Value.

% Leaf case: number (non z) as value
tree_eval(_, tree(empty, Num, empty), Eval) :-
  Num \= z,
  Eval is Num.

% Tree Case: for + operator
tree_eval(Value, tree(L, +, R), Eval) :-
  tree_eval(Value, L, LEval),
  tree_eval(Value, R, REval),
  Eval is LEval + REval.
  
% Tree Case: for - operator
tree_eval(Value, tree(L, -, R), Eval) :-
  tree_eval(Value, L, LEval),
  tree_eval(Value, R, REval),
  Eval is LEval - REval.
  
% Tree Case: for * operator
tree_eval(Value, tree(L, *, R), Eval) :-
  tree_eval(Value, L, LEval),
  tree_eval(Value, R, REval),
  Eval is LEval * REval.
  
% Tree Case: for / operator
tree_eval(Value, tree(L, /, R), Eval) :-
  tree_eval(Value, L, LEval),
  tree_eval(Value, R, REval),
  Eval is LEval / REval.
