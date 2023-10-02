%These are helmholtz calculations for a square coil pair

%side length of the coil in meters

%CLength of side length (derived from uniformity)
L = 1.7;

%Width of U-Channel (4.4196 cm)
width_U = 0.044196;

%Add gamma const
gamma = 0.544505643;

%target max magnetitude (2 Gauss in tesla)
B = 0.0002;

%Wire diameter (24 AWG WIRE, 14.2 Amps max current rating)
wire_d= 0.00051054;

%μ0 = 4π × 10-7 H/m
mu = (4.*pi).*(10.^-7);

%Number of loops calculated (-5 for a factor of safety
loops = (floor(width_U./wire_d)-5);
%mu
mu = 4 * pi * 1e-7; % permeability of free space
%Find current.
current = (pi.*L.*(1+gamma.^2).*(sqrt(2+gamma.^2)).*0.0002)./(4.*mu.*loops);





%Wire selction code

%Wire diameter in mm and guage number (29 options)
wire_g_row = [0000 000 00 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25];
wire_g= wire_g_row';
wire_d_row= [11.684 10.40384 9.26592 8.25246 7.34822 6.54304 5.82676 5.18922 4.62026 4.1148 3.66522 3.2639 2.90576 2.58826 2.30378 2.05232 1.8288 1.62814 1.45034 1.29032 1.15062 1.02362 0.91186 0.8128 0.7239 0.64516 0.57404 0.51054 0.45466];
wire_d= wire_d_row';
%Max current for power transmission
wire_c_row= [302 239 190 150 119 94 75 60 47 37 30 24 19 15 12 9.3 7.4 5.9 4.7 3.7 2.9 2.3 1.8 1.5 1.2 0.92 0.729 0.577 0.457];
wire_c= wire_c_row';

P_F = strings([29 1]);
Curr_req = zeros([29 1]);
wire_matrix =[wire_g wire_d wire_c Curr_req];

%Loop logic;
%Loop through gauges;
%for each wire gauge

%29 options
n=29;

%Width available in the U-channel (in meters): Sourced from mcmaster-Carr 
%Currently using 1630T41 U-channel
U_width = 0.158496;

%Helmholtz cage constants
gamma = 0.544505643;
%μ0 = 4π × 10-7 H/m
mu = (4.*pi).*(10.^-7);

%Half of Side length 1.7, with factor of safety we get to 1.8
a = 1.8;

%Target magnitiude of field
B = 0.0002;

%Current factor of saftey 60% max output for power transmission
safety_factor = 0.75;


for c = 1:n
    %Gauge
    guage = wire_matrix(c,1);
    %Diameter (in meters) 
    diameter = wire_matrix(c,2)/1000;
    %Max current
    max_current = wire_matrix(c,3);
    %Number of loops calculated (-2 for a factor of safety)
    loops = (floor(U_width./diameter)-2);
    current_required = (pi.*a.*(1+gamma.^2).*(sqrt(2+gamma.^2)).*0.0002)./(4.*mu.*loops);

    if ((safety_factor*max_current)/current_required) > 1
        %PASS sceneario
        P_F(c,1) = "PASS";
        wire_matrix(c,4) = current_required;
    else
        P_F(c,1) = "FAIL";
        wire_matrix(c,4) = current_required;
    end

end

disp(["Gauge" "Diameter" "Max current" "Current Required" "Pass/Fail"; wire_matrix P_F])
disp("Notice: under 'Gauge' 0s are actually 0000,000,00,0 top to bottom")
