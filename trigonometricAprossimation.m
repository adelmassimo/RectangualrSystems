function F = trigonometricAprossimation(x, nodes, f, m, n)
    a(1:n) = 0;
    b(1:n) = 0;
    for i = 1:n
        for j = 1:m
            a(i) = a(i) + 2*f(j)*cos(i*nodes(j))/m;
            b(i) = b(i) + 2*f(j)*sin(i*nodes(j))/m;
        end
    end
    F = 0;
    for i = 1:m
        F = F + f(i)/m;
    end
    for k = 1:n
        F = F + a(k)*cos(k*x) + b(k)*sin(k*x);
    end
end