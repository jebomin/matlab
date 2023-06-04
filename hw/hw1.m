a = input('input a = ');
b = input('input b = ');
c = input('input c = ');

vec = [a,b,c];
p=(a+b+c)/2;
s=sqrt(p*(p-a)*(p-b)*(p-c));

if(max(vec)<((a+b+c)-max(vec)))
    disp(s);
else
    fprintf('삼각형을 구성할 수 없다.')
end