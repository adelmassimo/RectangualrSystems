function [min_solution, min_value] = ANUM2es3(A, b)
    
    [m, n] = size(A)
    
    if(length(b) == m && rank(A)==min(n, m))
        min_solution = inv((A')*A)*(A')*(b)
        min_value = norm(A*min_solution-b,2)^2
    else
        if( length(b) ~= m )
            error('wrong dimenisons')
        else
            error('not maximum rank')
        end
end