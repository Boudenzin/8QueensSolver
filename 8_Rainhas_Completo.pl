% Função para verificar se a posição da rainha atual é segura em relação às outras rainhas.
% seguro(LinhaDaRainhaAtual, PosicoesDasOutrasRainhas, DistanciaEntreColunas)
seguro(_, [], _). % Caso base: não há outras rainhas para verificar, então a posição é segura.

seguro(LinhaDaRainhaAtual, [LinhaDeOutraRainha | PosicoesDasOutrasRainhas], DistanciaEntreColunas) :-
    % Verifica se a rainha atual não está na mesma linha que outra rainha.
    LinhaDaRainhaAtual =\= LinhaDeOutraRainha,

    % Verifica se a rainha atual não está na diagonal superior em relação à outra rainha.
    % Diagonal superior: LinhaDaRainhaAtual = LinhaDeOutraRainha + DistanciaEntreColunas.
    LinhaDaRainhaAtual =\= LinhaDeOutraRainha + DistanciaEntreColunas,

    % Verifica se a rainha atual não está na diagonal inferior em relação à outra rainha.
    % Diagonal inferior: LinhaDaRainhaAtual = LinhaDeOutraRainha - DistanciaEntreColunas.
    LinhaDaRainhaAtual =\= LinhaDeOutraRainha - DistanciaEntreColunas,

    % Aumenta a distância para verificar a próxima rainha na lista.
    % Como estamos avançando para a próxima coluna, a distância aumenta em 1.
    NovaDistancia is DistanciaEntreColunas + 1,

    % Chama recursivamente a função seguro para verificar a próxima rainha na lista.
    seguro(LinhaDaRainhaAtual, PosicoesDasOutrasRainhas, NovaDistancia).

% Função para posicionar as rainhas no tabuleiro.
% rainhas(PosicoesDasRainhas)
rainhas([]). % Caso base: todas as rainhas foram posicionadas com sucesso.

rainhas([LinhaDaRainhaAtual | PosicoesDasOutrasRainhas]) :-
    % Primeiro, posiciona as rainhas nas colunas anteriores (recursão).
    rainhas(PosicoesDasOutrasRainhas),

    % Escolhe uma linha para a rainha atual (de 1 a 8).
    member(LinhaDaRainhaAtual, [1, 2, 3, 4, 5, 6, 7, 8]),

    % Verifica se a posição da rainha atual é segura em relação às rainhas já posicionadas.
    % A distância inicial é 1, pois estamos comparando com a rainha na coluna anterior.
    seguro(LinhaDaRainhaAtual, PosicoesDasOutrasRainhas, 1).

% Função para encontrar uma solução para o problema das 8 rainhas.
% solucao(PosicoesDasRainhas)
solucao(PosicoesDasRainhas) :-
    % Garante que a lista PosicoesDasRainhas tem exatamente 8 elementos.
    length(PosicoesDasRainhas, 8),

    % Verifica se as posições das rainhas são válidas.
    rainhas(PosicoesDasRainhas).

