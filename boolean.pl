% ============================================
% Task 1: Boolean Expression
% Expression: (A AND B) OR (NOT A AND NOT B)
% ============================================

% Truth Table for AND (3 arguments)
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% Truth Table for OR (3 arguments)
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Truth Table for NOT / Negation (2 arguments)
neg(true, false).
neg(false, true).

% Main Rule for the Boolean Expression
% Output = (A AND B) OR (NOT A AND NOT B)
expression(A, B, Output) :-
    and(A, B, Term1),        % Term1 = (A AND B)
    neg(A, NotA),            % NotA  = NOT A
    neg(B, NotB),            % NotB  = NOT B
    and(NotA, NotB, Term2),   % Term2 = (NOT A AND NOT B)
    or(Term1, Term2, Output). % Output = Term1 OR Term2