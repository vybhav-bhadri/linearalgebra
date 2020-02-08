str = input("Please enter a 3x4 augmented matrix with spaces to seperate", "string")
v = evstr(strsplit(str, " "))

a11=v(1)
a12=v(2)
a13=v(3)
a21=v(5)
a22=v(6)
a23=v(7)
a31=v(9)
a32=v(10)
a33=v(11)



c1=v(4)
c2=v(8)
c3=v(12)
A=[a11,a12,a13,c1;a21,a22,a23,c2;a31,a32,a33,c3]

n=3;
for l=2:n
    for j=2:n+1
        A(l,j)=A(l,j)-A(1,j)*A(l,1)/A(1,1);
    end
    A(l,1)=0;
end
for i=3:n
    for j=3:n+1
        A(i,j)=A(i,j)-A(2,j)*A(i,2)/A(2,2);
    end
    A(i,2)=0;
end
x(n)=A(n,n+1)/A(n,n);for i=n-1:-1:1
    sumk=0;
    for k=i+1:n
        sumk=sumk+A(i,k)*x(k);
    end
    x(i)=(A(i,n+1)-sumk)/A(i,i);
end
disp(x(3),x(2),x(1),'Tha values of x,y,z are');
disp(A(1,1),A(2,2),A(3,3),'The pivots are');
