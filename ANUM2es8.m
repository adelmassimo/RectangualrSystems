function ANUM2es8(m, n)
    if m < n
        error('m non ? maggiore o ugale di n');
    end
    x = linspace(0, 1, m);
    f = sin(2*pi*x);
    
    V = fliplr( vander(x) );
    
    for i = 1:n
        A(:,i) = V(:,i);
    end
    
    a = inv(A'*A)*A'*f';
    
    
    fplot(@(x) polyval(flipud(a),x), [0, 1]);
    hold on
    scatter(x, f);
    hold off
    legend('P_{'+string(n)+'}(x)', 'f(x) = sin(2*pi*x)');
    
end
