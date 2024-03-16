% Condiciones iniciales
x0 = [0; 0; 0];    
% Resolver las ecuaciones diferenciales
[t,x] = ode45(@P8_DCMotor, [0 10], x0);

% Graficar la velocidad tangencial de salida
figure;
plot(t, x(:,3));
xlabel('Tiempo (s)');
ylabel('Velocidad tangencial');