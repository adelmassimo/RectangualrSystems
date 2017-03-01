function ANUM2es9(m, n)
    if m < 2*n+1
        error('m non compatibile con n');
    end
    n = 2*n+1;
    x = linspace(0, 2*pi, m);
    f = cos(2.*x);
    
    fplot(@(s) trigonometricAprossimation(s, x, f, m, n), [min(x), max(x)]);
    hold on
    fplot(@(s) cos(2*s), [min(x), max(x)]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = cos(2*x)');    
    scatter(x, f);
    hold off
    
end
