function [x, minValue] = ANUM2es7(A, b)
    [m, n] = size(A);
    if rank(A) ~= min( size(A) )
        error('matrix had a non max rank');
    end
    
    [Q, U]= ANUM2es6(A);
    
    U(n+1:m,:) = [];
    
    c = Q'*b;
    c1 = c(1:n);
    c2 = c(n+1:m);
    
    x = inv(U)*c1;
    minValue = norm(c2, 2)^2;
end