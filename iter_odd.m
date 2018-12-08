function out = iter_odd(A)
chi=sum(A(:))-A(5);
cond1=(2<=chi)&&(chi<=6);
mask=[A(1) A(4) A(7) A(8) A(9) A(6) A(3) A(2)];
sigma=[mask(2:8) mask(1)];
temp=sum((1-mask).*sigma);
cond2=(temp==1);
log1=A(4)*A(8)*A(6);
log2=A(2)*A(8)*A(6);
cond3=(log1==0)&&(log2==0);
if cond1&&cond2&&cond3&&A(5)==1
    out=0;
else
    out=A(5);
end