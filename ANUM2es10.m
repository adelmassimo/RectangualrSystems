function ANUM2es10(m, n)
    if m < 2*n+1 || mod(m,2) == 0
        error('m oppure n non validi');
    end
    n = m;
    x = linspace(0,2*pi,m);
    f = x.^2;
    
    fplot(@(s) trigonometricAprossimation(s, x, f, m, n), [min(x), max(x)]);
    hold on
    fplot(@(s) s^2, [min(x), max(x)]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = x^2');
    scatter(x, f);
    hold off
end
