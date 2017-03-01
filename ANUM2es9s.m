function ANUM2es9s(m, n)
    if m < 2*n+1
        error('m non compatibile con n');
    end
    n = 2*n+1;
    x = linspace(0,2*pi,m);
    f = x.^2 + x - 10;
    
    fplot(@(s) trigonometricAprossimation(s, x, f, m, n), [min(x), max(x)]);
    hold on
    fplot(@(s) s^2+s-10, [min(x), max(x)]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = x^2 + x - 10', 'Location', 'north');
    scatter(x, f);
    hold off
    
end
