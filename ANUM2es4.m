function H = ANUM2es4(x)
    if( min( size(x) ) ~= 1)
        error('parameter is not a vector')
    else
        Id = eye( max(size(x)) );
        alpha = 2/(x'*x);
        H = Id - alpha*x*x';
    end

end