function B = search(A, ix, x)
   B = A([A(:, ix) == x], :);
endfunction
