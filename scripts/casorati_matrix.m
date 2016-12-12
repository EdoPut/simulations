% compute the casorati matrix
% given the polynomial p from
% time m and forward

function casorati_m = casorati_matrix(p, m = 0)

  order = length(p) - 1;

  % compute the solutions from the poly p
  power_solutions = solution_space(p, m);

  % fill the casorati matrix with the solutions
  % evaluated from time m to m + k where k is
  % the order of the poly p
  casorati_m = zeros(order);

  parfor i = 1 : order
    % substitute the values of
    % the power solutions at timestep i
    % in the casorati matrix line i
    casorati_m(i,:) = power_solutions(i);
  endparfor
endfunction
