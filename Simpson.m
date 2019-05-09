function I = Simpson(x,y)
n=length(x);% getting max length of x
N=length(y);% getting max length of y
if n~=N % seeing if the lengths of x and y are equal
    error('x and y are not equal in length');% dis playing error if not equal
end
x1=linspace(x(1),x(n),n);% making an equal spaced array
if x~=x1 % checking if array are equal 
    error('x array does not have equal spacing');% showing error if not equal
end

h=abs(x(2)-x(1));% solving for step size
sum_4=0;% setting up for loop
sum_2=0;% setting up for loop

x2=mod(n,2);% checking if the variable can be divided by 2
if x2~=1% checking if it is even
    disp('x has an odd numer of inputs trap rule was used for last iteration');
n1=n-1;% getting ready for loop and going to run it up to the last
for i=2:2:n1% loop to sum up things
    sum_4=sum_4+4*y(i);
end
for i=3:2:n1-1% loop to sum up other things
    sum_2=sum_2+2*y(i);
end
I1=h/3*(y(1)+sum_4+sum_2+y(n1));% the integral using 1/3 simpson
I2=((h)*(y(n-1)+y(n)))/2;% the integral using trapz
I=I1+I2;% adding up both integrals
else% if number of iterations are odd do this
   for i=2:2:n% summing up stuff
    sum_4=sum_4+4*y(i);
   end
   for i=3:2:n-1% summing up other stuff
    sum_2=sum_2+2*y(i);
   end
I=h/3*(y(1)+sum_4+sum_2+y(n));% intergal using 1/3 simpson
end
end


