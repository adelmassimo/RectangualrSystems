function ANUM2es11(m, n)
    if m < 2*n+1 || mod(m,2) == 1
        error('m non compatibile con n');
    end
    
    x = linspace(0,2*pi,m);
    f = tan(x);
    
    fplot(@(s) trigonometricAprossimation(s, x, f, m, n), [min(x), max(x)]);
    hold on
    fplot(@(s) tan(s), [min(x), max(x)]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = tan(x)');
    scatter(x, f);
    hold off
end
