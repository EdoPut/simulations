% compute the n-th order stirling numbers
% of second species for n>= 2
%
function stir = stirling_iterative (n)
  % x :: [i32; n+1]
  x = zeros(1,n+1);

  % initialise stirling numbers of order 2
  x(2:3) = 1;

  if n == 2
    stir = x(2:3);
    return
  endif

  % x :: [i32; n+1]
  a = 0: n;

  for i = 2 : n-1
    % S_{i-1} + i S_{i}
    x = shift(x,1) + x .* a;
  endfor

  stir = x(2:end);
endfunction

