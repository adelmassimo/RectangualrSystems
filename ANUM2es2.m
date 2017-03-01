function x = ANUM2es2(R, b)
    if(det(R) == 0)
        disp('matrice singolare')
    else
        x = b*inv(R)
    end
end