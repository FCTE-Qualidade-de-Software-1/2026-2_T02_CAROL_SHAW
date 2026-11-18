# Fase 4 — Resultados e Parecer de Qualidade

## 1. Introdução e Abordagem de Julgamento

Este documento apresenta a síntese dos resultados obtidos na avaliação de qualidade do aplicativo móvel **DF no Ponto** (plataforma Android, versão de referência `5.25.1(1149)`), avaliado em regime de caixa preta conforme delimitado em [Descrição do Produto](../fase1/3-descricao.md#alvo-da-avaliacao). No processo normativo da **ISO/IEC 25040:2011**, esta seção consolida as atividades finais de **julgar os resultados** e **concluir a avaliação**, transformando as medições e notas individuais apuradas em [Análise de Dados](2-analise.md) — a partir dos registros de [Coleta de Dados](1-coleta.md) — em vereditos formais para os objetivos de medição e em subsídios para as decisões estratégicas do projeto.

Em conformidade com a [Introdução da Fase 4](introducao.md), a emissão dos vereditos preserva integralmente a arquitetura definida nas fases anteriores: as **3 características** prioritárias da **ISO/IEC 25010:2011** ([Modelo de Qualidade e Escopo](../fase1/5-modelo.md)), os **6 objetivos GQM** (`G1` a `G6`), as **12 questões operacionais** (`Q1.1` a `Q6.2`) e as **12 métricas** (`M1.1` a `M6.2`) da [Fase 2](../fase2/planejamento-objetivos.md), bem como os procedimentos e tamanhos amostrais fixados na [Fase 3](../fase3/2-procedimentos.md), sem alteração retroativa de fórmulas, escalas ou limiares.

### 1.1. Princípio Conservador de Agregação

As notas atribuídas às métricas (de **1 — Crítico** a **4 — Excelente**) pertencem a uma **escala ordinal** (classificação de Stevens adotada pelo NIST), o que significa que expressam ordenação qualitativa sem pressupor intervalos iguais entre graus. Consequentemente, não se utiliza média aritmética nem compensação entre indicadores.

Para julgar cada objetivo GQM ($G_k$, com $k \in \{1, \ldots, 6\}$), aplica-se o **princípio conservador da pior nota** definido em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#julgamento-dos-objetivos):

$$
\text{Nota}(G_k) = \min\big(\text{Nota}(M_{k.1}),\, \text{Nota}(M_{k.2})\big)
$$

Esse critério impede que uma nota elevada em uma dimensão mascare uma deficiência operacional relevante na outra métrica do mesmo objetivo. Além disso, o julgamento preserva o recorte por objetivo e por característica, sem cálculo de nota global única para o aplicativo.

### 1.2. Critérios de Julgamento dos Objetivos

A Tabela 1 estabelece o mapeamento entre a pior nota observada nas métricas associadas a um objetivo GQM e o respectivo veredito formal de julgamento:

| Condição nas métricas associadas ao objetivo | Veredito do Objetivo | Interpretação para o Parecer |
| :--- | :--- | :--- |
| Todas as métricas associadas com **Nota 4** (Excelente) | **Satisfeito** | Atendimento pleno ao objetivo de qualidade; operação regular e aderente às expectativas definidas. |
| Nota mínima igual a **3** (Bom) entre as métricas associadas | **Satisfeito com Ressalvas** | Atendimento aceitável com desvios menores toleráveis; demanda acompanhamento ou melhoria pontual. |
| Presença de **Nota 1** (Crítico) ou **Nota 2** (Insuficiente) em ao menos uma métrica | **Não Satisfeito** | O objetivo não foi atingido de forma adequada; requer ação corretiva priorizada ou imediata conforme a gravidade. |
| Ao menos uma métrica associada sem dados válidos / aguardando coleta | **Não avaliado (dados incompletos)** | Coleta incompleta impede a emissão de veredito conclusivo; mantêm-se visíveis as notas parciais já consolidadas. |

<p class="legenda">Tabela 1. Critérios de julgamento dos objetivos GQM segundo o princípio conservador da pior nota. Fonte: elaboração própria (2026), com base na Fase 2 e nas diretrizes de fechamento da Fase 4.</p>

---

## 2. Julgamento dos Objetivos GQM (G1 a G6)

### 2.1. Tabela Consolidada dos Vereditos dos Objetivos

Com base nos cálculos auditados em [Análise de Dados](2-analise.md#8-quadro-comparativo-global-das-12-metricas-e-hipoteses-preditivas) e nos registros disponíveis em [Coleta de Dados](1-coleta.md), a Tabela 2 sintetiza a situação atual dos seis objetivos de medição do projeto:

| Objetivo GQM | Característica ISO/IEC 25010 | Métricas Associadas | Notas das Métricas | Regra de Agregação | Veredito do Objetivo |
| :--- | :--- | :---: | :--- | :--- | :--- |
| **G1** — Adaptabilidade | Portabilidade *(Adaptabilidade)* | `M1.1`, `M1.2` | • **M1.1:** Sem nota *(0/20 casos)*<br>• **M1.2:** Sem nota *(0/3 versões)* | $\min(\text{M1.1}, \text{M1.2})$ com métricas pendentes | **Não avaliado (dados incompletos)** |
| **G2** — Instalabilidade | Portabilidade *(Instalabilidade)* | `M2.1`, `M2.2` | • **M2.1:** Sem nota *(0/10 ciclos)*<br>• **M2.2:** Sem nota *(0/10 ciclos)* | $\min(\text{M2.1}, \text{M2.2})$ com métricas pendentes | **Não avaliado (dados incompletos)** |
| **G3** — Maturidade | Confiabilidade *(Maturidade)* | `M3.1`, `M3.2` | • **M3.1:** Sem nota *(0/20 sessões)*<br>• **M3.2:** Sem nota *(0/20 sessões)* | $\min(\text{M3.1}, \text{M3.2})$ com métricas pendentes | **Não avaliado (dados incompletos)** |
| **G4** — Tolerância a Falhas | Confiabilidade *(Tolerância a Falhas)* | `M4.1`, `M4.2` | • **M4.1:** Sem nota *(0/10 ensaios)*<br>• **M4.2:** Sem nota *(0/10 ensaios)* | $\min(\text{M4.1}, \text{M4.2})$ com métricas pendentes | **Não avaliado (dados incompletos)** |
| **G5** — Correção | Adequação Funcional *(Correção)* | `M5.1`, `M5.2` | • **M5.1:** Sem nota *(0/10 eventos)*<br>• **M5.2:** Sem nota *(0/5 paradas; 0/10 veículos)* | $\min(\text{M5.1}, \text{M5.2})$ com métricas pendentes | **Não avaliado (dados incompletos)** |
| **G6** — Completude | Adequação Funcional *(Completude e Pertinência)* | `M6.1`, `M6.2` | • **M6.1:** Sem nota *(0/8 tarefas)*<br>• **M6.2:** **Nota 4 — Excelente** *(20/20 = 100,00%)* | $\min(\text{M6.1}, \text{M6.2})$ com `M6.1` pendente | **Não avaliado (dados incompletos)** *(aguarda `M6.1`)* |

<p class="legenda">Tabela 2. Síntese dos vereditos dos objetivos G1 a G6 pelo princípio conservador. Fonte: elaboração própria (2026), com base em Análise de Dados (Fase 4).</p>

---

### 2.2. Análise Detalhada por Objetivo

#### G1 — Portabilidade (Adaptabilidade): `M1.1` e `M1.2`

* **Vínculo no modelo:** responde à questão norteadora **QN1** (*universalidade e acesso equitativo*) e subsidia a decisão estratégica **D1**, avaliando o comportamento da interface em diferentes telas, orientações e escalas de fonte (`Q1.1` / `M1.1`) e a compatibilidade entre versões do Android (`Q1.2` / `M1.2`).
* **Situação das métricas associadas:**
  * **M1.1 — Adaptabilidade de Hardware (Telas):** previstos $20$ ensaios (`T01`–`T05` $\times$ `C01`–`C04`, abrangendo resoluções de `640 × 1136 px` a `1080 × 2400 px`, orientações retrato/paisagem e fonte em 100% e 200%). Com $T_t = 0$ registros publicados em [Coleta de Dados](1-coleta.md), permanece **Não avaliado (sem dados)** e sem verificação da hipótese preditiva **H1.1** ($M_{1.1} < 1{,}00$).
  * **M1.2 — Adaptabilidade de SO:** previstas até $3$ versões do Android (Android 9, Android 13 e versão do aparelho físico `DISP01`) executando o catálogo de tarefas essenciais `TE01`–`TE08`. Com $O_t = 0$ versões publicadas em `1-coleta.md`, permanece **Não avaliado (sem dados)** e sem verificação de **H1.2** ($M_{1.2} = 1{,}00$). Por efeito de amostra pequena ($O_t = 3$), apenas as notas `4` (`3/3`) e `1` ($\le 2/3$) são matematicamente atingíveis.
* **Veredito do objetivo G1:** **Não avaliado (dados incompletos)**. Conforme a regra de agregação conservadora, `G1` só poderá ser julgado após a incorporação das tabelas e evidências completas de `M1.1` e `M1.2` em `1-coleta.md`.

#### G2 — Portabilidade (Instalabilidade): `M2.1` e `M2.2`

* **Vínculo no modelo:** integra igualmente a característica **Portabilidade** (**QN1** / **D1**), verificando o êxito de instalação limpa via Google Play Store na primeira tentativa (`Q2.1` / `M2.1`) e a ausência de arquivos residuais no armazenamento compartilhado após a desinstalação (`Q2.2` / `M2.2`).
* **Situação das métricas associadas:**
  * **M2.1 — Sucesso de Instalação:** previstos $10$ ciclos em aparelho físico (`CICLO01`–`CICLO10`). Com $I_t = 0$ registros em `1-coleta.md`, permanece **Não avaliado (sem dados)** e sem verificação de **H2.1** ($M_{2.1} = 1{,}00$).
  * **M2.2 — Resíduo Pós-Desinstalação:** previstos $10$ ciclos pareados com inspeção via `adb` nos diretórios públicos (`/sdcard/Android/data`, `obb`, `media`, `Download`, `Documents` e pastas do aplicativo). Com $D_t = 0$ registros em `1-coleta.md`, permanece **Não avaliado (sem dados)** e sem verificação de **H2.2** ($M_{2.2} < 1{,}00$). Pela granularidade discreta de $n = 10$, a Nota 3 é inatingível tanto em `M2.1` quanto em `M2.2` ($9/10 = 0{,}90 < 0{,}95$): apenas `10/10` atinge Nota 4, enquanto `9/10` resulta diretamente em Nota 2.
* **Veredito do objetivo G2:** **Não avaliado (dados incompletos)**. Nenhuma conclusão sobre confiabilidade do pacote de distribuição ou limpeza pós-remoção pode ser emitida antes da publicação dos $10$ ciclos pareados.

#### G3 — Confiabilidade (Maturidade): `M3.1` e `M3.2`

* **Vínculo no modelo:** responde à questão norteadora **QN2** (*resiliência operacional sob condições reais*) e subsidia a decisão **D2**, medindo a estabilidade em uso contínuo quanto a encerramentos inesperados (`Q3.1` / `M3.1`) e congelamentos de interface superiores a 5 segundos ou ANRs (`Q3.2` / `M3.2`).
* **Situação das métricas associadas:**
  * **M3.1 — Sessões sem *Crashes*:** previstas $20$ sessões padronizadas de $5$ minutos cada (`S01`–`S20`). Com $S_t = 0$ sessões registradas em `1-coleta.md`, encontra-se **Não avaliado (sem dados)**, mantendo **H3.1** ($M_{3.1} \ge 0{,}95$) não verificada.
  * **M3.2 — Sessões sem Congelamentos:** avaliada nas mesmas $20$ sessões padronizadas de $5$ minutos com marcação temporal e monitoramento de `logcat`. Com $S_t = 0$ registros em `1-coleta.md`, permanece **Não avaliado (sem dados)** e sem verificação de **H3.2** ($M_{3.2} \ge 0{,}95$). Para $n = 20$, todas as notas de 1 a 4 são atingíveis (`20/20` = Nota 4; `19/20` = Nota 3; `18/20` = Nota 2; $\le 17/20$ = Nota 1).
* **Veredito do objetivo G3:** **Não avaliado (dados incompletos)**. O julgamento definitivo depende da execução e registro das $20$ sessões cronometradas com evidências em vídeo e `adb logcat`.

#### G4 — Confiabilidade (Tolerância a Falhas): `M4.1` e `M4.2`

* **Vínculo no modelo:** compõe a característica **Confiabilidade** (**QN2** / **D2**), verificando o comportamento do aplicativo perante interrupções induzidas de conectividade móvel (`Q4.1` / `M4.1`) e desativação do serviço de localização GPS (`Q4.2` / `M4.2`).
* **Situação das métricas associadas:**
  * **M4.1 — Mitigação de Perda de Conexão:** previstos $10$ ensaios em aparelho físico com Modo Avião por $30\text{ s}$ (exigindo permanência em execução, aviso em até $5\text{ s}$ e retomada em até $30\text{ s}$). Com $R_t = 0$ ensaios publicados em `1-coleta.md`, permanece **Não avaliado (sem dados)**, sem confirmação ou refutação de **H4.1** ($M_{4.1} < 0{,}85$).
  * **M4.2 — Tratamento de Perda de GPS:** previstos $10$ ensaios com desativação da localização por $30\text{ s}$ (aviso em até $5\text{ s}$, preservação de buscas manuais independentes de GPS e retomada em até $30\text{ s}$). Com $G_t = 0$ registros em `1-coleta.md`, permanece **Não avaliado (sem dados)**, mantendo **H4.2** ($M_{4.2} \ge 0{,}85$) não verificada.
* **Veredito do objetivo G4:** **Não avaliado (dados incompletos)**. Enquanto os $20$ ensaios de injeção de falha ($10 + 10$) não forem publicados com registros temporais em `1-coleta.md`, `G4` não pode ser declarado satisfeito.

#### G5 — Adequação Funcional (Correção): `M5.1` e `M5.2`

* **Vínculo no modelo:** integra a característica de maior prioridade no escopo do projeto (**Adequação Funcional**, vinculada a **QN3** e **D3**), aferindo em campo a exatidão temporal das previsões de chegada (`Q5.1` / `M5.1`) e a exatidão posicional de paradas e veículos no mapa (`Q5.2` / `M5.2`).
* **Situação das métricas associadas:**
  * **M5.1 — Precisão de Tempo:** previstos $10$ eventos de chegada em campo (dois blocos de $5$), avaliados pela mediana do erro absoluto em minutos. Com $n = 0$ pares válidos em `1-coleta.md`, permanece **Não avaliado (sem dados)** e com **H5.1** ($M_{5.1} \le 5\text{ min}$) não verificada.
  * **M5.2 — Correção de Dados (Mapa):** previstos $5$ pontos de parada e $10$ eventos de veículos parados junto à parada, sob tolerância espacial $\varepsilon = 30\text{ m}$, $\Delta t_{\max} = 2\text{ s}$ e referência GPSTest $\le 10\text{ m}$, atribuindo-se a pior nota entre os dois estratos. Com $P_t = 0$ em ambos os estratos em `1-coleta.md`, permanece **Não avaliado (sem dados)** e sem verificação de **H5.2**. Ressalta-se que, no estrato de paradas ($n = 5$), a Nota 3 é matematicamente inatingível (`5/5` = Nota 4; `4/5` = Nota 2; $\le 3/5$ = Nota 1).
* **Veredito do objetivo G5:** **Não avaliado (dados incompletos)**. A ausência dos registros de campo impede julgar a precisão temporal e espacial do aplicativo nesta versão.

#### G6 — Adequação Funcional (Completude): `M6.1` e `M6.2`

* **Vínculo no modelo:** completa a avaliação de **Adequação Funcional** (**QN3** / **D3**), abrangendo a subcaracterística **Completude Funcional** (delimitada transversalmente pela **Pertinência Funcional**) por meio da cobertura ponta a ponta das tarefas essenciais (`Q6.1` / `M6.1`) e da sincronização do banco de linhas com o catálogo oficial da Semob-DF (`Q6.2` / `M6.2`).
* **Situação das métricas associadas:**
  * **M6.2 — Completude do Banco *(Consolidada)*:** única métrica com coleta integralmente executada, evidenciada e auditada em [Coleta de Dados](1-coleta.md#m62-completude-do-banco) (`DISP01 · Android 13 · app 5.25.1(1149)`). Na auditoria estratificada dos **$20$ itens sorteados** (`A01` a `A20`, sendo $4$ linhas por bacia operacional de `01` a `05`, distribuídas igualmente entre $10$ circulares e $10$ de duplo sentido) frente ao Relatório de Linhas da Semob-DF de `17/11/2026`, todas as **$20$ linhas** apresentaram código, denominação e sentidos correspondentes, com **$0$ defeitos** e **$0$ exclusões**:
    $$
    M_{6.2} = \frac{20}{20} = 1{,}00 \ (100{,}00\%) \implies \textbf{Nota 4 (Excelente)}
    $$
    O resultado **confirma a hipótese preditiva H6.2** ($M_{6.2} \ge 0{,}95$) dentro do recorte amostral auditado. Registra-se apenas a anomalia editorial já apontada em [Análise de Dados](2-analise.md#91-anomalias-registradas-nos-dados-coletados-e-na-consolidacao) (campo data preenchido como `17/19/2026` na tabela de coleta em vez de `17/11/2026`), que não invalida as $20$ capturas de tela nem o resultado da métrica.
  * **M6.1 — Cobertura de Tarefas Essenciais *(Pendente)*:** abrange o catálogo fixo de $8$ tarefas essenciais (`TE01`–`TE08`: busca por código, horários, itinerário no mapa, consulta a parada, veículo em operação e gestão de favoritos). Com $F_t = 0$ registros publicados em `1-coleta.md`, permanece **Não avaliado (sem dados)** e sem verificação de **H6.1** ($M_{6.1} = 1{,}00$). Pela regra discreta para $F_t = 8$, a Nota 3 é matematicamente inatingível (`8/8` = Nota 4; `7/8 = 0,875` = Nota 2; $\le 6/8$ = Nota 1).
* **Veredito do objetivo G6:** **Não avaliado (dados incompletos)**. Embora **M6.2** tenha alcançado desempenho máximo (**Nota 4 — Excelente, 100%**), o princípio conservador impede declarar **G6** satisfeito enquanto **M6.1** aguardar coleta e publicação em `1-coleta.md`. Após a conclusão de `M6.1`, o veredito final de `G6` será determinado diretamente por $\min(\text{Nota}(M_{6.1}), 4) = \text{Nota}(M_{6.1})$: será **Satisfeito** apenas se todas as $8$ tarefas essenciais (`TE01`–`TE08`) forem aprovadas (`8/8`, Nota 4), ou **Não Satisfeito** caso ocorra qualquer defeito funcional (`≤ 7/8`, Nota 2 ou 1).
