
% Create plots of our roll testing
%'LineNo';'TimeUS';'DesRoll';'Roll';'DesPitch';'Pitch';'DesYaw';'Yaw';
%'ErrRP';'ErrYaw';'TimeInSeconds'


% Load in values
half10 = load('ReleventValues_3210.mat');
HalfRoll_10ms = half10.tenATT;
half15 = load('ReleventValues_3215.mat');
HalfRoll_15ms = half15.fifteenATT;
half20 = load('ReleventValues_3220.mat');
HalfRoll_20ms = half20.twentyATT;
% Load values for 65 degrees roll angle
Full10 = load('ReleventValues_6510.mat');
FullRoll_10ms = Full10.FullRoll10.ATT;
Full15 = load('ReleventValues_6515.mat');
FullRoll_15ms = Full15.FullRoll15.ATT;
Full20 = load('ReleventValues_6520.mat');
FullRoll_20ms = Full20.FullRoll20.ATT;

% Commanded roll - column 3
% Actual roll - column 4
% Mission time (s) - column 11

% Plot 32.5 degree roll 10m/s
plot(HalfRoll_10ms(:,11), HalfRoll_10ms(:,3));
hold;
plot(HalfRoll_10ms(:,11), HalfRoll_10ms(:,4));
title('Maximum Roll of 32.5 Degrees - Airspeed of 10 m/s');
legend('Commanded Roll','Actual Roll');
xlabel('Mission time (s)');
ylabel('Roll angle (degrees)');
hold;

% Plot 32.5 degree roll 15m/s
figure
plot(HalfRoll_15ms(:,11), HalfRoll_15ms(:,3));
hold;
plot(HalfRoll_15ms(:,11), HalfRoll_15ms(:,4));
title('Maximum Roll of 32.5 Degrees - Airspeed of 15 m/s');
legend('Commanded Roll','Actual Roll');
xlabel('Mission time (s)');
ylabel('Roll angle (degrees)');
hold;

% Plot 32.5 degree roll 20m/s
figure
plot(HalfRoll_20ms(:,11), HalfRoll_20ms(:,3));
hold;
plot(HalfRoll_20ms(:,11), HalfRoll_20ms(:,4));
title('Maximum Roll of 32.5 Degrees - Airspeed of 20 m/s');
legend('Commanded Roll','Actual Roll');
xlabel('Mission time (s)');
ylabel('Roll angle (degrees)');
hold;

% Plot 65 degree roll 10m/s
figure
plot(FullRoll_10ms(:,11), FullRoll_10ms(:,3));
hold;
plot(FullRoll_10ms(:,11), FullRoll_10ms(:,4));
title('Maximum Roll of 65 Degrees - Airspeed of 10 m/s');
legend('Commanded Roll','Actual Roll');
xlabel('Mission time (s)');
ylabel('Roll angle (degrees)');
hold;

% Plot 65 degree roll 15m/s
figure
plot(FullRoll_15ms(:,11), FullRoll_15ms(:,3));
hold;
plot(FullRoll_15ms(:,11), FullRoll_15ms(:,4));
title('Maximum Roll of 65 Degrees - Airspeed of 15 m/s');
legend('Commanded Roll','Actual Roll');
xlabel('Mission time (s)');
ylabel('Roll angle (degrees)');
hold;

% Plot 65 degree roll 20m/s
figure
plot(FullRoll_20ms(:,11), FullRoll_20ms(:,3));
hold;
plot(FullRoll_20ms(:,11), FullRoll_20ms(:,4));
title('Maximum Roll of 65 Degrees - Airspeed of 20 m/s');
legend('Commanded Roll','Actual Roll');
xlabel('Mission time (s)');
ylabel('Roll angle (degrees)');
hold;
