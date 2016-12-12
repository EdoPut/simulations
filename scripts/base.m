% Given a k-th order difference equation
% from it's costant coefficents p, return
% a base that generates the solution space.
% If the solutions are not distinct raise a
% warning

% p :: [numeric complex; k+1]
%
% unique :: [numeric complex]
% exit_code:: i32
% sol :: [numeric complex; k]

function [unique, exit_code, sol] = base(p)

  sol = roots(p);
  unique = unique(sol);
  exit_code = 0;

  try
    sol == unique;
  % if the arrays are not uniform
  catch mx_el_eq
    exit_code = 1;
    error("Solutions are not all distinct")
  end_try_catch

endfunction
