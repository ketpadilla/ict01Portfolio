t=(0:0.1:4);
fn=((1+0.25i)*t)-2.0;
amp=abs(fn);
phase=angle(fn);
figure(1);
subplot(2,1,1)
plot(fn,amp);
hold on;
title('AMPLITUDE VS TIME');
xlabel('TIME');
ylabel('AMPLITUDE');
subplot(2,1,2)
plot(fn,phase);
hold off;
title('PHASE VS TIME');
xlabel('TIME');
ylabel('PHASE');