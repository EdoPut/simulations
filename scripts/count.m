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

  % iterate over the k unique values position
  parfor i = 1:order

    % for every position in from_unique
    % check if matches the i-th position
    % in unique_x
    for j = from_unique
      % check, add count
      if i == j
        count_x(i)++;
      endif
    endfor

    endparfor
endfunction
