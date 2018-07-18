b = [0.05 0.45 0.56 0.44 0.05]; % definici�n de h(n)
b = b / (sum(b)); % para que H(0) sea = 1
[H, w] = freqz(b, 1);
xlabel('w'); grid
n = [0 : 0.1 : 3.9] * pi; x = square(n); % genera onda cuadrada
y = conv(x, b); % filtra la onda cuadrada
subplot 221; stem(x); title('x (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 223; stem(y); title('y (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid

c = [3.2 0.25 0.4 0.6 0.25]; % definici�n de h(n)
c = c / (sum(c)); % para que H(0) sea = 1
[H, w] = freqz(c, 1);
xlabel('w'); grid
n = [0 : 0.1 : 3.9] * pi; x = square(n); % genera onda cuadrada
y = conv(x, c); % filtra la onda cuadrada
subplot 222; stem(x); title('x (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 224; stem(y); title('y (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid