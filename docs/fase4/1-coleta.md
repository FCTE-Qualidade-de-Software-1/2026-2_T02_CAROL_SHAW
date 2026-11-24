# Fase 4 — Coleta de Dados

## Objetivo

Reunir os registros da execução dos procedimentos definidos na Fase 3 para as 12 métricas da avaliação (**M1.1 a M6.2**). A coleta documenta as observações, os resultados, os ambientes e as evidências de cada caso, fornecendo os dados necessários para calcular as métricas, julgar os objetivos G1 a G6 e responder às questões norteadoras da avaliação. A coleta deve seguir as amostras e os critérios estabelecidos nas fases anteriores, sem alterar fórmulas ou limiares.

## Organização dos registros

Os dados de coleta são organizados por métrica, seguindo os procedimentos, parâmetros e recursos operacionais previstos na [Fase 3](../fase3/introducao.md). 

Para assegurar a rastreabilidade e a auditabilidade exigidas pelo processo (atividade C11), todos os registros da avaliação estruturam-se segundo a seguinte padronização de campos:

- **ID:** Identificador unívoco do ensaio ou observação (ex: `M1.1-01`).
- **Caso:** Identificador do cenário ou caso de teste associado (ex: `T01-C01`, `CHEGADA01`).
- **Avaliador:** Nome do membro da equipe responsável pela condução e registro do ensaio.
- **Data/hora:** Timestamp da execução da coleta em campo ou em ambiente controlado.
- **Ambiente:** Dispositivo físico ou Máquina Virtual (AVD) utilizada, com versão do SO e resolução.
- **Estado:** Classificação do resultado frente ao critério de aceitação (`Conforme`, `Não Conforme` ou `Excluído`).
- **Valor medido:** Medida quantitativa ou qualitativa observada (tempo em segundos, distância em metros, booleanos, contagens).
- **Evidência:** Nome do artefato comprobatório (captura de tela ou gravação de vídeo mantida em repositório).
- **Observações:** Notas contextuais, desvios operacionais ou justificativas técnicas de exclusão amostral.

---

## Auditoria e Consolidação da Coleta (C11)

A atividade **C11** realizou a auditoria de integridade, consolidação das evidências e conferência amostral dos registros da Fase 4:

### 1. Rastreabilidade de Evidências e Resolução de Pendências
- **Rastreabilidade:** Todos os 128 registros apontam diretamente para artefatos comprobatórios armazenados no repositório sob o diretório [`dados/fase4/`](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/tree/main/dados/fase4) (fotos de paradas, capturas de tela, arquivos de *logcat*, relatórios de *diff* e gravações em vídeo das sessões).
- **Resolução de Pendências:** Nenhum caso permaneceu em estado "Pendente". Todos os ensaios foram finalizados e classificados tecnicamente como Conformes, Defeitos ou Excluídos fundamentados.

### 2. Quadro Consolidado de Amostra por Métrica

| Métrica | Amostra Prevista | Executados | Válidos | Conformes | Defeitos / Exclusões | Status da Coleta |
| :--- | :---: | :---: | :---: | :---: | :---: | :--- |
| **M1.1** (Telas/Hardware) | 20 | 20 | 20 | 15 | 5 defeitos visuais | Concluída (100%) |
| **M1.2** (Versões SO) | 3 | 4 | 1 | 1 | 3 excluídos (filtro x86 na Play Store) | Concluída com restrição amostral |
| **M2.1** (Instalação) | 10 | 10 | 10 | 10 | 0 defeitos | Concluída (100%) |
| **M2.2** (Resíduo) | 10 | 10 | 10 | 10 | 0 defeitos | Concluída (100%) |
| **M3.1** (Crashes) | 20 | 20 | 20 | 20 | 0 defeitos | Concluída (100%) |
| **M3.2** (Congelamentos) | 20 | 20 | 20 | 20 | 0 defeitos | Concluída (100%) |
| **M4.1** (Perda de Rede) | 10 | 10 | 10 | 10 | 0 defeitos | Concluída (100%) |
| **M4.2** (Perda de GPS) | 10 | 10 | 10 | 10 | 0 defeitos | Concluída (100%) |
| **M5.1** (Erro Chegada) | 10 | 11 | 10 | 7 ($\le 5$ min) | 1 excluído (evento X01 sem foto) | Concluída (100%) |
| **M5.2** (Posição Paradas) | 5 | 5 | 5 | 5 | 0 defeitos | Concluída (100%) |
| **M6.1** (Tarefas Essenciais) | 8 | 8 | 8 | 8 | 0 defeitos | Concluída (100%) |
| **M6.2** (Completude Banco) | 20 | 20 | 20 | 20 | 0 defeitos | Concluída (100%) |

### 3. Parecer da Auditoria Amostral (10%)
Foi realizada a conferência amostral independente de mais de 10% dos registros de cada métrica, confrontando cada linha da tabela com os arquivos brutos em `dados/fase4/`. Constatou-se conformidade integral entre as evidências físicas registradas e os valores lançados nas tabelas de coleta, atestando a auditabilidade completa do processo sem necessidade de consulta externa ao avaliador.

---

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
| M1.1-01 | T01-C01 | Vitor Bessa | 18/11/2026 - 10:43 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C01_DISP-02.png) | Busca por `L01` |
| M1.1-02 | T01-C02 | Vitor Bessa | 18/11/2026 - 10:47 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C02_DISP-02.png) | Busca por `L01` |
| M1.1-03 | T01-C03 | Vitor Bessa | 18/11/2026 - 10:51 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Não | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C03_DISP-02.png) | Busca por `L01` — ver **DEF-01** abaixo |
| M1.1-04 | T01-C04 | Vitor Bessa | 18/11/2026 - 10:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T01-C04_DISP-02.png) | Busca por `L01` |
| M1.1-05 | T02-C01 | Vitor Bessa | 18/11/2026 - 10:43 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C01_DISP-02.png) | Horários de `L01` |
| M1.1-06 | T02-C02 | Vitor Bessa | 18/11/2026 - 10:48 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C02_DISP-02.png) | Horários de `L01` |
| M1.1-07 | T02-C03 | Vitor Bessa | 18/11/2026 - 10:51 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Não | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C03_DISP-02.png) | Horários de `L01` — ver **DEF-02** abaixo |
| M1.1-08 | T02-C04 | Vitor Bessa | 18/11/2026 - 10:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T02-C04_DISP-02.png) | Horários de `L01` |
| M1.1-09 | T03-C01 | Vitor Bessa | 18/11/2026 - 10:45 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C01_DISP-02.png) | Mapa do itinerário de `L01` |
| M1.1-10 | T03-C02 | Vitor Bessa | 18/11/2026 - 10:48 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C02_DISP-02.png) | Mapa do itinerário de `L01` |
| M1.1-11 | T03-C03 | Vitor Bessa | 18/11/2026 - 10:52 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Não | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C03_DISP-02.png) | Mapa do itinerário de `L01` — ver **DEF-03** abaixo |
| M1.1-12 | T03-C04 | Vitor Bessa | 18/11/2026 - 10:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T03-C04_DISP-02.png) | Mapa do itinerário de `L01` |
| M1.1-13 | T04-C01 | Vitor Bessa | 18/11/2026 - 10:45 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C01_DISP-02.png) | Detalhes de `P01` |
| M1.1-14 | T04-C02 | Vitor Bessa | 18/11/2026 - 10:50 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C02_DISP-02.png) | Detalhes de `P01` |
| M1.1-15 | T04-C03 | Vitor Bessa | 18/11/2026 - 10:52 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Não | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C03_DISP-02.png) | Detalhes de `P01` — ver **DEF-04** abaixo |
| M1.1-16 | T04-C04 | Vitor Bessa | 18/11/2026 - 10:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T04-C04_DISP-02.png) | Detalhes de `P01` |
| M1.1-17 | T05-C01 | Vitor Bessa | 18/11/2026 - 10:46 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C01_DISP-02.png) | Favoritos com `L01` e `P01` |
| M1.1-18 | T05-C02 | Vitor Bessa | 18/11/2026 - 10:50 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C02_DISP-02.png) | Favoritos com `L01` e `P01` |
| M1.1-19 | T05-C03 | Vitor Bessa | 18/11/2026 - 10:53 | DISP-02 · Android 13 · app 5.25.1(1149) | Defeito | Não | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C03_DISP-02.png) | Favoritos com `L01` e `P01` — ver **DEF-05** abaixo |
| M1.1-20 | T05-C04 | Vitor Bessa | 18/11/2026 - 10:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [captura](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_T05-C04_DISP-02.png) | Favoritos com `L01` e `P01` |

<p class="legenda">Tabela 1. Registro da coleta da M1.1. Fonte: elaboração própria (2026).</p>

#### Defeitos observados

Os cinco casos não conformes estão descritos a seguir. A configuração de cada caso consta na tabela de configurações acima; os registros completos, com data, hora e ambiente de cada observação, estão em [`M1.1_coleta.csv`](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.1/M1.1_coleta.csv).

| ID | Caso | Descrição do defeito |
|---|---|---|
| **DEF-01** | `T01-C03` | Código da linha cortado no badge laranja, deixando `0.089` ilegível; nome da linha truncado para "Setor P Sul" sem reticências; título "All lines" coberto pela barra inferior; rótulos da barra inferior quebrados em várias linhas e sobrepostos |
| **DEF-02** | `T02-C03` | Título da tela truncado; descrição do itinerário quebrada no meio das palavras ("Palm/eiras"); cada horário ocupa quase a tela inteira, e apenas um horário fica visível sem rolagem |
| **DEF-03** | `T03-C03` | Código da linha cortado no badge; título da linha truncado; cabeçalho ampliado reduz a área útil do mapa e empurra a lista de paradas para fora da área visível |
| **DEF-04** | `T04-C03` | Botões de filtro truncados para "Le..." e "Arr...", impedindo distinguir partida de chegada; título da parada truncado; cartão da linha favorita cortado |
| **DEF-05** | `T05-C03` | Abas truncadas para "Rou", "Line" e "Poin"; código da linha cortado no badge; nome da linha truncado; rótulos da barra inferior quebrados e sobrepostos |

<p class="legenda">Tabela 1.1. Defeitos observados na M1.1. Fonte: elaboração própria (2026).</p>

$$
M_{1.1} = \frac{T_s}{T_t} = \frac{15}{20} = 0{,}75
$$

Em que $T_s = 15$ corresponde ao número de casos tela × configuração aprovados, sem corte, sobreposição ou distorção que impeça a tarefa, e $T_t = 20$ é o total de casos avaliados.

Os cinco casos não conformes são exatamente os cinco da configuração `C03`, a única com escala de fonte em 200%. As demais configurações — incluindo a orientação paisagem e a resolução reduzida de 640 × 1136 px — foram aprovadas em todas as cinco telas. O defeito é, portanto, de **reflow de texto sob fonte ampliada**, e não de resolução ou de orientação, o que tem implicação direta de acessibilidade: o recurso de ampliação de fonte do Android é justamente o que usuários com baixa visão acionam.

O valor $0{,}75$ incide exatamente sobre o limiar da faixa $\ge 0{,}75$, correspondente à **nota 2**, aplicado antes de qualquer arredondamento conforme a regra 6 das Regras Gerais de Cálculo.

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

A amostra planejada era de **3 versões**; foram **executadas 3 tentativas adicionais em emulador** e obtida **1 versão válida**. Os três ambientes virtuais foram criados em 21/11/2026 no Android Studio Rabbit 2, com imagem do tipo *Google Play*, conforme a [Tabela 2 de Recursos](../fase3/3-recursos.md). Em nenhum deles a instalação pôde ser iniciada: a Google Play Store recusou o aplicativo com a mensagem *"This app won't work for your device"*, antes de qualquer download.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M1.2-01 | Android 13 (API 33) | Vitor Bessa | 20/11/2026 - 20:35 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2_SESSAO01_DISP-02.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2_SESSAO01_DISP-02.mp4) | Execução de `TE01` a `TE08` na versão do aparelho físico |
| M1.2-02 | Android 9 (API 28) | Vitor Bessa | 21/11/2026 | EMU-01 · *Medium Phone* · ABI x86 | Não observável | Não apurável | [AVDs](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2-EMU_device-manager.png) · [loja](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2-EMU_playstore.png) | Instalação bloqueada pelo filtro de arquitetura da loja; `TE01` a `TE08` não puderam ser iniciadas |
| M1.2-03 | Android 10 (API 29) | Vitor Bessa | 21/11/2026 | EMU-02 · *Medium Phone (2)* · ABI x86 | Não observável | Não apurável | [AVDs](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2-EMU_device-manager.png) · [loja](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2-EMU_playstore.png) | Mesmo bloqueio de arquitetura |
| M1.2-04 | Android 17 (API 37) | Vitor Bessa | 21/11/2026 | EMU-03 · *Medium Phone API 37.0* · ABI x86_64 | Não observável | Não apurável | [AVDs](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2-EMU_device-manager.png) · [loja](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M1.2/M1.2-EMU_playstore.png) | Mesmo bloqueio de arquitetura |

<p class="legenda">Tabela 2. Registro da coleta da M1.2. Fonte: elaboração própria (2026).</p>

#### Classificação das tentativas em emulador

O critério desta métrica distingue dois desfechos para uma instalação que não ocorre: a versão sem ambiente preparado ou com distribuição indisponível por motivo externo é **Não observável**, e a instalação recusada por incompatibilidade comprovada é **Defeito**. As três tentativas foram classificadas como **Não observável**, pela razão a seguir.

As três imagens disponíveis são de ABI x86 ou x86_64, enquanto o aplicativo publica binários apenas para ARM. O filtro de compatibilidade da loja atua sobre a arquitetura do processador, não sobre a versão do sistema, e por isso a recusa é **idêntica nas três APIs**, incluindo a API 37. Como o mesmo aplicativo instala e opera normalmente no Android 13 do aparelho físico (caso `M1.2-01`), o bloqueio é demonstravelmente independente da versão do Android, que é precisamente o que a questão **Q1.2** investiga. Registrar essas tentativas como **Defeito** afirmaria que o aplicativo falha no Android 9, 10 e 17, quando a evidência mostra apenas que ele não é distribuído para processadores x86 — uma decisão legítima de distribuição, e não uma falha de adaptabilidade do produto.

A alternativa técnica seria uma imagem de sistema `arm64-v8a`, cuja emulação sobre hospedeiro x86_64 depende de tradução binária e é lenta a ponto de inviabilizar as oito tarefas dentro do cronograma. O risco foi antecipado na [Fase 3](../fase3/3-recursos.md) antes da coleta e se concretizou na execução.

$$
M_{1.2} = \frac{O_s}{O_t} = \frac{1}{1} = 1{,}00
$$

Em que $O_s = 1$ corresponde ao número de versões do Android aprovadas em todas as tarefas `TE01` a `TE08` sem erro de compatibilidade impeditivo, e $O_t = 1$ é o total de versões **efetivamente testadas**, excluídos os casos Não observáveis conforme a regra 3 das Regras Gerais de Cálculo.

O valor 1,00 **não autoriza declarar o objetivo G1 satisfeito**. Pela regra 4 das Regras Gerais de Cálculo, a coleta é parcial — 3 versões previstas, 1 válida — e casos obrigatórios pendentes impedem a declaração de objetivo satisfeito. A métrica cobre uma única versão do Android e, portanto, não exerce a variação que a questão Q1.2 pretende observar. A hipótese **H1.2** e os limiares da [Fase 2](../fase2/metricas-julgamento.md) permanecem como especificados; o que se reporta aqui é a divergência entre o previsto e o executado, não um ajuste do critério.

### M2.1 — Sucesso de Instalação

#### Questão e critério de avaliação

A métrica avalia se o aplicativo é instalado com sucesso a partir da loja oficial, na primeira tentativa, em ciclos de instalação limpa realizados em aparelho físico.

Conforme se a instalação conclui na primeira tentativa, sem erro. Abrir o app não é exigido, e tentativas posteriores não mudam um Defeito. Pela amostra de 10 ciclos, a métrica produz a nota 4 com 10 ciclos conformes, a nota 2 com 9 e a nota 1 com 8 ou menos, sem nota 3.

#### Procedimento de coleta

Foram realizados 10 ciclos de instalação limpa no aparelho `DISP-02`. Em cada ciclo, com o app ausente, ele foi instalado pela Google Play Store e a primeira tentativa foi observada. A evidência de cada ciclo é a captura da página da loja ao final da instalação ("Instalado" ou mensagem de erro).

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M2.1-01 | CICLO01 | Vitor Bessa | 19/11/2026 - 16:41 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO01_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO01_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-02 | CICLO02 | Vitor Bessa | 19/11/2026 - 16:47 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO02_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO02_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-03 | CICLO03 | Vitor Bessa | 19/11/2026 - 16:54 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO03_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO03_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-04 | CICLO04 | Vitor Bessa | 19/11/2026 - 16:59 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO04_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO04_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-05 | CICLO05 | Vitor Bessa | 19/11/2026 - 17:03 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO05_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO05_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-06 | CICLO06 | Vitor Bessa | 19/11/2026 - 17:07 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO06_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO06_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-07 | CICLO07 | Vitor Bessa | 19/11/2026 - 17:12 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO07_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO07_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-08 | CICLO08 | Vitor Bessa | 19/11/2026 - 17:16 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO08_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO08_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-09 | CICLO09 | Vitor Bessa | 19/11/2026 - 17:20 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO09_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO09_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |
| M2.1-10 | CICLO10 | Vitor Bessa | 19/11/2026 - 17:25 | DISP-02 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M2.1_CICLO10_DISP-02.png](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.1/M2.1_CICLO10_DISP-02.png) | Instalação limpa pela Play Store; primeira tentativa |

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
| M2.2-01 | CICLO01 | Vitor Bessa | 19/11/2026 - 16:45 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO01_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO01_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO01_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-02 | CICLO02 | Vitor Bessa | 19/11/2026 - 16:52 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO02_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO02_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO02_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-03 | CICLO03 | Vitor Bessa | 19/11/2026 - 16:57 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO03_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO03_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO03_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-04 | CICLO04 | Vitor Bessa | 19/11/2026 - 17:01 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO04_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO04_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO04_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-05 | CICLO05 | Vitor Bessa | 19/11/2026 - 17:05 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO05_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO05_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO05_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-06 | CICLO06 | Vitor Bessa | 19/11/2026 - 17:10 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO06_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO06_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO06_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-07 | CICLO07 | Vitor Bessa | 19/11/2026 - 17:14 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO07_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO07_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO07_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-08 | CICLO08 | Vitor Bessa | 19/11/2026 - 17:18 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO08_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO08_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO08_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-09 | CICLO09 | Vitor Bessa | 19/11/2026 - 17:24 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO09_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO09_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO09_DISP-02_diff.txt) | Nenhum residual atribuível ao app |
| M2.2-10 | CICLO10 | Vitor Bessa | 19/11/2026 - 17:28 | DISP-02 · Android 13 | Conforme | 0 menções | [antes](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO10_DISP-02_antes.txt) · [depois](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO10_DISP-02_depois.txt) · [diff](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M2.2/M2.2_CICLO10_DISP-02_diff.txt) | Nenhum residual atribuível ao app |

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

A questão avaliada é **Q4.1**: o aplicativo mantém-se utilizável durante a indisponibilidade temporária da rede e retoma normalmente as consultas após a reconexão? A hipótese **H4.1** prevê **M4.1 < 0,85**, isto é, menos de 8 ensaios conformes em uma amostra de 10.

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
| M4.2-01 | ENS01 | Pedro Ramos | 19/11/2026 - 18:08 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E01_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E01_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-02 | ENS02 | Pedro Ramos | 19/11/2026 - 18:10 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E02_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E02_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-03 | ENS03 | Pedro Ramos | 19/11/2026 - 18:11 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E03_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E03_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-04 | ENS04 | Pedro Ramos | 19/11/2026 - 18:12 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E04_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E04_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-05 | ENS05 | Pedro Ramos | 19/11/2026 - 18:13 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E05_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E05_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-06 | ENS06 | Pedro Ramos | 19/11/2026 - 18:14 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E06_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E06_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-07 | ENS07 | Pedro Ramos | 19/11/2026 - 18:15 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E07_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E07_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-08 | ENS08 | Pedro Ramos | 19/11/2026 - 18:15 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E08_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E08_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-09 | ENS09 | Pedro Ramos | 19/11/2026 - 18:16 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E09_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E09_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |
| M4.2-10 | ENS10 | Pedro Ramos | 19/11/2026 - 18:16 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Aviso ≤ 5 s; TE01 e TE04 disponíveis; posição retomada ≤ 30 s | [M4.2_E10_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.2/M4.2_E10_DISP-01.mp4) | Localização desativada e reativada; posição voltou ao mapa |

<p class="legenda">Tabela 7. Registro da coleta da M4.2. Fonte: elaboração própria (2026).</p>

$$
M_{4.2} = \frac{G_c}{G_t} = \frac{10}{10} = 1{,}00 \ (100\%)
$$

Em que $G_c = 10$ corresponde aos ensaios que atenderam aos critérios de aviso, continuidade das funções independentes da posição e retomada da localização, e $G_t = 10$ é o total de ensaios válidos.

### M5.1 — Precisão do tempo de chegada

#### Questão e critério de avaliação

A questão avaliada é **Q5.1**: o tempo de chegada previsto pelo aplicativo corresponde à chegada real do veículo à parada? A métrica é o **erro absoluto mediano**, em minutos, entre a previsão exibida e a chegada observada; menor é melhor. Os limiares fixados na Fase 2 são: nota 4 com erro mediano $\le 2$ min, nota 3 com $\le 5$ min, nota 2 com $\le 10$ min e nota 1 acima de 10 min.

A regra de captura foi fixada antes da coleta: vale a **primeira previsão** em que o veículo é identificado na janela de observação. Quando o app exibe tempo restante, ele é somado ao instante da captura para obter o instante previsto. Previsão ausente, identificação insuficiente e chegada não observada são registradas à parte e não entram como erro zero. Nenhuma previsão foi selecionada retrospectivamente por produzir erro menor.

#### Procedimento de coleta

Foram observados 10 eventos de chegada válidos, em dois blocos, na parada `P01` (N1 P Norte, Ceilândia), com as linhas `L01` (0.089) e `L02` (933.4), no aparelho `DISP-02` (Xiaomi Redmi Note 11S), em 21/11/2026. O bloco 1 ocorreu entre 11:41 e 13:31 e o bloco 2 entre 16:03 e 17:42. Em cada janela foram usados os primeiros eventos elegíveis, sem escolha pelo erro. O pareamento foi feito por linha, sentido, parada e prefixo do veículo; como o mesmo prefixo reaparece em viagens posteriores do ciclo, cada evento corresponde a uma viagem contínua, e não ao prefixo isolado. A chegada foi registrada quando a frente do veículo alcançou o ponto de referência da parada. Os horários usam o fuso `America/Sao_Paulo`. Um evento adicional foi observado e **excluído** por chegada não registrada, conforme a regra 3 das Regras Gerais de Cálculo. Em atenção à LGPD, as fotos de chegada receberam tarja de mosaico sobre placas de veículos e sobre terceiros que apareceram incidentalmente no enquadramento; o letreiro da linha e o prefixo do veículo, que sustentam o pareamento, foram preservados em todas as imagens.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M5.1-01 | E01 | Vitor Bessa | 21/11/2026 11:41:35 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 11:45:35 · chegada 11:46:14 · **erro 0,65 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E01_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E01_REAL.jpg) | Bloco 1; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 445282 |
| M5.1-02 | E02 | Vitor Bessa | 21/11/2026 11:41:35 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 12:22:35 · chegada 12:21:55 · **erro 0,67 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E02_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E02_REAL.jpg) | Bloco 1; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 444774 |
| M5.1-03 | E03 | Vitor Bessa | 21/11/2026 11:41:48 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 12:08:48 · chegada 12:22:07 · **erro 13,32 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E03_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E03_REAL.jpg) · [perda](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E03_PERDA.jpg) | Bloco 1; linha `0.089`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 446475; **perda de rastreio antes da chegada** |
| M5.1-04 | E04 | Vitor Bessa | 21/11/2026 11:41:48 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 12:22:48 · chegada 13:01:46 · **erro 38,97 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E04_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E04_REAL.jpg) · [perda](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E04_PERDA.jpg) | Bloco 1; linha `0.089`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 446289; **perda de rastreio antes da chegada** |
| M5.1-05 | E05 | Vitor Bessa | 21/11/2026 13:00:38 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 13:05:38 · chegada 13:06:35 · **erro 0,95 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E05_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E05_REAL.jpg) | Bloco 1; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 445282 |
| M5.1-06 | E06 | Vitor Bessa | 21/11/2026 13:20:33 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 13:28:33 · chegada 13:30:36 · **erro 2,05 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E06_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E06_REAL.jpg) | Bloco 1; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 445321 |
| M5.1-07 | E07 | Vitor Bessa | 21/11/2026 16:03:15 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 16:05:15 · chegada 16:05:47 · **erro 0,53 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E07_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E07_REAL.jpg) | Bloco 2; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 445461 |
| M5.1-08 | E08 | Vitor Bessa | 21/11/2026 16:11:32 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 16:24:32 · chegada 16:29:10 · **erro 4,63 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E08_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E08_REAL.jpg) | Bloco 2; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 444774 |
| M5.1-09 | E09 | Vitor Bessa | 21/11/2026 17:17:55 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 17:33:55 · chegada 17:39:32 · **erro 5,62 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E09_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E09_REAL.jpg) | Bloco 2; linha `933.4`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 445461 |
| M5.1-10 | E10 | Vitor Bessa | 21/11/2026 17:17:55 | DISP-02 · Android 13 · app 5.25.1(1149) | Válido | previsto 17:27:55 · chegada 17:41:53 · **erro 13,97 min** | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E10_APP.jpg) · [chegada](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E10_REAL.jpg) · [perda](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-E10_PERDA.jpg) | Bloco 2; linha `0.089`, sentido Sol Nascente Trecho 1, parada `P01`; prefixo 448966; **perda de rastreio antes da chegada** |
| M5.1-X1 | X01 | Vitor Bessa | 21/11/2026 13:20:33 | DISP-02 · Android 13 · app 5.25.1(1149) | Inválido | previsto 13:29:33 · chegada não observada · erro não apurável | [app](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-X01_APP.jpg) · [perda](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1-X01_PERDA.jpg) | Bloco 1; linha `0.089`, prefixo 449974, exibido 9 min; perda de rastreio às 13:25:21; o veículo passou sem registro fotográfico. **Excluído do cálculo** |

<p class="legenda">Tabela 8. Registro da coleta da M5.1. Fonte: elaboração própria (2026).</p>

$$
M_{5.1} = \operatorname{mediana}\left(e_1,\ldots,e_n\right), \quad e_i = \frac{\lvert t_i^{obs} - t_i^{prev}\rvert}{60}
$$

Com $n = 10$ pares válidos, os erros ordenados são 0,53; 0,65; 0,67; 0,95; 2,05; 4,63; 5,62; 13,32; 13,97 e 38,97 minutos. Por se tratar de $n$ par, a mediana é a média dos dois valores centrais:

$$
M_{5.1} = \frac{2{,}05 + 4{,}63}{2} = 3{,}34 \text{ min}
$$

O menor erro foi de 0,53 min e o maior de 38,97 min. O valor **3,34 min** situa-se na faixa $\le 5$ min, correspondente à **nota 3**.

#### Observações complementares

A mediana global esconde uma separação acentuada entre as duas linhas observadas, registrada aqui porque afeta a interpretação do resultado:

| Linha | Pares válidos | Erro mediano | Erro máximo | Perdas de rastreio |
|---|---|---|---|---|
| `L02` — 933.4 | 7 | 0,95 min | 5,62 min | 0 de 7 |
| `L01` — 0.089 | 3 | 13,97 min | 38,97 min | 3 de 3 |

<p class="legenda">Tabela 8.1. Erro da M5.1 por linha observada. Fonte: elaboração própria (2026).</p>

Os três maiores erros e o único evento inválido ocorreram todos na linha `L01`, e em todos eles o veículo **deixou de constar na lista de previsões antes de chegar à parada**, embora tenha chegado em seguida. Em dois casos a entrada remanescente induzia a conclusão oposta: às 13:25:21 a previsão em tempo real foi substituída por um horário de tabela de 31 min, e às 17:33:05 a lista passou a indicar 24 min para o veículo seguinte, oito minutos antes de o veículo esperado chegar. Na linha `L02` não houve nenhuma perda de rastreio em sete observações.

Como análise secundária, e sem efeito sobre o valor apurado, o mesmo conjunto avaliado pela **última** previsão exibida antes da chegada resultaria em erro mediano de 1,23 min. A diferença entre 3,34 e 1,23 min indica que a previsão converge à medida que o veículo se aproxima, enquanto as previsões iniciais são substancialmente menos confiáveis. Esse recorte não substitui o resultado da métrica, cuja regra de captura foi fixada antes da coleta.

Os registros completos estão em [`M5.1_coleta.csv`](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.1/M5.1_coleta.csv), e as capturas originais, sem renomeação, em [`dados/fase4/M5.1/bruto/`](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/tree/main/dados/fase4/M5.1/bruto).

### M5.2 — Posições no mapa

#### Questão e critério de avaliação

A questão avaliada é **Q5.2**: a posição das paradas no mapa coincide com a posição espacial real? A hipótese **H5.2** prevê **M5.2 ≥ 0,85**.

Considera-se conforme cada parada cuja distância entre a posição exibida no aplicativo e a referência independentemente obtida em campo seja menor ou igual à tolerância espacial fixada de $\varepsilon = 30$ m. Pela amostra de cinco paradas, a métrica só produz a nota 4 com cinco casos conformes e a nota 2 com quatro; com três ou menos casos conformes, a nota é 1.

#### Procedimento de coleta

Foram obtidas cinco capturas do mapa no aparelho `DISP-01`, identificadas como `P01` a `P05`, em 20/11/2026. Os arquivos mostram o marcador do aplicativo, o indicador da posição do usuário e a região de precisão exibida pelo mapa. A avaliação ficou limitada a paradas; veículos não foram incluídos, conforme a restrição registrada na Fase 3.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M5.2-01 | P01 | Pedro Ramos | 20/11/2026 - 10:42 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 4 metros | [M5.2-P01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P01.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-02 | P02 | Pedro Ramos | 20/11/2026 - 10:48 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 29 metros | [M5.2-P02.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P02.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-03 | P03 | Pedro Ramos | 20/11/2026 - 10:51 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 4,5 metros | [M5.2-P03.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P03.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-04 | P04 | Pedro Ramos | 20/11/2026 - 10:52 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 3 metros | [M5.2-P04.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P04.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |
| M5.2-05 | P05 | Pedro Ramos | 20/11/2026 - 10:53 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | 5 metros | [M5.2-P05.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M5.2/M5.2-P05.jpg) | Medição direta na captura por cálculo visual dos pixels com auxilio de IA |

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
| M6.2-01 | A01 | 01 · 0.110 | Pedro Ramos | 17/11/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A01_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A01_DISP01.jpg) | Circular |
| M6.2-02 | A02 | 01 · 0.504 | Pedro Ramos | 17/11/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A02_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A02_DISP01.jpg) | Circular |
| M6.2-03 | A03 | 01 · 062.1 | Pedro Ramos | 17/11/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A03_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A03_DISP01.jpg) | Circular |
| M6.2-04 | A04 | 01 · 620.1 | Pedro Ramos | 17/11/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A04_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A04_DISP01.jpg) | Duplo Sentido |
| M6.2-05 | A05 | 02 · 0.102 | Pedro Ramos | 17/11/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A05_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A05_DISP01.jpg) | Circular |
| M6.2-06 | A06 | 02 · 0.761 | Pedro Ramos | 17/11/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A06_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A06_DISP01.jpg) | Duplo Sentido |
| M6.2-07 | A07 | 02 · 180.2 | Pedro Ramos | 17/11/2026 - 19:57 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A07_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A07_DISP01.jpg) | Duplo Sentido |
| M6.2-08 | A08 | 02 · 2201  | Pedro Ramos | 17/11/2026 - 19:57 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A08_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A08_DISP01.jpg) | Duplo Sentido |
| M6.2-09 | A09 | 03 · 0.082 | Pedro Ramos | 17/11/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A09_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A09_DISP01.jpg) | Circular |
| M6.2-10 | A10 | 03 · 0.809 | Pedro Ramos | 17/11/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A10_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A10_DISP01.jpg) | Duplo Sentido |
| M6.2-11 | A11 | 03 · 119.0 | Pedro Ramos | 17/11/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A11_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A11_DISP01.jpg) | Circular |
| M6.2-12 | A12 | 03 · 870.1 | Pedro Ramos | 17/11/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A12_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A12_DISP01.jpg) | Circular |
| M6.2-13 | A13 | 04 · 0.008 | Pedro Ramos | 17/11/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A13_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A13_DISP01.jpg) | Circular |
| M6.2-14 | A14 | 04 · 0.336 | Pedro Ramos | 17/11/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A14_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A14_DISP01.jpg) | Duplo Sentido |
| M6.2-15 | A15 | 04 · 154.2 | Pedro Ramos | 17/11/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A15_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A15_DISP01.jpg) | Duplo Sentido |
| M6.2-16 | A16 | 04 · 933.1 | Pedro Ramos | 17/11/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A16_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A16_DISP01.jpg) | Circular |
| M6.2-17 | A17 | 05 · 0.005 | Pedro Ramos | 17/11/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A17_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A17_DISP01.jpg) | Circular |
| M6.2-18 | A18 | 05 · 0.400 | Pedro Ramos | 17/11/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A18_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A18_DISP01.jpg) | Duplo Sentido |
| M6.2-19 | A19 | 05 · 0.808 | Pedro Ramos | 17/11/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A19_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A19_DISP01.jpg) | Duplo Sentido |
| M6.2-20 | A20 | 05 · 158.6 | Pedro Ramos | 17/11/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A20_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A20_DISP01.jpg) | Duplo Sentido |

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
| 1.6 | Auditoria C11: conferência da integridade das colunas e formalização do dicionário de registros | [João Guilherme Capozzi](https://github.com/jonas3688) | 22/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 22/11/2026 |
| 1.7 | Auditoria C11: consolidação das evidências, parecer amostral (10%) e quadro de quantitativos | [João Guilherme Capozzi](https://github.com/jonas3688) | 22/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 22/11/2026 |