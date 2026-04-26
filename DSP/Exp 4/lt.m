syms n z
x1n = .4^n;
x2n = .5^n;
x1z=ztrans(x1n);
x2z = ztrans(x2n);
x3z=x1z*x2z;
con12 = iztrans(x3z);

% deconvulation of x1z

decon_x1n=iztrans(x1z);

% deconvulation of x2z

decon_x2n=iztrans(x2z);

disp(con12)

disp(decon_x1n)

disp(decon_x2n)