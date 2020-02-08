str = input("Please enter a 3x3 matrix with spaces to seperate", "string")
v = evstr(strsplit(str, " "))


j11=v(1)
j12=v(2)
j13=v(3)
j21=v(4)
j22=v(5)
j23=v(6)
j31=v(7)
j32=v(8)
j33=v(9)



a=[j11,j12,j13;j21,j22,j23;j31,j32,j33]
n=length(a(1,:));
aug=[a,eye(n,n)];
for j=1:n-1
    for i=j+1:n
        aug(i,j:2*n)=aug(i,j:2*n)-aug(i,j)/aug(j,j)*aug(j,j:2*n);
        end
end
for j=n:-1:2
    aug (1:j-1,:)=aug(1: j-1,:)-aug(1:j-1,j)/aug(j,j)*aug(j,:);
end
for j=1:n
    aug(j,:)=aug(j,:)/aug(j,j);
end
b=aug(:,n+1:2*n);
disp(b,"the inverse of a is as follows");
