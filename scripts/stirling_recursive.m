% compute the n-th order stirling numbers
% of second species for n>= 2
% 
% octave has a hard limit on recursion; 256 calls are the most
% you can make without raising an error
% set max_recursion_depth to your value
function x = stirling_recursive (n)
  if (n == 2)
    x =[1,1];
    return;
  endif
  % compute the previous order solution
  y = stirling_recursive(n-1);
  a = 2 : n-1;
  % S_{i-1} + i S_{i}
  temp =  y(1:end-1) + (y(2:end) .* a);
  x = [1, temp, 1];
endfunction

