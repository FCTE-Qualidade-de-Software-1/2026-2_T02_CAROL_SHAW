# Fase 4 — Coleta de Dados

## Objetivo

Reunir os registros da execução dos procedimentos definidos na Fase 3 para as 12 métricas da avaliação (**M1.1 a M6.2**). A coleta documenta as observações, os resultados, os ambientes e as evidências de cada caso, fornecendo os dados necessários para calcular as métricas, julgar os objetivos G1 a G6 e responder às questões norteadoras da avaliação. A coleta deve seguir as amostras e os critérios estabelecidos nas fases anteriores, sem alterar fórmulas ou limiares.

## Organização dos registros

Os dados são organizados por métrica, seguindo os procedimentos e os recursos previstos na [Fase 3](../fase3/introducao.md). Cada registro identifica os casos avaliados e apresenta seus resultados e evidências.

### M1.1 — Adaptabilidade de hardware

#### Questão e critério de avaliação

A métrica avalia se as telas essenciais do aplicativo se adaptam a diferentes resoluções, densidades, orientações e escalas de fonte. Cada caso combina uma tela (`T01` a `T05`) com uma configuração (`C01` a `C04`), totalizando 5 × 4 = 20 casos.

Conforme se as informações e os controles necessários estão visíveis e utilizáveis, sem corte ou sobreposição que impeçam a tarefa. Pela amostra de 20 casos, a métrica produz a nota 4 com 20 casos conformes, a nota 3 com 18 ou 19, a nota 2 com 15 a 17 e a nota 1 com 14 ou menos.

| Tela | Conteúdo |
|---|---|
| `T01` | Resultado da busca por `L01` |
| `T02` | Horários de `L01` |
| `T03` | Mapa do itinerário de `L01` |
| `T04` | Detalhes de `P01` |
| `T05` | Favoritos com `L01` e `P01` |

| Config. | Resolução e densidade | Orientação | Fonte |
|---|---|---|---|
| `C01` | 640 × 1136 px, 320 dpi | Retrato | 100% |
| `C02` | 640 × 1136 px, 320 dpi | Paisagem | 100% |
| `C03` | 640 × 1136 px, 320 dpi | Retrato | 200% |
| `C04` | 1080 × 2400 px, 420 dpi | Retrato | 100% |

#### Procedimento de coleta

Foram avaliados 20 casos tela × configuração no aparelho `DISP-02`, com a configuração de cada caso aplicada por `adb` (resolução, densidade, escala de fonte e orientação). Em cada caso, a tela foi aberta, rolada e os controles principais foram acionados; em `T03`, o mapa foi movido e ampliado. Cada caso tem como evidência uma captura de tela. Ao final da bateria, o aparelho foi restaurado às configurações originais.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M1.1-01 | T01-C01 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T01-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C01_DISP-02.png) | Busca por `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-02 | T01-C02 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T01-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C02_DISP-02.png) | Busca por `L01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-03 | T01-C03 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T01-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C03_DISP-02.png) | Busca por `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-04 | T01-C04 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T01-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C04_DISP-02.png) | Busca por `L01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-05 | T02-C01 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T02-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C01_DISP-02.png) | Horários de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-06 | T02-C02 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T02-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C02_DISP-02.png) | Horários de `L01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-07 | T02-C03 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T02-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C03_DISP-02.png) | Horários de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-08 | T02-C04 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T02-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C04_DISP-02.png) | Horários de `L01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-09 | T03-C01 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T03-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C01_DISP-02.png) | Mapa do itinerário de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-10 | T03-C02 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T03-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C02_DISP-02.png) | Mapa do itinerário de `L01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-11 | T03-C03 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T03-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C03_DISP-02.png) | Mapa do itinerário de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-12 | T03-C04 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T03-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C04_DISP-02.png) | Mapa do itinerário de `L01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-13 | T04-C01 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T04-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C01_DISP-02.png) | Detalhes de `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-14 | T04-C02 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T04-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C02_DISP-02.png) | Detalhes de `P01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-15 | T04-C03 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T04-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C03_DISP-02.png) | Detalhes de `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-16 | T04-C04 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T04-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C04_DISP-02.png) | Detalhes de `P01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-17 | T05-C01 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T05-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C01_DISP-02.png) | Favoritos com `L01` e `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-18 | T05-C02 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T05-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C02_DISP-02.png) | Favoritos com `L01` e `P01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-19 | T05-C03 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T05-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C03_DISP-02.png) | Favoritos com `L01` e `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-20 | T05-C04 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M1.1_T05-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C04_DISP-02.png) | Favoritos com `L01` e `P01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |

<p class="legenda">Tabela 5. Registro da coleta da M1.1. Fonte: elaboração própria (2026).</p>

$$
M_{1.1} = \frac{C_c}{C_t} = \frac{C_c}{20}
$$

Em que $C_c$ corresponde aos casos tela × configuração sem corte, sobreposição ou bloqueio de interação, e $C_t = 20$ é o total de casos avaliados.

### M1.2 — Adaptabilidade de Sistema Operacional

#### Questão e critério de avaliação

A métrica avalia se o aplicativo funciona sem erro de compatibilidade impeditivo em diferentes versões do Android. Em cada versão, o app é instalado pela distribuição oficial e as tarefas essenciais `TE01` a `TE08` são executadas.

Conforme se todas as tarefas terminam sem erro de compatibilidade impeditivo. É **Não observável** a versão sem ambiente preparado ou com distribuição indisponível por motivo externo; instalação recusada por incompatibilidade comprovada é **Defeito**. Pela amostra planejada de 3 versões (Android 9, Android 13 e a versão do aparelho físico), a métrica produz a nota 4 com 3 versões conformes e a nota 1 com 2 ou menos, sem notas 2 e 3.

| Tarefa | Descrição | Resultado esperado |
|---|---|---|
| `TE01` | Buscar `L01` pelo código | Linha encontrada, com identificação e sentido corretos |
| `TE02` | Consultar horários de `L01` no dia de referência | Grade da linha, sentido e dia corretos |
| `TE03` | Abrir o itinerário de `L01` | Traçado e paradas do sentido selecionado |
| `TE04` | Consultar `P01` | Identificação da parada e linhas que a atendem |
| `TE05` | Acompanhar um veículo de `L02` em operação | Veículo identificável e posição no mapa |
| `TE06` | Salvar `L01` nos favoritos e reabrir a lista | `L01` presente na lista |
| `TE07` | Salvar `P01` nos favoritos e reabrir a lista | `P01` presente na lista |
| `TE08` | Remover `L01` dos favoritos e reabrir a lista | `L01` ausente, outros favoritos mantidos |

#### Procedimento de coleta

Em cada versão do Android avaliada, o aplicativo foi instalado pela distribuição oficial e as tarefas `TE01` a `TE08` foram executadas em sequência, com gravação de tela e "Mostrar toques" ativado. Cada versão corresponde a um caso e tem como evidência a gravação da execução.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M1.2-01 | Android 13 (API 33) | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2_SESSAO01_DISP-02.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M2_SESSAO01_DISP-02.mp4) | Execução de `TE01` a `TE08` na versão do aparelho físico |

<p class="legenda">Tabela 6. Registro da coleta da M1.2. Fonte: elaboração própria (2026).</p>

$$
M_{1.2} = \frac{V_c}{V_t} = \frac{V_c}{V_t}
$$

Em que $V_c$ corresponde às versões do Android em que as tarefas `TE01` a `TE08` terminaram sem erro de compatibilidade impeditivo, e $V_t$ é o total de versões testadas.

### M2.1 — Sucesso de Instalação

#### Questão e critério de avaliação

A métrica avalia se o aplicativo é instalado com sucesso a partir da loja oficial, na primeira tentativa, em ciclos de instalação limpa realizados em aparelho físico.

Conforme se a instalação conclui na primeira tentativa, sem erro. Abrir o app não é exigido, e tentativas posteriores não mudam um Defeito. Pela amostra de 10 ciclos, a métrica produz a nota 4 com 10 ciclos conformes, a nota 2 com 9 e a nota 1 com 8 ou menos, sem nota 3.

#### Procedimento de coleta

Foram realizados 10 ciclos de instalação limpa no aparelho `DISP-02`. Em cada ciclo, com o app ausente, ele foi instalado pela Google Play Store e a primeira tentativa foi observada. A evidência de cada ciclo é a captura da página da loja ao final da instalação ("Instalado" ou mensagem de erro).

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M2.1-01 | CICLO01 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO01_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-02 | CICLO02 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO02_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-03 | CICLO03 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO03_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-04 | CICLO04 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO04_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-05 | CICLO05 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO05_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO05_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-06 | CICLO06 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO06_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO06_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-07 | CICLO07 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO07_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO07_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-08 | CICLO08 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO08_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO08_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-09 | CICLO09 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO09_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO09_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-10 | CICLO10 | Vitor Bessa | A definir | DISP-02 · Android 13 · app 5.25.1(1149) | A definir | A definir | [M2.1_CICLO10_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO10_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |

<p class="legenda">Tabela 7. Registro da coleta da M2.1. Fonte: elaboração própria (2026).</p>

$$
M_{2.1} = \frac{I_c}{I_t} = \frac{I_c}{10}
$$

Em que $I_c$ corresponde às instalações concluídas na primeira tentativa, sem erro, e $I_t = 10$ é o total de ciclos executados.

### M4.1 — Perda de Conexão

#### Questão e critério de avaliação

A questão avaliada é **Q4.1**: o aplicativo mantém-se utilizável durante a indisponibilidade temporária da rede e retoma normalmente as consultas após a reconexão? A hipótese **H4.1** prevê **M4.1 ≥ 0,70**, isto é, pelo menos 7 ensaios conformes em uma amostra de 10.

Conforme se o app continua aberto e responsivo, informa a indisponibilidade em até 5 s e retoma a consulta em até 30 s depois da reativação dos dados móveis e do Wi-Fi.

#### Procedimento de coleta

Foram realizados 10 ensaios de interrupção de rede no aparelho `DISP-01`, com desconexão dos dados móveis e do Wi-Fi e consulta ao aplicativo. A reconexão foi seguida de nova consulta para verificar a retomada do serviço.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M4.1-01 | ENS01 | Pedro Ramos | 18/11/2026 - 20:41 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E01_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E01_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-02 | ENS02 | Pedro Ramos | 18/11/2026 - 20:41 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E02_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E02_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-03 | ENS03 | Pedro Ramos | 18/11/2026 - 20:42 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E03_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E03_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-04 | ENS04 | Pedro Ramos | 18/11/2026 - 20:45 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E04_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E04_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-05 | ENS05 | Pedro Ramos | 18/11/2026 - 20:46 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E05_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E05_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-06 | ENS06 | Pedro Ramos | 18/11/2026 - 21:11 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E06_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E06_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-07 | ENS07 | Pedro Ramos | 18/11/2026 - 21:11 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E07_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E07_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-08 | ENS08 | Pedro Ramos | 18/11/2026 - 21:12 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E08_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E08_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-09 | ENS09 | Pedro Ramos | 18/11/2026 - 21:13 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E09_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E09_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-10 | ENS10 | Pedro Ramos | 18/11/2026 - 21:15 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E10_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E10_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |

<p class="legenda">Tabela 1. Registro da coleta da M4.1. Fonte: elaboração própria (2026).</p>

$$
M_{4.1} = \frac{E_c}{E_t} = \frac{10}{10} = 1{,}00 \ (100\%)
$$

Em que $E_c = 10$ corresponde aos ensaios que atenderam aos critérios de aviso e retomada, e $E_t = 10$ é o total de ensaios válidos.

### M4.2 — Perda de Localização

#### Questão e critério de avaliação

A questão avaliada é **Q4.2**: o sistema reage apropriadamente à ausência ou desativação do sinal de GPS? A hipótese **H4.2** prevê **M4.2 ≥ 0,85**, isto é, pelo menos 9 ensaios conformes em uma amostra de 10.

Conforme se o app continua aberto e responsivo, informa a indisponibilidade da localização em até 5 s, mantém disponíveis as funções independentes da posição — `TE01` (buscar `L01` pelo código) e `TE04` (consultar `P01`) — e retoma a posição no mapa em até 30 s após a reativação do serviço de localização.

#### Procedimento de coleta

Foram realizados 10 ensaios de desativação do serviço de localização no aparelho `DISP-01`, mantendo o aparelho com o app aberto. Em cada ensaio, a localização foi desativada. Após a reativação da localização, foi observado o retorno da posição no mapa.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M4.2-01 | ENS01 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E01_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E08_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-02 | ENS02 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E02_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E02_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-03 | ENS03 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E03_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E03_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-04 | ENS04 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E04_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E04_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-05 | ENS05 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E05_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E05_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-06 | ENS06 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E06_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E06_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-07 | ENS07 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E07_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E07_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-08 | ENS08 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E08_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E08_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-09 | ENS09 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E09_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E09_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-10 | ENS10 | Pedro Ramos | 19/11/2026 - 18:24 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E10_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2_E10_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |

<p class="legenda">Tabela 2. Registro da coleta da M4.2. Fonte: elaboração própria (2026).</p>

$$
M_{4.2} = \frac{G_c}{G_t} = \frac{10}{10} = 1{,}00 \ (100\%)
$$

Em que $G_c = 10$ corresponde aos ensaios que atenderam aos critérios de aviso, continuidade das funções independentes da posição e retomada da localização, e $G_t = 10$ é o total de ensaios válidos.

### M5.2 — Posições no mapa

#### Questão e critério de avaliação

A questão avaliada é **Q5.2**: a posição das paradas no mapa coincide com a posição espacial real? A hipótese **H5.2** prevê **M5.2 ≥ 0,85**.

Considera-se conforme cada parada cuja distância entre a posição exibida no aplicativo e a referência independentemente obtida em campo seja menor ou igual à tolerância espacial fixada de $\varepsilon = 30$ m. Pela amostra de cinco paradas, a métrica só produz a nota 4 com cinco casos conformes e a nota 2 com quatro; com três ou menos casos conformes, a nota é 1.

#### Procedimento de coleta

Foram obtidas cinco capturas do mapa no aparelho `DISP-01`, identificadas como `P01` a `P05`, em 20/11/2026. Os arquivos mostram o marcador do aplicativo, o indicador da posição do usuário e a região de precisão exibida pelo mapa. A avaliação ficou limitada a paradas; veículos não foram incluídos, conforme a restrição registrada na Fase 3.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M5.2-01 | P01 | A definir | 20/11/2026 - aproximadamente 10:42 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 4 metros | [M5.2-P01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P01.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-02 | P02 | A definir | 20/11/2026 - aproximadamente 10:48 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 29 metros | [M5.2-P02.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P02.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-03 | P03 | A definir | 20/11/2026 - aproximadamente 10:51 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 4,5 metros | [M5.2-P03.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P03.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-04 | P04 | A definir | 20/11/2026 - aproximadamente 10:52 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 3 metros | [M5.2-P04.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P04.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-05 | P05 | A definir | 20/11/2026 - aproximadamente 10:53 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 5 metros | [M5.2-P05.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P05.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |

<p class="legenda">Tabela 3. Registro da coleta da M5.2. Fonte: elaboração própria (2026).</p>

As distâncias $d_i$ foram obtidas por medição direta das capturas. Esse método não exige calcular coordenadas WGS84 nem aplicar a fórmula de haversine: a distância visual foi convertida em metros pela escala do nível de zoom utilizado. Os cinco valores medidos são menores ou iguais à tolerância $\varepsilon = 30$ m, portanto os cinco casos são conformes.

$$
M_{5.2} = \frac{P_s}{P_t} = \frac{5}{5} = 1{,}00 \ (100\%)
$$

Em que $P_s = 5$ corresponde às paradas cuja distância $d_i$ ficou dentro da tolerância e $P_t = 5$ é o total de paradas válidas.
### M6.2 — Completude do Banco

#### Questão e critério de avaliação

A questão avaliada é **Q6.2**: a base de linhas e itinerários do aplicativo está plenamente sincronizada com a Semob-DF? A hipótese **H6.2** prevê **M6.2 ≥ 0,95**, isto é, no máximo um item ausente ou divergente em uma amostra de 20. A classificação considera correspondente apenas o item encontrado no app com código, sentido e itinerário compatíveis com a fonte oficial.

#### Procedimento de coleta

Foram auditados 20 itens do Relatório de Linhas da Semob-DF, conforme a amostra e os procedimentos definidos na [Fase 3](../fase3/2-procedimentos.md#m62-completude-do-banco-lab). Para cada item, o código foi pesquisado no aplicativo e comparado com a referência oficial. O resultado de cada verificação, o ambiente e a evidência estão registrados na tabela.

Auditoria dos 20 itens sorteados do Relatório de Linhas da Semob-DF (referência 17/11/2026) contra o catálogo do aplicativo DF no Ponto. Estados possíveis: Conforme, Defeito, Não observável e Pendente.

| ID | Caso | Linha sorteada (bacia · código) | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|
| M6.2-01 | A01 | 01 · 0.110 | Pedro Ramos | 17/19/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A01_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A01_DISP01.jpg) | Circular |
| M6.2-02 | A02 | 01 · 0.504 | Pedro Ramos | 17/19/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A02_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A02_DISP01.jpg) | Circular |
| M6.2-03 | A03 | 01 · 062.1 | Pedro Ramos | 17/19/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A03_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A03_DISP01.jpg) | Circular |
| M6.2-04 | A04 | 01 · 620.1 | Pedro Ramos | 17/19/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A04_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A04_DISP01.jpg) | Duplo Sentido |
| M6.2-05 | A05 | 02 · 0.102 | Pedro Ramos | 17/19/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A05_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A05_DISP01.jpg) | Circular |
| M6.2-06 | A06 | 02 · 0.761 | Pedro Ramos | 17/19/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A06_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A06_DISP01.jpg) | Duplo Sentido |
| M6.2-07 | A07 | 02 · 180.2 | Pedro Ramos | 17/19/2026 - 19:57 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A07_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A07_DISP01.jpg) | Duplo Sentido |
| M6.2-08 | A08 | 02 · 2201  | Pedro Ramos | 17/19/2026 - 19:57 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A08_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A08_DISP01.jpg) | Duplo Sentido |
| M6.2-09 | A09 | 03 · 0.082 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A09_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A09_DISP01.jpg) | Circular |
| M6.2-10 | A10 | 03 · 0.809 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A10_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A10_DISP01.jpg) | Duplo Sentido |
| M6.2-11 | A11 | 03 · 119.0 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A11_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A11_DISP01.jpg) | Circular |
| M6.2-12 | A12 | 03 · 870.1 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A12_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A12_DISP01.jpg) | Circular |
| M6.2-13 | A13 | 04 · 0.008 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A13_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A13_DISP01.jpg) | Circular |
| M6.2-14 | A14 | 04 · 0.336 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A14_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A14_DISP01.jpg) | Duplo Sentido |
| M6.2-15 | A15 | 04 · 154.2 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A15_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A15_DISP01.jpg) | Duplo Sentido |
| M6.2-16 | A16 | 04 · 933.1 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A16_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A16_DISP01.jpg) | Circular |
| M6.2-17 | A17 | 05 · 0.005 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A17_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A17_DISP01.jpg) | Circular |
| M6.2-18 | A18 | 05 · 0.400 | Pedro Ramos | 17/19/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A18_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A18_DISP01.jpg) | Duplo Sentido |
| M6.2-19 | A19 | 05 · 0.808 | Pedro Ramos | 17/19/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A19_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A19_DISP01.jpg) | Duplo Sentido |
| M6.2-20 | A20 | 05 · 158.6 | Pedro Ramos | 17/19/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A20_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A20_DISP01.jpg) | Duplo Sentido |

<p class="legenda">Tabela 4. Registro da coleta da M6.2. Fonte: elaboração própria (2026).</p>

$$
M_{6.2} = \frac{L_c}{L_t} = \frac{20}{20} = 1{,}00 \ (100\%)
$$

Em que $L_c = 20$ corresponde aos itens da amostra encontrados no app com código, sentido e itinerário correspondentes, e $L_t = 20$ é o total de itens auditados.

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 1.0 | Inclusão da tabela de coleta, das evidências e do cálculo da métrica M6.2. | [Pedro Ramos](https://github.com/PedroRSR) | 17/11/2026 | A definir | — |
| 1.1 | Inclusão da seção de coleta da métrica M4.1, com registros dos ensaios, evidências e cálculo. | [Pedro Ramos](https://github.com/PedroRSR) | 19/11/2026 | A definir | — |
| 1.2 | Atualização dos registros de coleta das métricas M2.1, M2.2 e M6.1. | [Bessa](https://github.com/bessazs) | 19/11/2026 | A definir | — |
| 1.3 | Inclusão da seção de coleta da métrica M4.2, com registros dos ensaios, evidências e critérios de avaliação. | [Pedro Ramos](https://github.com/PedroRSR) | 19/11/2026 | A definir | — |
| 1.4 | Inclusão da seção de coleta da métrica M5.2, com os casos avaliados e suas evidências. | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 | A definir | — |
| 1.5 | Inclusão da seções M1.1 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 | A definir | — |