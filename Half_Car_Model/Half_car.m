velocity_front = out.velocity_f.data;
velocity_rear = out.velocity_r.data;
time_velocity = out.velocity_f.Time;
omega_front = out.omega_f.data;
time_omegaf = out.omega_f.Time;
omega_rear = out.omega_r.data;
time_omegar = out.omega_r.Time;
kappa_front = out.kappa_f.data;
Time_kappaF = out.kappa_f.Time;
kappa_rear = out.kappa_r.data;
Time_kappaR = out.kappa_r.Time;
Fx_front = out.Fx_f.data;
Time_Fx_front = out.Fx_f.Time;
Fx_rear = out.Fx_r.data;
Time_Fx_rear = out.Fx_r.Time;
Brake_torque_front = out.brake_torque_f.data;
Time_BT_front = out.brake_torque_f.Time;
Brake_torque_rear = out.brake_torque_r.data;
Time_BT_rear = out.brake_torque_r.Time;
acceleration_vehicle =  out.acceleration.data;
Time_acceleration = out.acceleration.Time;


% slip vs Time
plot(Time_kappaF,kappa_front,'-b',Time_kappaR,kappa_rear,'--r')
xlabel('Time (s)');
ylabel('Slip');
legend('Tyre 1','Tyre 2');
title('Slip');
legend("Position", [0.69263,0.4101,0.19283,0.10417])

% V vs W vs Time
plot(time_velocity,velocity_front,'LineWidth', 1.5)
hold on; 
plot(time_omegaf,omega_front,'LineWidth', 1.5)
plot(time_velocity,velocity_rear,'LineWidth', 1.5)
hold on; 
plot(time_omegar,omega_rear,'LineWidth', 1.5)
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('v_x and \omega*r_{eff} (Tyre 2)');
legend('v_x (Tyre 1)','\omega*r_{eff} (Tyre 1)','v_x (Tyre 2)','\omega*r_{eff} (Tyre 2)');
hold off;

%brake_torque vs Time
plot(Time_BT_front,Brake_torque_front,'-b',Time_BT_rear,Brake_torque_rear,'--r'); 
xlabel('Time (s)');
ylabel('Brake torque (Nm)');
legend('Tyre 1','Tyre 2');
title('Brake torque (Nm)')

%acceleration vs Time

plot(Time_acceleration,acceleration_vehicle,'-b');
xlabel('Time (s)');
ylabel('acceleration');
legend('vehicle');
title('Acceleration')
% Fx vs time
plot(Time_Fx_front,Fx_front(1),'-b',Time_Fx_rear,Fx_rear(1),'--r');
xlabel('Time (s)');
ylabel('Fx(N)'); 
legend('Tyre 1','Tyre 2');
title('Fx (N)');