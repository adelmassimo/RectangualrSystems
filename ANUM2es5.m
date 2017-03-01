function r = ANUM2es5(x)
    
    u = x;
    
    u(1) = norm(u,2) + u(1);
    
    H = ANUM2es4(u);
    r = x'*H;
end