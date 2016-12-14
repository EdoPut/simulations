% count unique occurrences in x

% x :: [numeric]

% count_x :: [numeric]
% unique_x :: [numeric]
function [count_x, unique_x] = count (x)
  unique_x = unique(x);
  count_x = histc(x, unique_x);
endfunction
