%SIMULATION PARAMETERS
modelDuration = 200;
setVar_RN_1 = 100;
setVar_RN_2 = 256;
setMean_RN_1 = 0;
setMean_RN_2 = 0;
setSeed_RN_1 = 1234;
setSeed_RN_2 = 4321;

out = sim('sumOfVarSIM.slx',modelDuration);

%PROPERTIES of RN_1
std_RN_1 = std(out.RN_1);
var_RN_1 = var(out.RN_1);
mean_RN_1 = mean(out.RN_1);

%PROPERTIES of RN_2
std_RN_2 = std(out.RN_2);
var_RN_2 = var(out.RN_2);
mean_RN_2 = mean(out.RN_2);

%PROPERTIES of RN_SUM
std_RN_SUM = std(out.RN_SUM);
var_RN_SUM = var(out.RN_SUM);
mean_RN_SUM = mean(out.RN_SUM);

% PLOT
figure;
set(0,'defaultAxesFontSize',16)
ax1 = subplot(3,1,1);
histogram(out.RN_1);
str = sprintf("Var = %f", var_RN_1);
text(min(xlim)+5, max(ylim)-20,str, 'FontSize',16);
title("RAN NUM 1");
ax2 = subplot(3,1,2);
histogram(out.RN_2);
str = sprintf("Var = %f", var_RN_2);
text(min(xlim)+5, max(ylim)-20,str, 'FontSize',16);
title("RAN NUM 2");
ax3 = subplot(3,1,3);
histogram(out.RN_SUM);
str = sprintf("Var = %f", var_RN_SUM);
text(min(xlim)+5, max(ylim)-20,str, 'FontSize',16);
title("RAN NUM (SUM)");
linkaxes([ax1,ax2,ax3],'x')