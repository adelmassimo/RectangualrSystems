function ANUM2es11s(m, n)
    if m < 2*n+1 || mod(m,2) == 1
        error('m non compatibile con n');
    end
    
    x = linspace(0,2*pi,m);
    f = exp(x);
    
    fplot(@(s) trigonometricAprossimation(s, x, f, m, n), [min(x), max(x)]);
    hold on
    fplot(@(s) exp(s), [min(x), max(x)]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = e^x');
    scatter(x, f);
    hold off
end
