# Fase 1 - Descrição do Produto

## Aplicativo DF no Ponto

## 1. Sobre o Projeto

O **DF no Ponto** é a ferramenta digital oficial para pesquisa de linhas, horários e itinerários do Sistema de Transporte Público Coletivo do Distrito Federal (STPC-DF).

O principal objetivo do sistema é oferecer uma solução prática para que os passageiros planejem seus deslocamentos urbanos, reduzindo o tempo de espera nas paradas de ônibus e facilitando a mobilidade diária na capital. A plataforma permite que os usuários busquem informações em tempo real e visualizem rotas no mapa.

## 2. Principais Funcionalidades

- Pesquisa de linhas de ônibus por número ou destino;
- Consulta de horários de partida atualizados;
- Visualização de itinerários completos e paradas em um mapa interativo;
- Acompanhamento da localização dos ônibus em tempo real (GPS);
- Opção de favoritar linhas e pontos de parada frequentes;
- Acesso a avisos e alertas do transporte público.

## 3. Tecnologias e Objetivos

O DF no Ponto foi desenvolvido com foco em:

- **Acessibilidade Móvel:** Interface otimizada para uso rápido na rua.
- **Precisão Geográfica:** Integração com mapas e sistemas GPS da frota.
- **Desempenho:** Respostas rápidas em redes móveis (3G/4G/5G).

## 4. Alvo da Avaliação

Conforme a ISO/IEC 25040, a avaliação identifica o produto e as partes do produto que serão avaliadas. Neste projeto, o alvo é o **aplicativo móvel** do DF no Ponto, observado como caixa preta, sem acesso ao código-fonte.

| Item | Definição |
| :--- | :--- |
| **Produto avaliado** | Aplicativo móvel *DF no Ponto*, versão de produção distribuída pela loja oficial |
| **Plataforma** | Android (aparelhos físicos e emuladores do Android Studio) |
| **Versão / *build* avaliada** | `5.25.1(1149) (Mais Recente)` |
| **Período de coleta** | `[A PREENCHER: datas de início e fim da coleta]` |
| **Origem da instalação** | Loja oficial de aplicativos (Play Store) |

## 5. Fronteiras e Exclusões de Escopo

**Dentro do escopo:**

- o aplicativo móvel em smartphones, incluindo telas compactas e diferentes versões do Android;
- as funções de pesquisa de linhas, consulta de horários, itinerários e mapa, acompanhamento de ônibus em tempo real e favoritos;
- a instalação e a desinstalação do aplicativo.

**Fora do escopo:**

- a versão web (`dfnoponto.com.br`);
- tablets e outros formatos de tela;
- o *backend* e as APIs da Semob-DF, que são observados apenas indiretamente, pelo comportamento do aplicativo e pela comparação com o catálogo oficial publicado;
- versões do aplicativo posteriores ao período de coleta;
- outras plataformas além da indicada na tabela acima.

Esses limites seguem o caráter acadêmico e de caixa preta da avaliação, descrito em [Propósito da Avaliação](1-proposito.md).

## 6. Referências Bibliográficas

- **ISO/IEC 25040:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.

---

## Histórico de Versão

| ID  | Descrição         | Autor                               | Data       | Revisor                              |  Data   |
| :-: | :---------------- | :---------------------------------- | :--------- | :----------------------------------- | :-----: |
| 01  | Criação da Página | [Bessa](https://github.com/bessazs) | 17/10/2026 | [------](https://github.com/-------) | ------- |
| 02 | Inclusão do Alvo da Avaliação (produto, plataforma, versão) e das Fronteiras e Exclusões de Escopo, conforme a ISO/IEC 25040 | [Pedro Ramos](https://github.com/PedroRSR) | 14/11/2026 | — | — |