% Testing for: Assignment 1 - Prolog Programming
% Mohammad Ghasembeigi (z3464208)
% Date: 04/04/2016
% Based on: https://www.cse.unsw.edu.au/~billw/testing.html

% How to test:
% $ swipl -s ass1.pl < ass1_tests.pl
% Then manually compare expected answer with the result on the line underneath (program answer)

% Important Note:
% Ensure provided test data for Q2 is present in ass1.pl.

% Q1 Tests
write('*** Question 1 Tests ***'), nl, nl,

write('T1: sumsq_even([1,3,5,2,-4,6,8,-7], Sum).'), nl,
write('Sum = 120. (Expected Answer)'), nl,
sumsq_even([1,3,5,2,-4,6,8,-7], Sum), !.

write('T2: sumsq_even([], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_even([], Sum), !.

write('T3: sumsq_even([0], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_even([0], Sum), !.

write('T4: sumsq_even([1], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_even([1], Sum), !.

write('T5: sumsq_even([-1], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_even([-1], Sum), !.

write('T6: sumsq_even([2], Sum).'), nl,
write('Sum = 4. (Expected Answer)'), nl,
sumsq_even([2], Sum), !.

write('T7: sumsq_even([-2], Sum).'), nl,
write('Sum = 4. (Expected Answer)'), nl,
sumsq_even([-2], Sum), !.

write('T8: sumsq_even([0,0,0], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_even([0,0,0], Sum), !.

write('T9: sumsq_even([-5,-4,-3,-2,-1,0,1,2,3,4,5], Sum).'), nl,
write('Sum = 40. (Expected Answer)'), nl,
sumsq_even([-5,-4,-3,-2,-1,0,1,2,3,4,5], Sum), !.

write('T10: sumsq_even([-1,-6,-16], Sum).'), nl,
write('Sum = 292. (Expected Answer)'), nl,
sumsq_even([-1,-6,-16], Sum), !.

% Q2 Tests
% Ensure provided test data is present in ass1.pl

write('*** Question 2 Tests ***'), nl, nl,

write('T1: all_like(apple,[mary, tim]).'), nl,
write('true. (Expected Answer)'), nl,
all_like(apple,[mary, tim]), !.

write('T2: all_like(grapes,[mary, tim]).'), nl,
write('false. (Expected Answer)'), nl,
all_like(grapes,[mary, tim]), !.

write('T3: all_like(pear,[]).'), nl,
write('true. (Expected Answer)'), nl,
all_like(pear,[]), !.

write('T4: all_like(mango,[jane]).'), nl,
write('true. (Expected Answer)'), nl,
all_like(mango,[jane]), !.

write('T5: all_like(mango,[jane, tim]).'), nl,
write('true. (Expected Answer)'), nl,
all_like(mango,[jane, tim]), !.

write('T6: all_like(mango,[jane, mary]).'), nl,
write('false. (Expected Answer)'), nl,
all_like(mango,[jane, mary]), !.

write('T7: all_like(devil_fruit,[tim]).'), nl,
write('false. (Expected Answer)'), nl,
all_like(devil_fruit,[tim]), !.

write('T8: all_like(devil_fruit,[]).'), nl,
write('true. (Expected Answer)'), nl,
all_like(devil_fruit,[]), !.

write('T9: all_like(apple,[mary, tim, jane]).'), nl,
write('true. (Expected Answer)'), nl,
all_like(apple,[mary, tim, jane]), !.

write('T10: all_like(grapes,[mary, tim, jane]).'), nl,
write('false. (Expected Answer)'), nl,
all_like(grapes,[mary, tim, jane]), !.

% Q3 Tests

write('*** Question 3 Tests ***'), nl, nl,

write('T1: sqrt_table(7, 4, Result).'), nl,
write('Result = [[7, 2.64575], [6, 2.44949], [5, 2.23607], [4, 2.0]]. (Expected Answer)'), nl,
sqrt_table(7, 4, Result), !.

write('T2: sqrt_table(4, 4, Result).'), nl,
write('Result = [[4, 2.0]]. (Expected Answer)'), nl,
sqrt_table(4, 4, Result), !.

write('T3: sqrt_table(0, 0, Result).'), nl,
write('Result = [[0, 0.0]]. (Expected Answer)'), nl,
sqrt_table(0, 0, Result), !.

write('T4: sqrt_table(10, 5, Result).'), nl,
write('Result = [[10, 3.1622776601683795], [9, 3.0], [8, 2.8284271247461903], [7, 2.6457513110645907], [6, 2.449489742783178], [5, 2.23606797749979]]. (Expected Answer)'), nl,
sqrt_table(10, 5, Result), !.

write('T5: sqrt_table(3, 0, Result).'), nl,
write('Result = [[3, 1.7320508075688772], [2, 1.4142135623730951], [1, 1.0], [0, 0.0]]. (Expected Answer)'), nl,
sqrt_table(3, 0, Result), !.

write('T6: sqrt_table(8000, 7999, Result).'), nl,
write('Result = [[8000, 89.44271909999159], [7999, 89.4371287553441]]. (Expected Answer)'), nl,
sqrt_table(8000, 7999, Result), !.


% Q4 Tests

write('*** Question 4 Tests ***'), nl, nl,

write('T1: chop_down([1, 3, 7, 6, 5, 10, 9], Result).'), nl,
write('Result = [1, 3, 5, 9]. (Expected Answer)'), nl,
chop_down([1, 3, 7, 6, 5, 10, 9], Result), !.

write('T2: chop_down([6, 4, 10, 9], Result).'), nl,
write('Result = [6, 4, 9]. (Expected Answer)'), nl,
chop_down([6, 4, 10, 9], Result), !.

write('T3: chop_down([1, 2, 3, 4, 5, 6, 7, 8], Result).'), nl,
write('Result = [1, 2, 3, 4, 5, 6, 7, 8]. (Expected Answer)'), nl,
chop_down([1, 2, 3, 4, 5, 6, 7, 8], Result), !.

write('T4: chop_down([8, 7, 6, 5, 4, 3, 2, 1], Result).'), nl,
write('Result = [1]. (Expected Answer)'), nl,
chop_down([8, 7, 6, 5, 4, 3, 2, 1], Result), !.

write('T5: chop_down([42], Result).'), nl,
write('Result = [42]. (Expected Answer)'), nl,
chop_down([42], Result), !.

write('T6: chop_down([0], Result).'), nl,
write('Result = [0]. (Expected Answer)'), nl,
chop_down([0], Result), !.

write('T7: chop_down([-1, -2, -3, -4, -5, -9], Result).'), nl,
write('Result = [-5, -9]. (Expected Answer)'), nl,
chop_down([-1, -2, -3, -4, -5, -9], Result), !.

write('T8: chop_down([3, 2, 1, 0, -1, -5, -6, -7, 10, 12, 13], Result).'), nl,
write('Result = [-1, -7, 10, 12, 13]. (Expected Answer)'), nl,
chop_down([3, 2, 1, 0, -1, -5, -6, -7, 10, 12, 13], Result), !.

% Q5 Tests

write('*** Question 5 Tests ***'), nl, nl,

write('T1: tree_eval(2, tree(tree(empty,z,empty), '+',tree(tree(empty,1,empty), '/',tree(empty,z,empty))), Eval).'), nl,
write('Eval = 2.5. (Expected Answer)'), nl,
tree_eval(2, tree(tree(empty,z,empty), '+',tree(tree(empty,1,empty), '/',tree(empty,z,empty))), Eval), !.

write('T2: tree_eval(5, tree(tree(empty,z,empty), '+',tree(tree(empty,1,empty), '/',tree(empty,z,empty))), Eval).'), nl,
write('Eval = 5.2. (Expected Answer)'), nl,
tree_eval(5, tree(tree(empty,z,empty), '+',tree(tree(empty,1,empty), '/',tree(empty,z,empty))), Eval), !.

write('T3: tree_eval(-1, tree(tree(empty, z, empty), '*', tree(empty, 20, empty)), Eval).'), nl,
write('Eval = -20. (Expected Answer)'), nl,
tree_eval(-1, tree(tree(empty, z, empty), '*', tree(empty, 20, empty)), Eval), !.

write('T4: tree_eval(1, tree(tree(tree(empty, z, empty), '+', tree(empty, z, empty)), '+', tree(tree(empty, z, empty), '+', tree(empty, z, empty))), Eval).'), nl,
write('Eval = 4. (Expected Answer)'), nl,
tree_eval(1, tree(tree(tree(empty, z, empty), '+', tree(empty, z, empty)), '+', tree(tree(empty, z, empty), '+', tree(empty, z, empty))), Eval), !.

write('T5: tree_eval(2, tree(tree(tree(tree(empty, z, empty), '+', tree(empty, 5, empty)), '*', tree(tree(empty, 10, empty), '/', tree(empty, z, empty))), '+', tree(tree(tree(empty, 2, empty), '*', tree(empty, 4, empty)), '-', tree(tree(empty, 9, empty), '/', tree(empty, 3, empty)))), Eval).'), nl,
write('Eval = 40. (Expected Answer)'), nl,
tree_eval(2, tree(tree(tree(tree(empty, z, empty), '+', tree(empty, 5, empty)), '*', tree(tree(empty, 10, empty), '/', tree(empty, z, empty))), '+', tree(tree(tree(empty, 2, empty), '*', tree(empty, 4, empty)), '-', tree(tree(empty, 9, empty), '/', tree(empty, 3, empty)))), Eval), !.

write('T6: tree_eval(3, tree(tree(tree(tree(empty, z, empty), '*', tree(tree(empty, z, empty), '*', tree(empty, 2, empty))), '+', tree(tree(empty, 99, empty), '-', tree(empty, 2, empty))), '+', tree(tree(tree(tree(empty, 4, empty), '+', tree(empty, 5, empty)), '*', tree(tree(empty, z, empty), '/', tree(empty, 1, empty))), '-', tree(tree(tree(empty, 9, empty), '/', tree(empty, 3, empty)), '+', tree(empty, z, empty)))), Eval).'), nl,
write('Eval = 136. (Expected Answer)'), nl,
tree_eval(3, tree(tree(tree(tree(empty, z, empty), '*', tree(tree(empty, z, empty), '*', tree(empty, 2, empty))), '+', tree(tree(empty, 99, empty), '-', tree(empty, 2, empty))), '+', tree(tree(tree(tree(empty, 4, empty), '+', tree(empty, 5, empty)), '*', tree(tree(empty, z, empty), '/', tree(empty, 1, empty))), '-', tree(tree(tree(empty, 9, empty), '/', tree(empty, 3, empty)), '+', tree(empty, z, empty)))), Eval), !.


write('*** END OF TESTS ***'), nl, nl.
