% count unique occurrences in x

% x :: [numeric]

% count_x :: [numeric]
% unique_x :: [numeric]
function [count_x, unique_x] = count (x)
  [unique_x, to_unique, from_unique] = unique(x);

  % order :: i32
  order = length(unique_x);

  % count_x :: [i32; order]
  count_x = zeros(order,1);

  parfor i = 1:order
    count_x(i) = sum(from_unique == i);
  endparfor
endfunction
