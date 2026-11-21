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
| M1.1-01 | T01-C01 | Vitor Bessa | 19/11/2026 - 10:43 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T01-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C01_DISP-02.png) | Busca por `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-02 | T01-C02 | Vitor Bessa | 19/11/2026 - 10:47 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T01-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C02_DISP-02.png) | Busca por `L01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-03 | T01-C03 | Vitor Bessa | 19/11/2026 - 10:51 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Sim | [M1.1_T01-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C03_DISP-02.png) | Busca por `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-04 | T01-C04 | Vitor Bessa | 19/11/2026 - 10:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T01-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C04_DISP-02.png) | Busca por `L01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-05 | T02-C01 | Vitor Bessa | 19/11/2026 - 10:43 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T02-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C01_DISP-02.png) | Horários de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-06 | T02-C02 | Vitor Bessa | 19/11/2026 - 10:48 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T02-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C02_DISP-02.png) | Horários de `L01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-07 | T02-C03 | Vitor Bessa | 19/11/2026 - 10:51 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T02-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C03_DISP-02.png) | Horários de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-08 | T02-C04 | Vitor Bessa | 19/11/2026 - 10:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T02-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C04_DISP-02.png) | Horários de `L01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-09 | T03-C01 | Vitor Bessa | 19/11/2026 - 10:45 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T03-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C01_DISP-02.png) | Mapa do itinerário de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-10 | T03-C02 | Vitor Bessa | 19/11/2026 - 10:48 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T03-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C02_DISP-02.png) | Mapa do itinerário de `L01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-11 | T03-C03 | Vitor Bessa | 19/11/2026 - 10:52 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T03-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C03_DISP-02.png) | Mapa do itinerário de `L01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-12 | T03-C04 | Vitor Bessa | 19/11/2026 - 10:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T03-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C04_DISP-02.png) | Mapa do itinerário de `L01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-13 | T04-C01 | Vitor Bessa | 19/11/2026 - 10:45 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T04-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C01_DISP-02.png) | Detalhes de `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-14 | T04-C02 | Vitor Bessa | 19/11/2026 - 10:49 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T04-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C02_DISP-02.png) | Detalhes de `P01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-15 | T04-C03 | Vitor Bessa | 19/11/2026 - 10:52 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Sim | [M1.1_T04-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C03_DISP-02.png) | Detalhes de `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-16 | T04-C04 | Vitor Bessa | 19/11/2026 - 10:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T04-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C04_DISP-02.png) | Detalhes de `P01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |
| M1.1-17 | T05-C01 | Vitor Bessa | 19/11/2026 - 10:46 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T05-C01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C01_DISP-02.png) | Favoritos com `L01` e `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 100% |
| M1.1-18 | T05-C02 | Vitor Bessa | 19/11/2026 - 10:50 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T05-C02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C02_DISP-02.png) | Favoritos com `L01` e `P01`; 640 × 1136 px, 320 dpi; paisagem; fonte 100% |
| M1.1-19 | T05-C03 | Vitor Bessa | 19/11/2026 - 10:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T05-C03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C03_DISP-02.png) | Favoritos com `L01` e `P01`; 640 × 1136 px, 320 dpi; retrato; fonte 200% |
| M1.1-20 | T05-C04 | Vitor Bessa | 19/11/2026 - 10:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M1.1_T05-C04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C04_DISP-02.png) | Favoritos com `L01` e `P01`; 1080 × 2400 px, 420 dpi; retrato; fonte 100% |

<p class="legenda">Tabela 1. Registro da coleta da M1.1. Fonte: elaboração própria (2026).</p>

$$
M_{1.1} = \frac{T_s}{T_t} = \frac{18}{20} = 0{,}90
$$

Em que $T_s = 18$ corresponde ao número de casos tela × configuração aprovados, sem corte, sobreposição ou distorção que impeça a tarefa, e $T_t = 20$ é o total de casos avaliados.

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
| M1.2-01 | Android 13 (API 33) | Vitor Bessa | 19/11/2026 - 20:31 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2_SESSAO01_DISP-02.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M2_SESSAO01_DISP-02.mp4) | Execução de `TE01` a `TE08` na versão do aparelho físico |

<p class="legenda">Tabela 2. Registro da coleta da M1.2. Fonte: elaboração própria (2026).</p>

$$
M_{1.2} = \frac{O_s}{O_t} = \frac{1}{1} = 1{,}00
$$

Em que $O_s = 1$ corresponde ao número de versões do Android aprovadas em todas as tarefas `TE01` a `TE08` sem erro de compatibilidade impeditivo, e $O_t = 1$ é o total de versões efetivamente testadas.

### M2.1 — Sucesso de Instalação

#### Questão e critério de avaliação

A métrica avalia se o aplicativo é instalado com sucesso a partir da loja oficial, na primeira tentativa, em ciclos de instalação limpa realizados em aparelho físico.

Conforme se a instalação conclui na primeira tentativa, sem erro. Abrir o app não é exigido, e tentativas posteriores não mudam um Defeito. Pela amostra de 10 ciclos, a métrica produz a nota 4 com 10 ciclos conformes, a nota 2 com 9 e a nota 1 com 8 ou menos, sem nota 3.

#### Procedimento de coleta

Foram realizados 10 ciclos de instalação limpa no aparelho `DISP-02`. Em cada ciclo, com o app ausente, ele foi instalado pela Google Play Store e a primeira tentativa foi observada. A evidência de cada ciclo é a captura da página da loja ao final da instalação ("Instalado" ou mensagem de erro).

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M2.1-01 | CICLO01 | Vitor Bessa | 20/11/2026 - 16:41 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | A definir | [M2.1_CICLO01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO01_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-02 | CICLO02 | Vitor Bessa | 20/11/2026 - 16:47 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO02_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-03 | CICLO03 | Vitor Bessa | 20/11/2026 - 16:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO03_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-04 | CICLO04 | Vitor Bessa | 20/11/2026 - 16:59 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO04_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-05 | CICLO05 | Vitor Bessa | 20/11/2026 - 17:03 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO05_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO05_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-06 | CICLO06 | Vitor Bessa | 20/11/2026 - 17:07 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO06_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO06_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-07 | CICLO07 | Vitor Bessa | 20/11/2026 - 17:12 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO07_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO07_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-08 | CICLO08 | Vitor Bessa | 20/11/2026 - 17:16 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO08_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO08_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-09 | CICLO09 | Vitor Bessa | 20/11/2026 - 17:20 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO09_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO09_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-10 | CICLO10 | Vitor Bessa | 20/11/2026 - 17:25 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO10_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO10_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |

<p class="legenda">Tabela 3. Registro da coleta da M2.1. Fonte: elaboração própria (2026).</p>

$$
M_{2.1} = \frac{I_s}{I_t} = \frac{10}{10} = 1{,}00
$$

Em que $I_s = 10$ corresponde ao número de ciclos de instalação limpa concluídos na primeira tentativa sem erro, e $I_t = 10$ é o total de ciclos executados.

### M2.2 — Resíduo pós-desinstalação

#### Questão e critério de avaliação

A métrica avalia se a desinstalação do aplicativo remove os arquivos e pastas atribuíveis a ele nos locais acessíveis do armazenamento. Os locais inspecionados são `Android/data/<pacote>`, `Android/obb/<pacote>`, `Android/media`, `Download`, `Documents` e pastas com o nome do app.

Há **Defeito** se restar arquivo ou pasta que se possa atribuir ao app, por nome, conteúdo ou vínculo com o pacote; arquivos criados pelo avaliador não contam. O ciclo é **Não observável** se um local obrigatório estiver inacessível. O resultado vale só para os locais observáveis, pois o armazenamento privado do app não é inspecionado. Pela amostra de 10 ciclos, a métrica produz a nota 4 com 10 ciclos conformes, a nota 2 com 9 e a nota 1 com 8 ou menos, sem nota 3.

#### Procedimento de coleta

Foram realizados 10 ciclos de instalação, uso e remoção no aparelho `DISP-02`, os mesmos da M2.1. Em cada ciclo, os locais inspecionados foram listados por `adb` antes da instalação. Depois, o app foi instalado e usado (busca, horários, mapa e favoritos) e desinstalado pelo método padrão do sistema, repetindo-se a listagem. As duas listagens foram comparadas com `diff`. A evidência de cada ciclo são as listagens `antes` e `depois` e o resultado do `diff`.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M2.2-01 | CICLO01 | Vitor Bessa | 19/11/2026 - 16:45 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO01_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO01_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO01_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-02 | CICLO02 | Vitor Bessa | 19/11/2026 - 16:52 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO02_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO02_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO02_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-03 | CICLO03 | Vitor Bessa | 19/11/2026 - 16:57 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO03_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO03_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO03_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-04 | CICLO04 | Vitor Bessa | 19/11/2026 - 17:01 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO04_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO04_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO04_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-05 | CICLO05 | Vitor Bessa | 19/11/2026 - 17:05 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO05_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO05_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO05_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-06 | CICLO06 | Vitor Bessa | 19/11/2026 - 17:10 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO06_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO06_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO06_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-07 | CICLO07 | Vitor Bessa | 19/11/2026 - 17:14 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO07_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO07_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO07_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-08 | CICLO08 | Vitor Bessa | 19/11/2026 - 17:18 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO08_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO08_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO08_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-09 | CICLO09 | Vitor Bessa | 19/11/2026 - 17:24 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO09_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO09_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO09_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-10 | CICLO10 | Vitor Bessa | 19/11/2026 - 17:28 | DISP-02 · Android 13 · app não instalado | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO10_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO10_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO10_DISP-02_diff.txt) | Nenhum residual atribuível ao app |

<p class="legenda">Tabela 4. Registro da coleta da M2.2. Fonte: elaboração própria (2026).</p>

$$
M_{2.2} = 1 - \frac{D_r}{D_t} = 1 - \frac{0}{10} = 1{,}00
$$

Em que $D_r = 0$ corresponde ao número de desinstalações com pelo menos um arquivo ou pasta residual atribuível ao app, e $D_t = 10$ é o total de desinstalações com inspeção válida.

### M3.1 e M3.2 — Sessões sem crashes e sem congelamentos

#### Questão e critério de avaliação

As duas métricas usam as mesmas 20 sessões, e cada sessão afetada conta uma vez por métrica. A **M3.1** avalia se a sessão ocorre sem *crash*, isto é, sem encerramento inesperado do app. A **M3.2** avalia se a sessão ocorre sem congelamento, isto é, sem ausência de resposta da interface a uma ação por mais de 5 s, medida em gravação com marcação de tempo. Carregamento com interface responsiva não conta como congelamento.

Pela amostra de 20 sessões, cada métrica produz a nota 4 com 20 sessões conformes, a nota 3 com 19, a nota 2 com 18 e a nota 1 com 17 ou menos. Se houver *crash*, a sessão conta como afetada e uma nova sessão, com novo ID, continua a bateria.

#### Procedimento de coleta

Foram realizadas 20 sessões de 2 min 30 s (50 min no total) no aparelho `DISP-02`, sem indução de queda de rede nem de localização. Cada sessão dedicou 30 s a cada atividade, nesta ordem: busca de linha, horários, itinerário no mapa, parada e veículo, favoritos. A tela foi gravada com "Mostrar toques" ativado e o log foi registrado com `adb logcat`, filtrando `FATAL EXCEPTION` e `AndroidRuntime`. A duração da sessão foi reduzida de 5 min para 2 min 30 s para caber na janela de coleta, o que diminui o tempo de exposição e pode favorecer o resultado; os valores são indicativos para a janela observada.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado M3.1 (crash) | Estado M3.2 (congelamento) | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|
| M3-01 | SESSAO01 | Vitor Bessa | 20/11/2026 - 15:21 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 15:18:52–15:21:22 | [M3_SESSAO01_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO01_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-02 | SESSAO02 | Vitor Bessa | 20/11/2026 - 15:25 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 15:23:06–15:25:36 | [M3_SESSAO02_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO02_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-03 | SESSAO03 | Vitor Bessa | 20/11/2026 - 15:31 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 15:28:26–15:30:57 | [M3_SESSAO03_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO03_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-04 | SESSAO04 | Vitor Bessa | 20/11/2026 - 15:36 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 15:32:38–15:35:09 | [M3_SESSAO04_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO04_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-05 | SESSAO05 | Vitor Bessa | 20/11/2026 - 15:59 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 15:56:42–15:59:12 | [M3_SESSAO05_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO05_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-06 | SESSAO06 | Vitor Bessa | 20/11/2026 - 16:09 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 16:06:42–16:09:12 | [M3_SESSAO06_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO06_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-07 | SESSAO07 | Vitor Bessa | 20/11/2026 - 16:20 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 16:17:12–16:19:42 | [M3_SESSAO07_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO07_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-08 | SESSAO08 | Vitor Bessa | 20/11/2026 - 16:29 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 16:26:55–16:29:25 | [M3_SESSAO08_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO08_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-09 | SESSAO09 | Vitor Bessa | 20/11/2026 - 16:42 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 16:39:38–16:42:08 | [M3_SESSAO09_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO09_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-10 | SESSAO10 | Vitor Bessa | 20/11/2026 - 16:45 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 16:42:22–16:44:52 | [M3_SESSAO10_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO10_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-11 | SESSAO11 | Vitor Bessa | 20/11/2026 - 16:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 16:50:21–16:52:51 | [M3_SESSAO11_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO11_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-12 | SESSAO12 | Vitor Bessa | 20/11/2026 - 17:08 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:06:11–17:08:41 | [M3_SESSAO12_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO12_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-13 | SESSAO13 | Vitor Bessa | 20/11/2026 - 17:13 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:11:09–17:13:40 | [M3_SESSAO13_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO13_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-14 | SESSAO14 | Vitor Bessa | 20/11/2026 - 17:20 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:17:45–17:20:15 | [M3_SESSAO14_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO14_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-15 | SESSAO15 | Vitor Bessa | 20/11/2026 - 17:23 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:20:48–17:23:18 | [M3_SESSAO15_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO15_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-16 | SESSAO16 | Vitor Bessa | 20/11/2026 - 17:27 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:24:38–17:27:08 | [M3_SESSAO16_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO16_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-17 | SESSAO17 | Vitor Bessa | 20/11/2026 - 17:37 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:34:34–17:37:05 | [M3_SESSAO17_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO17_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-18 | SESSAO18 | Vitor Bessa | 20/11/2026 - 17:41 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:39:01–17:41:31 | [M3_SESSAO18_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO18_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-19 | SESSAO19 | Vitor Bessa | 20/11/2026 - 17:58 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:55:31–17:58:01 | [M3_SESSAO19_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO19_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |
| M3-20 | SESSAO20 | Vitor Bessa | 20/11/2026 - 18:00 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Conforme | 17:58:15–18:00:45 | [M3_SESSAO20_DISP-02_logcat.txt](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M3/M3_SESSAO20_DISP-02_logcat.txt) | Sessão de 2 min 30 s; 5 atividades de 30 s |

<p class="legenda">Tabela 5. Registro da coleta da M3.1 e da M3.2. Fonte: elaboração própria (2026).</p>

$$
M_{3.1} = 1 - \frac{S_c}{S_t} = 1 - \frac{0}{20} = 1{,}00
\qquad
M_{3.2} = 1 - \frac{S_a}{S_t} = 1 - \frac{0}{20} = 1{,}00
$$

Em que $S_c = 0$ corresponde às sessões com pelo menos um encerramento inesperado, $S_a = 0$ às sessões com pelo menos um congelamento da interface superior a 5 s, e $S_t = 20$ é o total de sessões avaliadas.

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

<p class="legenda">Tabela 6. Registro da coleta da M4.1. Fonte: elaboração própria (2026).</p>

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

<p class="legenda">Tabela 7. Registro da coleta da M4.2. Fonte: elaboração própria (2026).</p>

$$
M_{4.2} = \frac{G_c}{G_t} = \frac{10}{10} = 1{,}00 \ (100\%)
$$

Em que $G_c = 10$ corresponde aos ensaios que atenderam aos critérios de aviso, continuidade das funções independentes da posição e retomada da localização, e $G_t = 10$ é o total de ensaios válidos.

### M5.1 — Precisão do tempo de chegada

#### Questão e critério de avaliação

A métrica avalia a precisão da previsão de chegada exibida pelo aplicativo, comparando a primeira previsão de chegada de um veículo à parada com a chegada real observada em campo. O resultado é o erro absoluto mediano, em minutos, entre previsão e chegada.

O erro de cada par é calculado em minutos, em valor absoluto. Com número par de pares válidos, a mediana é a média dos dois valores centrais. Também se informam o menor e o maior erro. Previsão ausente, identificação insuficiente e chegada não observada são registradas à parte e não entram como erro zero.

#### Procedimento de coleta

Foram observados 10 eventos de chegada, em dois blocos de 5, com as linhas `L01` e `L02`, no aparelho `DISP-01`. Em cada janela de observação, foram usados os primeiros eventos elegíveis, sem escolha pelo erro. No início da observação de cada evento, foram capturadas a primeira previsão de chegada à parada e o horário. A chegada foi registrada quando a frente do veículo alcançou o ponto de referência da parada, e o pareamento foi feito por linha, sentido, parada e veículo ou viagem identificável. Os relógios foram sincronizados, com data completa e fuso `America/Sao_Paulo`; quando o app mostrou tempo restante, ele foi somado ao instante da captura. A evidência de cada evento é a captura da previsão com o horário e a foto da chegada, sem enquadrar rostos.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M5.1-01 | E01 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 1; linha, sentido e parada: A definir |
| M5.1-02 | E02 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 1; linha, sentido e parada: A definir |
| M5.1-03 | E03 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 1; linha, sentido e parada: A definir |
| M5.1-04 | E04 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 1; linha, sentido e parada: A definir |
| M5.1-05 | E05 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 1; linha, sentido e parada: A definir |
| M5.1-06 | E06 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 2; linha, sentido e parada: A definir |
| M5.1-07 | E07 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 2; linha, sentido e parada: A definir |
| M5.1-08 | E08 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 2; linha, sentido e parada: A definir |
| M5.1-09 | E09 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 2; linha, sentido e parada: A definir |
| M5.1-10 | E10 | Vitor Bessa | A definir | DISP-01 · Android 13 · app 5.25.1(1149) | A definir | A definir | A definir | Bloco 2; linha, sentido e parada: A definir |

<p class="legenda">Tabela 8. Registro da coleta da M5.1. Fonte: elaboração própria (2026).</p>

$$
M_{5.1} = \operatorname{mediana}\left(\left|t_{c,i} - t_{p,i}\right|\right), \quad i = 1, \dots, n
$$

Em que $t_{p,i}$ é o instante da primeira previsão de chegada do evento $i$, $t_{c,i}$ é o instante da chegada observada e $n$ é o número de pares válidos (no máximo 10).

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

<p class="legenda">Tabela 9. Registro da coleta da M5.2. Fonte: elaboração própria (2026).</p>

As distâncias $d_i$ foram obtidas por medição direta das capturas. Esse método não exige calcular coordenadas WGS84 nem aplicar a fórmula de haversine: a distância visual foi convertida em metros pela escala do nível de zoom utilizado. Os cinco valores medidos são menores ou iguais à tolerância $\varepsilon = 30$ m, portanto os cinco casos são conformes.

$$
M_{5.2} = \frac{P_s}{P_t} = \frac{5}{5} = 1{,}00 \ (100\%)
$$

Em que $P_s = 5$ corresponde às paradas cuja distância $d_i$ ficou dentro da tolerância e $P_t = 5$ é o total de paradas válidas.

### M6.1 — Cobertura de Tarefas Essenciais

#### Questão e critério de avaliação

A métrica avalia se o aplicativo permite concluir as tarefas essenciais do catálogo (`TE01` a `TE08`), com rede e localização ativas. Conforme se a tarefa atinge o resultado esperado. Em `TE05`, se não for possível confirmar a operação de `L02`, o caso é **Não observável**.

Pela amostra de 8 tarefas, a métrica produz a nota 4 com 8 tarefas conformes, a nota 2 com 7 e a nota 1 com 6 ou menos, sem nota 3.

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

As 8 tarefas `TE01` a `TE08` foram executadas uma vez cada, no aparelho `DISP-02`, com rede e localização ativas. Cada tarefa foi preparada de forma independente, e o resultado foi comparado com o resultado esperado do catálogo. A evidência de cada tarefa é a captura de tela do resultado.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M6.1-01 | TE01 | Vitor Bessa | 19/11/2026 - 15:57 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE01_DISP-02.png) | Buscar `L01` pelo código |
| M6.1-02 | TE02 | Vitor Bessa | 19/11/2026 - 15:58 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE02_DISP-02.png) | Consultar horários de `L01` no dia de referência |
| M6.1-03 | TE03 | Vitor Bessa | 19/11/2026 - 15:59 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE03_DISP-02.png) | Abrir o itinerário de `L01` |
| M6.1-04 | TE04 | Vitor Bessa | 19/11/2026 - 16:02 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE04_DISP-02.png) | Consultar `P01` |
| M6.1-05 | TE05 | Vitor Bessa | 19/11/2026 - 16:02 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE05_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE05_DISP-02.png) | Acompanhar um veículo de `L02` em operação |
| M6.1-06 | TE06 | Vitor Bessa | 19/11/2026 - 16:04 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE06_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE06_DISP-02.png) | Salvar `L01` nos favoritos e reabrir a lista |
| M6.1-07 | TE07 | Vitor Bessa | 19/11/2026 - 16:05 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE07_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE07_DISP-02.png) | Salvar `P01` nos favoritos e reabrir a lista |
| M6.1-08 | TE08 | Vitor Bessa | 19/11/2026 - 16:05 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.1_TE08_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.1/M6.1_TE08_DISP-02.png) | Remover `L01` dos favoritos e reabrir a lista |

<p class="legenda">Tabela 10. Registro da coleta da M6.1. Fonte: elaboração própria (2026).</p>

$$
M_{6.1} = 1 - \frac{F_f}{F_t} = 1 - \frac{0}{8} = 1{,}00
$$

Em que $F_f = 0$ corresponde ao número de tarefas do catálogo essencial que falharam na execução, e $F_t = 8$ é o total de tarefas avaliadas.

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

<p class="legenda">Tabela 11. Registro da coleta da M6.2. Fonte: elaboração própria (2026).</p>

$$
M_{6.2} = \frac{L_c}{L_t} = \frac{20}{20} = 1{,}00 \ (100\%)
$$

Em que $L_c = 20$ corresponde aos itens da amostra encontrados no app com código, sentido e itinerário correspondentes, e $L_t = 20$ é o total de itens auditados.

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 1.0 | Inclusão da tabela de coleta, das evidências e do cálculo da métrica M6.2. | [Pedro Ramos](https://github.com/PedroRSR) | 17/11/2026 | A definir | — |
| 1.1 | Inclusão da seção de coleta da métrica M4.1, com registros dos ensaios, evidências e cálculo. | [Pedro Ramos](https://github.com/PedroRSR) | 19/11/2026 | A definir | — |
| 1.2 | Atualização dos registros de coleta das métricas M2.1, M2.2 e M6.1. | [Bessa](https://github.com/bessazs) | 19/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |
| 1.3 | Inclusão da seção de coleta da métrica M4.2, com registros dos ensaios, evidências e critérios de avaliação. | [Pedro Ramos](https://github.com/PedroRSR) | 19/11/2026 | A definir | — |
| 1.4 | Inclusão da seção de coleta da métrica M5.2, com os casos avaliados e suas evidências. | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 | A definir | — |
| 1.5 | Inclusão das seções M1.1, M1.2, M2.1, M2.2, M3.1, M3.2, M5.1 E M6.1 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 | A definir | — |