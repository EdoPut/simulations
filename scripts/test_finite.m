p = [1,-1,-1];
m = 0;
c = [1,1]';

power_sol = solution_space(p,m);
coeff = solve_finite(p, c, m);

a = zeros(10,2);

parfor i = 1:10
  a(i,:) = coeff .* power_sol(i);
endparfor

plot(sum(a,2))
