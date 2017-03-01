function [Q, R] = ANUM2es6(A)
        [m,n] = size(A);
        
        P = n;
        
        if m <= n
            P = m-1;
        end
        
        Q = eye(m);
        
        for i = 1:P

           u = A(i:m,i);
           u(1) = norm(u,2) + u(1);
           
           H = sovrappose(eye(m), ANUM2es4(u));
                  
           A = H*A;
           Q = Q*H;
        end
       R = A;
end

function R = sovrappose(A, a)
    [M,N] = size(A);
    [m,n] = size(a);

    d = M - m;
    l = N - n;
    for i = 1:m
       for j = 1:n
          A(i+d, j+l) = a(i, j) ;
       end
    end
    R = A;
end