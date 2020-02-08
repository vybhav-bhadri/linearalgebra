str = input("Please enter 3x3 matrix with spaces to seperate", "string")
v = evstr(strsplit(str, " "))


b11=v(1)
b12=v(2)
b13=v(3)
b21=v(4)
b22=v(5)
b23=v(6)
b31=v(7)
b32=v(8)
b33=v(9)



a=[b11,b12,b13;b21,b22,b23;b31,b32,b33]
u=a;
disp(a,'the given matrix is a=')
m=det(u(1,1));
n=det(u(2,1));
as=n/m;
u(2,:)=u(2,:)-u(1,:)/(m/n);
n=det(u(3,1));
b=n/m;
u(3,:)=u(3,:)-u(1,:)/(m/n);
m=det(u(2,2));
n=det(u(3,2));
c=n/m;
u(3,:)=u(3,:)-u(2,:)/(m/n);
disp(u,'the upper triangular matrix is u=')
l=[1,0,0;as,1,0;b,c,1];
disp(l,'the lower triangular matrix is l=')
