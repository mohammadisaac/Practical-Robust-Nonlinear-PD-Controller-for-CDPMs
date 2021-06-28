%% Plot Result for TDE_NPD & TDE_PD
clear;
load('TDE_With_NPD.mat'); clc;
t_NPD = t.Data(30811:90811);
xd_NPD = xd_NPD.Data(30811:90811);
yd_NPD = yd_NPD.Data(30811:90811);
zd_NPD = zd_NPD.Data(30811:90811) - 4.23;
x_NPD = x_NPD.Data(30811:90811);
y_NPD = y_NPD.Data(30811:90811);
z_NPD = z_NPD.Data(30811:90811);
ex_NPD = ex_NPD.Data(30811:90811); % xd - x;
ey_NPD = ey_NPD.Data(30811:90811); % yd - y;
ez_NPD = ez_NPD.Data(30811:90811); % zd - z;
theta1d_NPD = theta1d_NPD.Data(30811:90811);
theta2d_NPD = theta2d_NPD.Data(30811:90811);
theta3d_NPD = theta3d_NPD.Data(30811:90811);
theta4d_NPD = theta4d_NPD.Data(30811:90811);
theta1_NPD = theta1_NPD.Data(30811:90811);
theta2_NPD = theta2_NPD.Data(30811:90811);
theta3_NPD = theta3_NPD.Data(30811:90811);
theta4_NPD = theta4_NPD.Data(30811:90811);
e1theta_NPD = e1theta_NPD.Data(30811:90811);
e2theta_NPD = e2theta_NPD.Data(30811:90811);
e3theta_NPD = e3theta_NPD.Data(30811:90811);
e4theta_NPD = e4theta_NPD.Data(30811:90811);
tau1_NPD = tau1_NPD.Data(30811:90811);
tau2_NPD = tau2_NPD.Data(30811:90811);
tau3_NPD = tau3_NPD.Data(30811:90811);
tau4_NPD = tau4_NPD.Data(30811:90811);
%% NEXT DATA
load('TDE_With_AN4.mat'); clc;                %Time for AN1: (41839:101839)
t_AN4 = t.Data(18861:78861);                  %Time for AN2: (28373:88373)
xd_AN4 = xd_AN4.Data(18861:78861);            %Time for AN3: (33148:93148)
yd_AN4 = yd_AN4.Data(18861:78861);            %Time for AN4: (18861:78861)
zd_AN4 = zd_AN4.Data(18861:78861);
x_AN4 = x_AN4.Data(18861:78861);
y_AN4 = y_AN4.Data(18861:78861);
z_AN4 = z_AN4.Data(18861:78861);
ex_AN4 = ex_AN4.Data(18861:78861); % xd - x;
ey_AN4 = ey_AN4.Data(18861:78861); % yd - y;
ez_AN4 = ez_AN4.Data(18861:78861); % zd - z;
theta1d_AN4 = theta1d_AN4.Data(18861:78861);
theta2d_AN4 = theta2d_AN4.Data(18861:78861);
theta3d_AN4 = theta3d_AN4.Data(18861:78861);
theta4d_AN4 = theta4d_AN4.Data(18861:78861);
theta1_AN4 = theta1_AN4.Data(18861:78861);
theta2_AN4 = theta2_AN4.Data(18861:78861);
theta3_AN4 = theta3_AN4.Data(18861:78861);
theta4_AN4 = theta4_AN4.Data(18861:78861);
e1theta_AN4 = e1theta_AN4.Data(18861:78861);
e2theta_AN4 = e2theta_AN4.Data(18861:78861);
e3theta_AN4 = e3theta_AN4.Data(18861:78861);
e4theta_AN4 = e4theta_AN4.Data(18861:78861);
tau1_AN4 = tau1_AN4.Data(18861:78861);
tau2_AN4 = tau2_AN4.Data(18861:78861);
tau3_AN4 = tau3_AN4.Data(18861:78861);
tau4_AN4 = tau4_AN4.Data(18861:78861);
%% NEXT DATA
load('TDE_With_AI2.mat'); clc;
t_AI2 = t.Data(115515:175515);
xd_AI2 = xd_AI2.Data(115515:175515);
yd_AI2 = yd_AI2.Data(115515:175515);
zd_AI2 = zd_AI2.Data(115515:175515);
x_AI2 = x_AI2.Data(115515:175515);
y_AI2 = y_AI2.Data(115515:175515);
z_AI2 = z_AI2.Data(115515:175515);
ex_AI2 = ex_AI2.Data(115515:175515); % xd - x;
ey_AI2 = ey_AI2.Data(115515:175515); % yd - y;
ez_AI2 = ez_AI2.Data(115515:175515); % zd - z;
theta1d_AI2 = theta1d_AI2.Data(115515:175515);
theta2d_AI2 = theta2d_AI2.Data(115515:175515);
theta3d_AI2 = theta3d_AI2.Data(115515:175515);
theta4d_AI2 = theta4d_AI2.Data(115515:175515);
theta1_AI2 = theta1_AI2.Data(115515:175515);
theta2_AI2 = theta2_AI2.Data(115515:175515);
theta3_AI2 = theta3_AI2.Data(115515:175515);
theta4_AI2 = theta4_AI2.Data(115515:175515);
e1theta_AI2 = e1theta_AI2.Data(115515:175515);
e2theta_AI2 = e2theta_AI2.Data(115515:175515);
e3theta_AI2 = e3theta_AI2.Data(115515:175515);
e4theta_AI2 = e4theta_AI2.Data(115515:175515);
tau1_AI2 = tau1_AI2.Data(115515:175515);
tau2_AI2 = tau2_AI2.Data(115515:175515);
tau3_AI2 = tau3_AI2.Data(115515:175515);
tau4_AI2 = tau4_AI2.Data(115515:175515);
%% NEXT DATA
load('TDE_With_PD.mat'); clc;
t_PD = t.Data(40153:100153);
xd_PD = xd_PD.Data(40153:100153);
yd_PD = yd_PD.Data(40153:100153);
zd_PD = zd_PD.Data(40153:100153);
x_PD = x_PD.Data(40153:100153);
y_PD = y_PD.Data(40153:100153);
z_PD = z_PD.Data(40153:100153);
ex_PD = ex_PD.Data(40153:100153); % xd - x;
ey_PD = ey_PD.Data(40153:100153); % yd - y;
ez_PD = ez_PD.Data(40153:100153); % zd - z;
theta1d_PD = theta1d_PD.Data(40153:100153);
theta2d_PD = theta2d_PD.Data(40153:100153);
theta3d_PD = theta3d_PD.Data(40153:100153);
theta4d_PD = theta4d_PD.Data(40153:100153);
theta1_PD = theta1_PD.Data(40153:100153);
theta2_PD = theta2_PD.Data(40153:100153);
theta3_PD = theta3_PD.Data(40153:100153);
theta4_PD = theta4_PD.Data(40153:100153);
e1theta_PD = e1theta_PD.Data(40153:100153);
e2theta_PD = e2theta_PD.Data(40153:100153);
e3theta_PD = e3theta_PD.Data(40153:100153);
e4theta_PD = e4theta_PD.Data(40153:100153);
tau1_PD = tau1_PD.Data(40153:100153);
tau2_PD = tau2_PD.Data(40153:100153);
tau3_PD = tau3_PD.Data(40153:100153);
tau4_PD = tau4_PD.Data(40153:100153);
%% NEXT DATA
load('Model_AR2.mat'); clc;
t_AR2 = t.Data(24172:84172);
xd_AR2 = xd_AR2.Data(24172:84172);
yd_AR2 = yd_AR2.Data(24172:84172);
zd_AR2 = zd_AR2.Data(24172:84172);
x_AR2 = x_AR2.Data(24172:84172);
y_AR2 = y_AR2.Data(24172:84172);
z_AR2 = z_AR2.Data(24172:84172);
ex_AR2 = ex_AR2.Data(24172:84172); % xd - x;
ey_AR2 = ey_AR2.Data(24172:84172); % yd - y;
ez_AR2 = ez_AR2.Data(24172:84172); % zd - z;
theta1d_AR2 = theta1d_AR2.Data(24172:84172);
theta2d_AR2 = theta2d_AR2.Data(24172:84172);
theta3d_AR2 = theta3d_AR2.Data(24172:84172);
theta4d_AR2 = theta4d_AR2.Data(24172:84172);
theta1_AR2 = theta1_AR2.Data(24172:84172);
theta2_AR2 = theta2_AR2.Data(24172:84172);
theta3_AR2 = theta3_AR2.Data(24172:84172);
theta4_AR2 = theta4_AR2.Data(24172:84172);
e1theta_AR2 = e1theta_AR2.Data(24172:84172);
e2theta_AR2 = e2theta_AR2.Data(24172:84172);
e3theta_AR2 = e3theta_AR2.Data(24172:84172);
e4theta_AR2 = e4theta_AR2.Data(24172:84172);
tau1_AR2 = tau1_AR2.Data(24172:84172);
tau2_AR2 = tau2_AR2.Data(24172:84172);
tau3_AR2 = tau3_AR2.Data(24172:84172);
tau4_AR2 = tau4_AR2.Data(24172:84172);
%% Desired & Actual Trajectory in Task Space
figure; set(gcf,'color','w');
plot(t_NPD, xd_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_NPD, yd_NPD, 'r--', 'LineWidth', 2);
plot(t_NPD, zd_NPD, 'k-.', 'LineWidth', 2);
title('Desired Trajectory for X, Y and Z Axis', 'FontWeight', 'normal');
xlim([0 60]); 
legend('x_d', 'y_d', 'z_d');
xlabel('Time (s)'); ylabel('X_d (m)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot3(xd_NPD, yd_NPD, zd_NPD, 'r--', 'LineWidth', 2);
grid on; hold on;
title('3D View of Desired Trajectory', 'FontWeight', 'normal');
xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
set(gca, 'FontSize', 12);

figure; set(gcf,'color','w');
plot(xd_NPD, yd_NPD, 'k-', 'LineWidth', 2);
grid on; hold on;
plot(x_NPD, y_NPD, 'b--', 'LineWidth', 1);
plot(x_PD, y_PD, 'r-.', 'LineWidth', 1);
% plot(x_AN4, y_AN4, 'g-.', 'LineWidth', 1);
plot(x_AI2, y_AI2, 'g-.', 'LineWidth', 1);
plot(x_AR2, y_AR2, 'm-.', 'LineWidth', 1);
plot(x_NPD, y_NPD, 'b--', 'LineWidth', 1);
title('Tracking Performance on xy-Plane', 'FontWeight', 'normal');
axis equal; 
legend('Desired Trajectory', 'Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('x-Axis (m)'); ylabel('y-Axis (m)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(xd_NPD, yd_NPD, 'k-', 'LineWidth', 2);
grid on; hold on;
plot(x_NPD, y_NPD, 'b--', 'LineWidth', 1);
plot(x_PD, y_PD, 'r-.', 'LineWidth', 1);
% plot(x_AN4, y_AN4, 'g-.', 'LineWidth', 1);
plot(x_AI2, y_AI2, 'g-.', 'LineWidth', 1);
plot(x_AR2, y_AR2, 'm-.', 'LineWidth', 1);
plot(x_NPD, y_NPD, 'b--', 'LineWidth', 1);
title('Tracking Performance on xy-Plane', 'FontWeight', 'normal');
xlim([0.578 0.592]); ylim([-0.057 -0.046]);
legend('Desired Trajectory', 'Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('x-Axis (m)'); ylabel('y-Axis (m)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(xd_NPD, yd_NPD, 'k-', 'LineWidth', 2);
grid on; hold on;
plot(x_NPD, y_NPD, 'b--', 'LineWidth', 1);
plot(x_PD, y_PD, 'r-.', 'LineWidth', 1);
% plot(x_AN4, y_AN4, 'g-.', 'LineWidth', 1);
plot(x_AI2, y_AI2, 'g-.', 'LineWidth', 1);
plot(x_AR2, y_AR2, 'm-.', 'LineWidth', 1);
plot(x_NPD, y_NPD, 'b--', 'LineWidth', 1);
title('Tracking Performance on xy-Plane', 'FontWeight', 'normal');
xlim([0.040 0.065]); ylim([0.235 0.255]);
legend('Desired Trajectory', 'Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('x-Axis (m)'); ylabel('y-Axis (m)'); set(gca, 'FontSize', 14);
%% Desired Trajectory in Joint Space
figure; set(gcf,'color','w');
plot(t_NPD, theta1d_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_NPD, theta2d_NPD, 'r--', 'LineWidth', 2);
plot(t_NPD, theta3d_NPD, 'k-.', 'LineWidth', 2);
plot(t_NPD, theta4d_NPD, 'g:', 'LineWidth', 2);
title('Desired Trajectory for Actuators', 'FontWeight', 'normal');
xlim([0 60]); 
legend('\theta_1 Desired', '\theta_2 Desired', '\theta_3 Desired', '\theta_4 Desired');
xlabel('Time (s)'); ylabel('\Theta_d (deg)'); set(gca, 'FontSize', 14);
%% Joint Space Error
figure; set(gcf,'color','w');
plot(t_NPD, e1theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e1theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e1theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e1theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e1theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for First Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_1}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e1theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e1theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e1theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e1theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e1theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for First Actuator', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_1}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e1theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e1theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e1theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e1theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e1theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for First Actuator', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_1}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e2theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e2theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e2theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e2theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e2theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Second Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_2}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e2theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e2theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e2theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e2theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e2theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Second Actuator', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_2}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e2theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e2theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e2theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e2theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e2theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Second Actuator', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_2}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e3theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e3theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e3theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e3theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e3theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Third Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_3}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e3theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e3theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e3theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e3theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e3theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Third Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_3}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e3theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e3theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e3theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e3theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e3theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Third Actuator', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_3}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e3theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e3theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e3theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e3theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e3theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Third Actuator', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_3}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e4theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e4theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e4theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e4theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e4theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Fourth Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_4}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e4theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e4theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e4theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e4theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e4theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Fourth Actuator', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_4}(deg)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, e4theta_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, e4theta_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, e4theta_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, e4theta_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, e4theta_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error for Fourth Actuator', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_4}(deg)'); set(gca, 'FontSize', 14);
%% Task Space Error
figure; set(gcf,'color','w');
plot(t_NPD, ex_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ex_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ex_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ex_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ex_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of x-Axis', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_x (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ex_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ex_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ex_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ex_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ex_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of x-Axis', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_x (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ex_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ex_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ex_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ex_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ex_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of x-Axis', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_x (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ey_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ey_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ey_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ey_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ey_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of y-Axis', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_y (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ey_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ey_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ey_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ey_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ey_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of y-Axis', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_y (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ey_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ey_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ey_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ey_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ey_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of y-Axis', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_y (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ez_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ez_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ez_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ez_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ez_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of z-Axis', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_z (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ez_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ez_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ez_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ez_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ez_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of z-Axis', 'FontWeight', 'normal');
xlim([9.8 15.2]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_z (mm)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, ez_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, ez_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, ez_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, ez_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, ez_AR2, 'm-.', 'LineWidth', 2);
title('Tracking Error of z-Axis', 'FontWeight', 'normal');
xlim([37.5 43.5]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_z (mm)'); set(gca, 'FontSize', 14);
%% Control Effort
figure; set(gcf,'color','w');
plot(t_NPD, tau1_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, tau1_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, tau1_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, tau1_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, tau1_AR2, 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by First Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_1 (N)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, tau2_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, tau2_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, tau2_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, tau2_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, tau2_AR2, 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by Second Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_2 (N)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, tau3_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, tau3_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, tau3_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, tau3_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, tau3_AR2, 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by Third Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_3 (N)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t_NPD, tau4_NPD, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t_PD, tau4_PD, 'r-.', 'LineWidth', 2);
% plot(t_AN4, tau4_AN4, 'g-.', 'LineWidth', 2);
plot(t_AI2, tau4_AI2, 'g-.', 'LineWidth', 2);
plot(t_AR2, tau4_AR2, 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by Fourth Actuator', 'FontWeight', 'normal');
xlim([0 60]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_4 (N)'); set(gca, 'FontSize', 14);
%% RMSE Task Space
% x-Axis
sqrt(sum(abs([ex_NPD, ex_PD, ex_AN4, ex_AI2, ex_AR2]).^2)/60001)
% y-Axis
sqrt(sum(abs([ey_NPD, ey_PD, ey_AN4, ey_AI2, ey_AR2]).^2)/60001)
% z-Axis
sqrt(sum(abs([ez_NPD, ez_PD, ez_AN4, ez_AI2, ez_AR2]).^2)/60001)
%% MAe Task Space
% x-Axis
max(abs([ex_NPD, ex_PD, ex_AN4, ex_AI2, ex_AR2]))
% y-Axis
max(abs([ey_NPD, ey_PD, ey_AN4, ey_AI2, ey_AR2]))
% z-Axis
max(abs([ez_NPD, ez_PD, ez_AN4, ez_AI2, ez_AR2]))
%% RMSE Joint Space
% First Actuator
sqrt(sum(abs([e1theta_NPD, e1theta_PD, e1theta_AN4, e1theta_AI2, e1theta_AR2]).^2)/60001)
% Second Actuator
sqrt(sum(abs([e2theta_NPD, e2theta_PD, e2theta_AN4, e2theta_AI2, e2theta_AR2]).^2)/60001)
% Third Actuator
sqrt(sum(abs([e3theta_NPD, e3theta_PD, e3theta_AN4, e3theta_AI2, e3theta_AR2]).^2)/60001)
% Fourth Actuator
sqrt(sum(abs([e4theta_NPD, e4theta_PD, e4theta_AN4, e4theta_AI2, e4theta_AR2]).^2)/60001)
%% MAe Joint Space
% First Actuator
max(abs([e1theta_NPD, e1theta_PD, e1theta_AN4, e1theta_AI2, e1theta_AR2]))
% Second Actuator
max(abs([e2theta_NPD, e2theta_PD, e2theta_AN4, e2theta_AI2, e2theta_AR2]))
% Third Actuator
max(abs([e3theta_NPD, e3theta_PD, e3theta_AN4, e3theta_AI2, e3theta_AR2]))
% Fourth Actuator
max(abs([e4theta_NPD, e4theta_PD, e4theta_AN4, e4theta_AI2, e4theta_AR2]))
