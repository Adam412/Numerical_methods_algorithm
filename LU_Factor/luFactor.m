function [L,U,P] =luFactor(A)
% LU decompesition with pivoting 
%[L,U,P]=luFactor(A) returns:
%Inputs- matrix [A] 
%outputs- [L] (lower triangle), [U] (upper triangle), [P] (pivot matrix)
%
%sizing and creating/starting matrixes
%checking for biggest value in first row
% switching first row with largest number in that row under it with that
% row and repat the proccess until you run out of colums or rows 
%creat L matix witht he coefficents used to solve for U 

%making and sizing all matrixs
[n,~] = size(A);
L=eye(n); % setting L as an identity matrix 
P=eye(n);% setting P as an identyity matrix to show pivot
U=A;% starting U as the orignial matrix
% the loop pivots the largest number in colum 1 to top for j=1 thenas j
% increases it moves largest up to the next position until you hit n
for j = 1:n % repeats step until rows are met
    [~,N]=max(abs(U(j:n,j)));% finding the max in the first colum
    N=N+j-1;% adding m so that we can switch rows
    if N~=j
        U([N,j],:)=U([j,N],:); %switching/pivoting   
        P([N,j],:)=P([j,N],:); %switching/pivoting 
        if j >= 2 %this for moving around in the L matrix   
            L([N,j],1:j-1)=L([j,N],1:j-1); %switching/pivoting 
        end
    end
    for i=j+1:n% for setting and variables in the matrixs
        L(i,j)=U(i,j)/U(j,j);% creating ratio to go in L
        U(i,:)=U(i,:)-L(i,j)*U(j,:);% doing elemination
    end
    
end
