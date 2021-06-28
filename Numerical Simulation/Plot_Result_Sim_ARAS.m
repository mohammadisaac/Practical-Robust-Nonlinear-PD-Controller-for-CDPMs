%% Plot Result for Lenght_dis_JointSpace_TDE
clear;
clc;
%% Circular Trajectory
sim('TDE_with_NPD_ARAS.slx'); clc;
sim('TDE_with_PD_ARAS.slx'); clc;
sim('TDE_with_AI_ARAS.slx'); clc;
sim('TDE_with_AN_ARAS.slx'); clc;
sim('Babaghasaba_ARAS.slx'); clc;
%% Linear Trajectory
% sim('TDE_With_NPD_3_Circular.slx'); clc;
% sim('TDE_With_PD_3_Circular.slx'); clc;
% sim('Adaptive_Integral_Circular.slx'); clc;
% sim('Adaptive_nonsingular_Circular.slx'); clc;
%% Desired & Actual Trajectory in Task Space
figure; set(gcf,'color','w');
plot(t, Xd_NPD(:, 1), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Xd_NPD(:, 2), 'r--', 'LineWidth', 2);
plot(t, Xd_NPD(:, 3), 'k-.', 'LineWidth', 2);
title('Desired Trajectory-TaskSpace', 'FontWeight', 'normal');
ylim([0.07 0.65])
legend('x_d', 'y_d', 'z_d');
xlabel('Time (s)'); ylabel('X_d (m)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot3(Xd_NPD(:, 1), Xd_NPD(:, 2), Xd_NPD(:, 3), 'r--', 'LineWidth', 2);
grid on; hold on;
title('3D View of Desired Trajectory', 'FontWeight', 'normal');
xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)');
set(gca, 'FontSize', 12);

figure; set(gcf,'color','w');
plot(Xd_NPD(:, 1), Xd_NPD(:, 2), 'k-', 'LineWidth', 2);
grid on; hold on;
plot(X_NPD(:, 1), X_NPD(:, 2), 'b--', 'LineWidth', 1);
plot(X_PD(:, 1), X_PD(:, 2), 'r-.', 'LineWidth', 1);
% plot(X_AN(:, 1), X_AN(:, 2), 'g-.', 'LineWidth', 1);
plot(X_AI(:, 1), X_AI(:, 2), 'g-.', 'LineWidth', 1);
plot(X_AR(:, 1), X_AR(:, 2), 'm-.', 'LineWidth', 1);
% plot(X_NPD(:, 1), X_NPD(:, 2), 'b--', 'LineWidth', 1);
title('Tracking Performance in xy-Plane', 'FontWeight', 'normal');
xlim([0.37 0.65]); axis equal;
legend('Desired Trajectory', 'Proposed Controller', 'TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('x-Axis (m)'); ylabel('y-Axis (m)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(Xd_NPD(:, 1), Xd_NPD(:, 2), 'k-', 'LineWidth', 2);
grid on; hold on;
plot(X_NPD(:, 1), X_NPD(:, 2), 'b--', 'LineWidth', 1);
plot(X_PD(:, 1), X_PD(:, 2), 'r-.', 'LineWidth', 1);
% plot(X_AN(:, 1), X_AN(:, 2), 'g-.', 'LineWidth', 1);
plot(X_AI(:, 1), X_AI(:, 2), 'g-.', 'LineWidth', 1);
plot(X_AR(:, 1), X_AR(:, 2), 'm-.', 'LineWidth', 1);
% plot(X_NPD(:, 1), X_NPD(:, 2), 'b--', 'LineWidth', 1);
title('Tracking Performance in xy-Plane', 'FontWeight', 'normal');
xlim([0.5835 0.5841]); ylim([0.5543 0.5548]);
legend('Desired Trajectory', 'Proposed Controller', 'TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('x-Axis (m)'); ylabel('y-Axis (m)'); set(gca, 'FontSize', 14);
%% Desired & Actual Trajectory in Joint Space
figure; set(gcf,'color','w');
plot(t, Thetad_NPD(:, 1), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Thetad_NPD(:, 2), 'r--', 'LineWidth', 2);
plot(t, Thetad_NPD(:, 3), 'k-.', 'LineWidth', 2);
plot(t, Thetad_NPD(:, 4), 'g:', 'LineWidth', 2);
title('Desired Trajectory-JointSpace', 'FontWeight', 'normal');
legend('\theta_{1d}', '\theta_{2d}', '\theta_{3d}', '\theta_{4d}');
xlabel('Time (s)'); ylabel('\Theta_d (deg)'); set(gca, 'FontSize', 14);
xlim([0 25]);
%% Joint Space Error
figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 1), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 1), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 1), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 1), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 1), 'm-.', 'LineWidth', 2);
title('Tracking Error for First Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_1}(deg)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 1), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 1), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 1), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 1), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 1), 'm-.', 'LineWidth', 2);
title('Tracking Error for First Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_1}(deg)'); set(gca, 'FontSize', 14);
xlim([14.8 18.2]);

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 2), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 2), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 2), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 2), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 2), 'm-.', 'LineWidth', 2);
title('Tracking Error for Second Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_2} (deg)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 2), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 2), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 2), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 2), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 2), 'm-.', 'LineWidth', 2);
title('Tracking Error for Second Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_2} (deg)'); set(gca, 'FontSize', 14);
xlim([14.8 17.2]);

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 3), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 3), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 3), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 3), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 3), 'm-.', 'LineWidth', 2);
title('Tracking Error for Third Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_3} (deg)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 3), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 3), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 3), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 3), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 3), 'm-.', 'LineWidth', 2);
title('Tracking Error for Third Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_3} (deg)'); set(gca, 'FontSize', 14);
xlim([14.8 17.2])

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 4), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 4), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 4), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 4), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 4), 'm-.', 'LineWidth', 2);
title('Tracking Error for Fourth Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_4} (deg)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_Theta_NPD(:, 4), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_Theta_PD(:, 4), 'r-.', 'LineWidth', 2);
% plot(t, Error_Theta_AN(:, 4), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AI(:, 4), 'g-.', 'LineWidth', 2);
plot(t, Error_Theta_AR(:, 4), 'm-.', 'LineWidth', 2);
title('Tracking Error for Fourth Actuator', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_{\theta_4} (deg)'); set(gca, 'FontSize', 14);
xlim([14.8 17.2])
%% Task Space Error
figure; set(gcf,'color','w');
plot(t, Error_X_NPD(:, 1)*1000, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_X_PD(:, 1)*1000, 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 1)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AI(:, 1)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AR(:, 1)*1000, 'm-.', 'LineWidth', 2);
title('Tracking Error in Task Space', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_x (mm)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_X_NPD(:, 1)*1000, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_X_PD(:, 1)*1000, 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 1)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AI(:, 1)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AR(:, 1)*1000, 'm-.', 'LineWidth', 2);
title('Tracking Error in Task Space', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_x (mm)'); set(gca, 'FontSize', 14);
xlim([14.8 17.2]);

figure; set(gcf,'color','w');
plot(t, Error_X_NPD(:, 2)*1000, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_X_PD(:, 2)*1000, 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AI(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AR(:, 2)*1000, 'm-.', 'LineWidth', 2);
title('Tracking Error of y-Axis', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_y (mm)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_X_NPD(:, 2)*1000, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_X_PD(:, 2)*1000, 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AI(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AR(:, 2)*1000, 'm-.', 'LineWidth', 2);
title('Tracking Error of y-Axis', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_y (mm)'); set(gca, 'FontSize', 14);
xlim([14.8 17.2]);

figure; set(gcf,'color','w');
plot(t, Error_X_NPD(:, 3)*1000, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_X_PD(:, 3)*1000, 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AI(:, 3)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AR(:, 3)*1000, 'm-.', 'LineWidth', 2);
title('Tracking Error of z-Axis', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_z (mm)'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, Error_X_NPD(:, 3)*1000, 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Error_X_PD(:, 3)*1000, 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 3)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AI(:, 3)*1000, 'g-.', 'LineWidth', 2);
plot(t, Error_X_AR(:, 3)*1000, 'm-.', 'LineWidth', 2);
title('Tracking Error of z-Axis', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('e_z (mm)'); set(gca, 'FontSize', 14);
xlim([14.8 17.2]);
%% Control Effort
figure; set(gcf,'color','w');
plot(t, Tau_NPD(:, 1), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Tau_PD(:, 1), 'r-.', 'LineWidth', 2);
% plot(t, Tau_AN(:, 1), 'g-.', 'LineWidth', 2);
plot(t, Tau_AI(:, 1), 'g-.', 'LineWidth', 2);
plot(t, Tau_AR(:, 1), 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by First Actuator', 'FontWeight', 'normal');
xlim([0 25]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_1 (N)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t, Tau_NPD(:, 2), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Tau_PD(:, 2), 'r-.', 'LineWidth', 2);
% plot(t, Tau_AN(:, 2), 'g-.', 'LineWidth', 2);
plot(t, Tau_AI(:, 2), 'g-.', 'LineWidth', 2);
plot(t, Tau_AR(:, 2), 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by Second Actuator', 'FontWeight', 'normal');
xlim([0 25]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_2 (N)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t, Tau_NPD(:, 3), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Tau_PD(:, 3), 'r-.', 'LineWidth', 2);
% plot(t, Tau_AN(:, 3), 'g-.', 'LineWidth', 2);
plot(t, Tau_AI(:, 3), 'g-.', 'LineWidth', 2);
plot(t, Tau_AR(:, 3), 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by Third Actuator', 'FontWeight', 'normal');
xlim([0 25]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_3 (N)'); set(gca, 'FontSize', 14);

figure; set(gcf,'color','w');
plot(t, Tau_NPD(:, 4), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, Tau_PD(:, 4), 'r-.', 'LineWidth', 2);
% plot(t, Tau_AN(:, 4), 'g-.', 'LineWidth', 2);
plot(t, Tau_AI(:, 4), 'g-.', 'LineWidth', 2);
plot(t, Tau_AR(:, 4), 'm-.', 'LineWidth', 2);
title('Cable Tension Driven by Fourth Actuator', 'FontWeight', 'normal');
xlim([0 25]);
legend('Proposed Controller', 'Modified TDC', 'AISMC', 'ARSMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('\tau_4 (N)'); set(gca, 'FontSize', 14);
%% 
figure; set(gcf,'color','w');
plot(t, ETDE_NPD(:, 1), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, ETDE_PD(:, 1), 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, ETDE_AI(:, 1), 'g-.', 'LineWidth', 2);
% plot(t, ETDE_AR(:, 1), 'm-.', 'LineWidth', 2);
title('Estimation Error of TDE (x-axis)', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('$h - \hat{h}$ (N)', 'Interpreter','Latex'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, ETDE_NPD(:, 2), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, ETDE_PD(:, 2), 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, ETDE_AI(:, 2), 'g-.', 'LineWidth', 2);
% plot(t, ETDE_AR(:, 2), 'm-.', 'LineWidth', 2);
title('Estimation Error of TDE (y-axis)', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('$h - \dot{h}$ (N)','Interpreter','Latex'); set(gca, 'FontSize', 14);
xlim([0 25]);

figure; set(gcf,'color','w');
plot(t, ETDE_NPD(:, 3), 'b-', 'LineWidth', 2);
grid on; hold on;
plot(t, ETDE_PD(:, 3), 'r-.', 'LineWidth', 2);
% plot(t, Error_X_AN(:, 2)*1000, 'g-.', 'LineWidth', 2);
plot(t, ETDE_AI(:, 3), 'g-.', 'LineWidth', 2);
% plot(t, ETDE_AR(:, 2), 'm-.', 'LineWidth', 2);
title('Estimation Error of TDE (z-axis)', 'FontWeight', 'normal');
legend('Proposed Controller', 'Modified TDC', 'AISMC'); % , 'ANTSMC'
xlabel('Time (s)'); ylabel('$h - \dot{h}$ (N)','Interpreter','Latex'); set(gca, 'FontSize', 14);
xlim([0 25]);
%% RMSE Task Space
% x-Axis
sqrt(sum(abs(1000*[Error_X_NPD(:, 1), Error_X_PD(:, 1), Error_X_AN(:, 1), Error_X_AI(:, 1), Error_X_AR(:, 1)]).^2)/10001)
% y-Axis
sqrt(sum(abs(1000*[Error_X_NPD(:, 2), Error_X_PD(:, 2), Error_X_AN(:, 2), Error_X_AI(:, 2), Error_X_AR(:, 2)]).^2)/10001)
% z-Axis
sqrt(sum(abs(1000*[Error_X_NPD(:, 3), Error_X_PD(:, 3), Error_X_AN(:, 3), Error_X_AI(:, 3), Error_X_AR(:, 3)]).^2)/10001)
%% RMSE Joint Space
% First Actuator
sqrt(sum(abs([Error_Theta_NPD(:, 1), Error_Theta_PD(:, 1), Error_Theta_AN(:, 1), Error_Theta_AI(:, 1), Error_Theta_AR(:, 1)]).^2)/10001)
% Second Actuator
sqrt(sum(abs([Error_Theta_NPD(:, 2), Error_Theta_PD(:, 2), Error_Theta_AN(:, 2), Error_Theta_AI(:, 2), Error_Theta_AR(:, 2)]).^2)/10001)
% Third Actuator
sqrt(sum(abs([Error_Theta_NPD(:, 3), Error_Theta_PD(:, 3), Error_Theta_AN(:, 3), Error_Theta_AI(:, 3), Error_Theta_AR(:, 3)]).^2)/10001)
% Fourth Actuator
sqrt(sum(abs([Error_Theta_NPD(:, 4), Error_Theta_PD(:, 4), Error_Theta_AN(:, 4), Error_Theta_AI(:, 4), Error_Theta_AR(:, 4)]).^2)/10001)

