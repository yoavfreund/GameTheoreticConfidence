K=2;
n=2*K;   % number of points
m=2*K-1; % number of functions
alpha=0.4; % correlation (number between 0 and 1).

d=[n*alpha*ones(m,1); -n*ones(m,1); -ones(2*n,1)]
b=ones(2*n,1)
lb=zeros(2*n+2*m,1)

F=zeros(2*n,m);

for i=1:n
    row=2*i-1;
    for j=1:m
        s=1;
        if j+.5 > i
            s=-1;
        end
        F(row,j)=s;
        F(row+1,j)=-s;
    end
end

A=[F -F -eye(2*n,2*n)]

[x,fval,exitflag,output,lambda] = linprog(-d,A,b,[],[],lb,[])
