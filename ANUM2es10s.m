function ANUM2es10s(m, n)
    if m < 2*n+1 || mod(m,2) == 0
        error('m oppure n non validi');
    end
    n = m;
    x = linspace(0,2*pi,m);
    f = sin(x).^2;
    
    fplot(@(s) trigonometricAprossimation(s, x, f, m, n), [min(x), max(x)]);
    hold on
    fplot(@(s) sin(s)^2, [min(x), max(x)]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = sin^2(x)');
    scatter(x, f);
    hold off
end
