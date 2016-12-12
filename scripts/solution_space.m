% p :: [numeric complex; k+1]
% m :: i32

% solution_base :: i32 -> [numeric complex]

function solution_base_at_n = solution_space(p, m = 0)

  % get all the unique roots of the polynomial
  unique = base(p);

  % given n return a function that compute z^(n-m)
  % from z
  power_sol = @(n) @(z) z**(n-m);

  % the solution base at step n
  % is a function that given n
  % compute the power_solution for
  % every distinct roots of p
  solution_base_at_n = @(n) arrayfun( power_sol(n), unique);

endfunction
