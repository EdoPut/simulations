% compute the solution to the
% finite difference problem given
% by the polynomial p with starting values c
% beginning at time m

function solution_coefficents = solve_finite(p, c, m = 0)
  casorati = casorati_matrix(p, m);
  solution_coefficents = casorati \ c;
endfunction
