clear all;
close all;

Ts = [ 0.01 0.01 0.01 0.02 0.04];
delta = [0.02 0.04 0.08 0.04 0.04];
N = [50 50 50 25 13];


% Initialization
eq_nTs = zeros(length(Ts), 1);
mq_nTs = zeros(length(Ts), 1);
e_nTs  = zeros(length(Ts), 1); 


for i=1:length(Ts)

    
    t = 0:Ts(i):Ts(i)*N(i);  
    m = sin(2*pi*t);
    
    fid = fopen(sprintf('%d.txt',i), 'w');
   
    for j=1:N(i)
        
        e_nTs(j+1) = m(j+1)-mq_nTs(j );
        eq_nTs(j+1) = delta(i)*sign(e_nTs(j+1));
        mq_nTs(j+1) = mq_nTs(j ) + eq_nTs(j+1);
        fprintf(fid, '%d\t', sign(e_nTs(j+1)) );
        
    end
    fclose(fid);    
    
%     figure;
    figure;
    plot(t,m);
    hold on;
    stairs(t, e_nTs);
   hold on;
    stairs(t, eq_nTs);
    hold on;
     stairs(t, mq_nTs);
     hold on;
    plot(t, sign(e_nTs));
      xlabel('t');
    hold off;
    legend('Message','e(nT_s)','e_q(nT_s)','m_q(nT_s)','Demod');
    
    
    % Initialization
    clear eq_nTs mq_nTs e_nTs;
    eq_nTs = zeros(length(Ts), 1);
    mq_nTs = zeros(length(Ts), 1);
    e_nTs  = zeros(length(Ts), 1); 

end