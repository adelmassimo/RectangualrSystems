function mostraillustra2
    clc; close all;
    display( sprintf('I valori richiesti serviranno per creare una matrice m x n con valori casuali\ne un vettore m x 1 sempre casuale') );
    m = input('inserisci m:   ');
    n = input('inserisci n:   ');
    A = rand(m,n);
    
    
    u = triu(rand(m,m),1); d = diag(rand(1,m),0);
    R = u+d;
    b = rand(1,m);
    x = ANUM2es2(R, b);
    clc
    display('2] soluzione di un sistema Rx = b con R triangolare e non singolare');
    R
    b
    x
    waitforbuttonpress
    hold off
	
	[x, min_value]= ANUM2es3(A, b');
    clc
    display('3] soluzione di un sistema Ax = b con A m x n e non singolare');
    A
    b = b'
    x
    min_value
    waitforbuttonpress
    hold off
    
    
	H = ANUM2es4( b );
    clc
    display('4] Calcolo la matrice di Householder di b');
    b
    H
    waitforbuttonpress
    hold off
    
	y = ANUM2es5( b );
    clc
    display('5] calcolo il trasformato di b');
    b
    y
    waitforbuttonpress
    hold off
    
	[Q, R]= ANUM2es6( A );
    clc
    display('6] creo le matrici Q R di A');
    A
    Q
    R
    [Qmat, Rmat] = qr(A)
    errQ = norm(abs(Q-Qmat),2)
    errR = norm(abs(R-Rmat),2)
    waitforbuttonpress
    hold off
    
    [x, min_value]= ANUM2es7( A, b );
    clc
    display('7] risolvo Ax=b usando la tecnica QR');
    A
    b
    x
    min_value
    waitforbuttonpress
    hold off
    
    ANUM2es8(m, n);
    clc
    title('8] polinomio di migliore approssimazione m='+string(m)+' n='+string(n));
    waitforbuttonpress
    hold off

    display('valori inizializzati a caso per appr. trigonometrica');
    n = round(rand(1)*5)+1
    m = round(rand(1)*5)+n*2+1
    waitforbuttonpress
    ANUM2es9(m, n);
    clc
    title('9.1] polinomio TRIG. di migliore approssimazione m='+string(m)+' n='+string(n));
    waitforbuttonpress
    hold off    
    
    
    ANUM2es9s(m, n);
    clc
    title('9.2] polinomio TRIG. di migliore approssimazione m='+string(m)+' n='+string(n));
    waitforbuttonpress
    hold off
	
    display('valori inizializzati a caso per appr. trigonometrica');
    n = round(rand(1)*5)+1
    m = round(rand(1)*5)+n*2+1
    waitforbuttonpress
    ANUM2es10(m, n);
    title('10.1] polinomio TRIG. di migliore approssimazione (DISPARI) m='+string(m)+' n='+string(n));
    clc
    waitforbuttonpress
    hold off
	
    
    ANUM2es10s(m, n);
    title('10.2] polinomio TRIG. di migliore approssimazione (DISPARI) m='+string(m)+' n='+string(n));
    clc
    waitforbuttonpress
    hold off
       
    display('valori inizializzati a caso per appr. trigonometrica');
    n = round(rand(1)*5)+1
    m = round(rand(1)*3)*2+n*2
    waitforbuttonpress
    ANUM2es11(m, n);
    title('11.1] polinomio TRIG. di migliore approssimazione (PARI) m='+string(m)+' n='+string(n));
    clc
    waitforbuttonpress
    hold off
	
    
    ANUM2es11s(m, n);
    title('11.2] polinomio TRIG. di migliore approssimazione (PARI) m='+string(m)+' n='+string(n));
    clc
    waitforbuttonpress
    hold off

    
end