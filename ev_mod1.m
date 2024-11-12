%% input
m = 300%% (kg)mass of EV

gr =9.81 %% Gear Ratio

g = 9.81 %% (m/s^2)Acceleration due to Gravity

cd = 0.8 %% Aero Drag Coefficient

cr = 0.05 %%Surface friction coefficient

a = 1 %%(m^2)Frontal Area

theta = 0.6457718232 %% (radian)Gradient Angle

rho = 1.225 %% (kg/m^3)Density of Air

rw = 0.2921  %%(m) Radius of Wheel

te = 0.78 %% Transmission Efficiency

me = 0.85 %% Motor Efficiency

ce=0.9 %% Controller Efficiency

ap=1.07 %% Auxillary Power

v= 48 %%(Volts) Battery Pack Voltage

cell_c = 5 %%(Ah) Cell Capacity

cell_v = 3.6 %% (Volts)Cell Nominal Voltage

cell_w = 70 %% (grams)Mass of Cell

lap =17  %% Total Number of Laps

%% input block
data = xlsread('socv2c.xlsx')
data2= xlsread('PTSvC.xlsx')

%% data read
soc = data(:,1)
ocv = data(:,2)
cur = data2(:,1)
pow = data2(:,2)
tor = data2(:,3)
spd = data2(:,4)
eff = data2(:,5)


%% simulate
sim('ev4')
%%sim('ev3')




