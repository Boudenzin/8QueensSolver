# 8QueensSolver

O **8QueensSolver** é um projeto desenvolvido em **Prolog** para resolver o problema das 8 rainhas. O objetivo é posicionar 8 rainhas em um tabuleiro de xadrez de forma que nenhuma rainha ataque outra. Este projeto foi desenvolvido como parte de um desafio proposto pelo professor de Linguagens Declarativas, em colaboração com um time de três pessoas.

---

## Funcionalidades

- **Solução do Problema das 8 Rainhas**: Encontra todas as soluções possíveis para o problema das 8 rainhas.
- **Impressão do Tabuleiro**: Exibe o tabuleiro com as rainhas posicionadas.
- **Percorrimento de Linhas**: Função auxiliar para percorrer e imprimir as linhas do tabuleiro.

---

## Tecnologias Utilizadas

- **Prolog**: Linguagem de programação lógica usada para resolver o problema.
- **Lógica de Predicados**: Uso de predicados para definir regras e soluções.

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

3. Abra o arquivo `.pl` no interpretador Prolog:
   ```bash
   swipl 8 rainhas ld.pl
   ```

4. Execute o predicado principal para resolver o problema:
   ```prolog
   resolver.
   ```

5. O tabuleiro com as rainhas posicionadas será exibido no terminal.

---

## Estrutura do Código

O código está organizado da seguinte forma:

### Predicados Principais

- **resolver/0**:
  - Predicado principal que inicia a resolução do problema.
  - Chama `matriz_inicial/1` para criar o tabuleiro e `colocar_rainhas/3` para posicionar as rainhas.

- **matriz_inicial/1**:
  - Define o tabuleiro inicial como uma matriz 8x8 com zeros.

- **colocar_rainhas/3**:
  - Predicado recursivo que posiciona as rainhas no tabuleiro.
  - Quando todas as rainhas são posicionadas (`Linha_a_ser_colocada_a_rainha = 0`), a solução é retornada.

- **percorrer_linhas/1**:
  - Predicado auxiliar para percorrer e imprimir as linhas do tabuleiro.

---

## Exemplo de Uso

1. Inicie o interpretador Prolog:
   ```bash
   swipl 8 rainhas ld.pl
   ```

2. Execute o predicado `resolver`:
   ```prolog
   resolver.
   ```

3. O tabuleiro com as rainhas posicionadas será exibido no terminal:
   ```
   [1,0,0,0,0,0,0,0]
   [0,0,0,0,1,0,0,0]
   [0,0,0,0,0,0,1,0]
   [0,0,0,0,0,0,0,1]
   [0,1,0,0,0,0,0,0]
   [0,0,0,1,0,0,0,0]
   [0,0,0,0,0,1,0,0]
   [0,0,1,0,0,0,0,0]
   ```

---

## Issues

Se você encontrar algum problema ou tiver sugestões de melhorias, sinta-se à vontade para abrir uma **issue** no repositório do projeto. Sua contribuição é muito bem-vinda!

1. Acesse o repositório: [8QueensSolver](https://github.com/Boudenzin/8QueensSolver).
2. Clique na aba **Issues**.
3. Clique em **New Issue** e descreva o problema ou sugestão.

---

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
