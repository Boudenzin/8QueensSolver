# 8QueensSolver

![GitHub](https://img.shields.io/badge/license-MIT-blue)
![GitHub](https://img.shields.io/badge/SWIProlog-9.2%2B-red)

O **8QueensSolver** é um projeto desenvolvido em **Prolog** para resolver o problema das 8 rainhas. O objetivo é posicionar 8 rainhas em um tabuleiro de xadrez de forma que nenhuma rainha ataque outra. Este projeto foi desenvolvido como parte de um desafio proposto pelo professor de Linguagens Declarativas.

---

## Funcionalidades

- **Solução do Problema das 8 Rainhas**: Encontra todas as soluções possíveis para o problema das 8 rainhas.
- **Verificação de Segurança**: Implementa a lógica para verificar posições seguras para as rainhas.
- **Backtracking Automático**: Utiliza o mecanismo de backtracking do Prolog para encontrar soluções.

---

## Tecnologias Utilizadas

- **Prolog**: Linguagem de programação lógica usada para resolver o problema.
- **Programação Declarativa**: Uso de predicados e regras lógicas para definir as soluções.

---

## Como Executar o Projeto

### Pré-requisitos
- Um interpretador Prolog instalado (como SWI-Prolog).

### Passos para Execução

1. Clone o repositório:
   ```bash
   git clone https://github.com/Boudenzin/8QueensSolver.git
   ```

2. Navegue até o diretório do projeto:
   ```bash
   cd 8QueensSolver
   ```

3. Abra o arquivo Prolog no interpretador:
   ```bash
   swipl 8_Rainhas_Completo.pl
   ```

4. Execute o predicado principal para encontrar uma solução:
   ```prolog
   solucao(PosicoesDasRainhas).
   ```

5. Para ver todas as soluções, use:
   ```prolog
   findall(P, solucao(P), Solucoes), length(Solucoes, Total).
   ```

---

## Estrutura do Código

O código está organizado da seguinte forma:

### Predicados Principais

- **solucao/1**:
  - Predicado principal que encontra uma solução válida para o problema.
  - Garante que a lista tenha 8 elementos e chama `rainhas/1`.

- **rainhas/1**:
  - Predicado recursivo que posiciona cada rainha em uma coluna do tabuleiro.
  - Usa `member/2` para escolher linhas válidas (1-8) para cada rainha.

- **seguro/3**:
  - Verifica se uma rainha pode ser posicionada com segurança:
    - Não está na mesma linha que outras rainhas
    - Não está nas diagonais de outras rainhas
  - Usa recursão para verificar todas as rainhas já posicionadas.

---

## Exemplo de Uso

1. Inicie o interpretador Prolog:
   ```bash
   swipl 8_Rainhas_Completo.pl
   ```

2. Execute para encontrar uma solução:
   ```prolog
   solucao(Posicoes).
   ```

3. O resultado será uma lista representando as linhas das rainhas em cada coluna:
   ```prolog
   Posicoes = [1, 5, 8, 6, 3, 7, 2, 4] 
   ```

4. Para ver todas as 92 soluções:
   ```prolog
   findall(P, solucao(P), Solucoes), length(Solucoes, Total).
   ```

---

## Representação da Solução

A solução é representada como uma lista de 8 números, onde cada número representa a linha da rainha em sua respectiva coluna. Por exemplo:

`[1, 5, 8, 6, 3, 7, 2, 4]` significa:
- Rainha na coluna 1: linha 1
- Rainha na coluna 2: linha 5
- ...
- Rainha na coluna 8: linha 4

---

## Issues

Se você encontrar algum problema ou tiver sugestões de melhorias, sinta-se à vontade para abrir uma **issue** no repositório do projeto. Sua contribuição é muito bem-vinda!

1. Acesse o repositório: [8QueensSolver](https://github.com/Boudenzin/8QueensSolver).
2. Clique na aba **Issues**.
3. Clique em **New Issue** e descreva o problema ou sugestão.

---

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
