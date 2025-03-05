resolver :-
    matriz_inicial(Matriz),
    colocar_rainhas(8, Matriz, Solucao),
    imprimir_matriz(Solucao).

% Define um predicado para armazenar a matriz
matriz_inicial([
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0]
]).
%Leia os comentários
colocar_rainhas(0, Matriz, Matriz). % Se não há mais rainhas para colocar, a solução está pronta, no caso o primeiro parametro determina quantas linhas faltam para serem colocadas, nesse caso é 0, pq a solução está pronta, ela determina  de 8 e vai diminuindo conforme for colocando as rainhas. São necessárias duas matrizes, pois não tem como alterar uma matriz em prolog, tem que criar uma nova matriz.
colocar_rainhas(Linha_a_ser_colocada_a_rainha, Matriz, Solucao) %No caso, como 0 não é identificado como linha a ser colocada a rainha, quando chegar a 0, signfica que ele não tem mais nada pra colocar





%Teste de percorrimento de linhas
% Predicado para percorrer e imprimir a matriz
percorrer_linhas([]).  % Caso base: quando não há mais linhas, para a recursão.

percorrer_linhas([Linha | Resto]) :-
    write(Linha), nl,  % Imprime a linha e pula para a próxima linha
    percorrer_linhas(Resto). % Chama recursivamente para o restante da matriz.



