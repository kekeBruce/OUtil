function B = searchV(A, v);
  %% A : 2D array
  %%  V = [idx1, x1; idx2, x2; ..];
  %% idx : the column to search
  %% x : the value of column idx

  cons = floor(length(v)/2);
  con = reshape(v, cons, 2);

  if (size(A)(2) < max(con(:,1)))
    B = A;
  elseif (rem(length(v), 2) == 1)
    B = A;
  else
    temp1 = A;
    for i = 1:cons
      temp2  = temp1([temp1(:, con(i, 1)) == con(i, 2)], :);
    endfor
    B = temp2;
  endif
endfunction
