clear; clc;

number = input("사번을 입력하세요 : ");
time = input("근무 시간을 입력하세요 : ");
if time > 120
    money = 120*84000+(time-120)*(84000*1.15);
elseif time < 60
        money = time*84000-70000;
else
    money = time*840000;
end
fprintf("사번 %d은 %d시간을 근무하였고 임금은 %d원 입니다.", number, time, money);