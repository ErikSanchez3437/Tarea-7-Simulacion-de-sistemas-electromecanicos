%Erik Sánchez 222834371
function dx=P8_DCMotor(t,x)   
% Parámetros del circuito
Ra=2;       % Resistencia a (ohms)
Kt=0.01;     
Ke=0.01;    
T=0;
b=1.2e-3;   % Amortiguación
La=0.023;   % Inductancia (H)
J=1e-3;     % Inercia
Va = 5;     %Voltaje (V)

% Definir la función de las ecuaciones diferenciales
dx=zeros(3,1);
dx(1)=(1/La)*(Va-(Ke*x(3))-(Ra*x(1)));  %ia
dx(2)=x(3);                             %Rotación
dx(3)=(1/J)*((Kt*x(1))-T-(b*x(3)));     %Velocidad tangencial