function [ root , fx, ea, iter ] = falsePosition(func, xl, xu , es, ~)
% function
if nargin==3
    es=10^(-6);
    n=200;
else 
    n=200;
end
% anylising number of inputs so and sets to default if not used
format long% formating
iter=0;% setting iter to 0 so it can run in the loop
error=1;% setting ther error to 100% so it can run in the loop
i=1;% setting k to 1 so it can added up the loops ran
fl=func(xl);% finding value at lower bound
fu=func(xu);% finding value at upper bound
if (fl*fu<=0)% making a loop to see sign
 while (abs(xu-xl)>es)&&(iter<n)&&((fl-fu)~=0)&&(es<=error)% a while loop to stop false poistion at right time
 root=xu-fu*(xu-xl)/(fu-fl);% finding the root in while loop
 fx=func(root);% evaluationg function at root in while loop
    xr = xu - ((fu*(xl-xu))/(fl-fu)); % x root using false position method
    xR(i+1) = xr; % stores the x root per iteration in a vector
    error = abs((xR(i+1) - xR(i))./xR(i+1)); % approximate relative error 
    ea=error*100;% approximate relitive error percent 
    i = i+1;% adding up how many times it ran
 if fx*fl>0% if loop to find sign
 xl=root;% putting lower bound equal to root
 fl=fx;% setting f lower to root evaluated at function
 else
 xu=root;% putting upper bound equal to the root
 fu=fx;% setting f upper to the root evaluated at function
 end
 iter=iter+1;% adding up times it ran
 end
end
