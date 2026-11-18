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


---

## 3. Respostas às Questões Operacionais (Q1.1 a Q6.2)

Em conformidade com o processo normativo da **ISO/IEC 25040:2011** e com as [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo) estabelecidas na Fase 2, as respostas às **12 questões operacionais** (`Q1.1` a `Q6.2`) do ciclo *Goal–Question–Metric* (GQM) fundamentam-se estritamente nas evidências registradas em [Coleta de Dados](1-coleta.md) e consolidadas em [Análise de Dados](2-analise.md) para a versão de referência **`5.25.1(1149)`** do aplicativo *DF no Ponto* (plataforma Android).

Até o fechamento desta etapa, **apenas a métrica `M6.2` (Completude do Banco)** dispõe de coleta integral publicada e auditada em [Coleta de Dados](1-coleta.md). Para as demais métricas (`M1.1` a `M6.1`), não se realiza simulação, extrapolação nem atribuição de nota: cada questão operacional correspondente recebe resposta técnica de **estado pendente de evidência empírica (`Não avaliado (sem dados)`)**, acompanhada do protocolo de decisão objetivo aplicável assim que os registros forem incorporados.

---

### 3.1. Eixo Portabilidade — Objetivos G1 e G2 (`Q1.1` a `Q2.2`)

#### Q1.1 — Adaptabilidade de Hardware e Telas (*Objetivo G1 · Métrica M1.1*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q1-1)):** *A interface gráfica se redimensiona sem sobreposições ou cortes em telas compactas, diferentes orientações e fontes ampliadas?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M1.1 = Não avaliado (sem dados)`** ($T_t = 0$ de $20$ casos `T01`–`T05` $\times$ `C01`–`C04` registrados em [Coleta de Dados](1-coleta.md); hipótese `H1.1`: $M_{1.1} < 1{,}00$ **não verificada**).
* **Análise técnica e critério de resposta:** Os [Procedimentos de Execução](../fase3/2-procedimentos.md#33-telas-e-configuracoes-m11) definem 20 combinações entre 5 telas críticas (`T01` busca, `T02` horários, `T03` mapa de itinerário, `T04` detalhes da parada e `T05` favoritos) e 4 configurações de exibição (`C01`: `640 × 1136 px`, `320 dpi`, retrato, fonte `100%`; `C02`: paisagem `100%`; `C03`: retrato com fonte `200%`; `C04`: `1080 × 2400 px`, `420 dpi`, retrato `100%`). A resposta técnica definitiva exige a inspeção das 20 capturas de tela para verificar ausência de corte ou sobreposição impeditivos nos controles sobre a camada de mapa. Pela escala da Fase 2, `20/20` casos conformes (`1,00`) conferem **Nota 4 (Excelente)** (refutando `H1.1`); `18–19/20` conferem **Nota 3 (Bom)**; `15–17/20` conferem **Nota 2 (Insuficiente)**; e $\le 14/20$ conferem **Nota 1 (Crítico)**.

#### Q1.2 — Adaptabilidade de Sistema Operacional (*Objetivo G1 · Métrica M1.2*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q1-2)):** *O aplicativo executa sem erros críticos de compatibilidade em diferentes versões de SO (incluindo versões legadas)?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M1.2 = Não avaliado (sem dados)`** ($O_t = 0$ de até $3$ versões previstas registradas em [Coleta de Dados](1-coleta.md); hipótese `H1.2`: $M_{1.2} = 1{,}00$ **não verificada**).
* **Análise técnica e critério de resposta:** A questão avalia a execução integral do catálogo de 8 tarefas essenciais (`TE01`–`TE08`) no extremo legado (`Android 9`), na referência recente (`Android 13`) e na versão do aparelho físico (`DISP01`). Conforme a regra de amostra pequena documentada em [Análise de Dados](2-analise.md#43-conversao-discreta-em-amostras-pequenas-e-regras-de-agregacao), com $O_t = 3$ versões válidas, **apenas as notas 4 (`3/3 = 1,00`) e 1 (`0–2/3 ≤ 0,67`) são matematicamente atingíveis**. Assim, basta uma única versão reprovada por incompatibilidade de API, permissões ou renderização para refutar `H1.2` e rebaixar imediatamente `M1.2` (e consequentemente `G1`) para **Nota 1 (Crítico)**. Ressalta-se também a limitação de escopo da amostra, que não verifica diretamente as versões intermediárias (`Android 10`, `11` e `12`).

#### Q2.1 — Sucesso de Instalação (*Objetivo G2 · Métrica M2.1*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q2-1)):** *O processo de instalação nas lojas oficiais ocorre na primeira tentativa sem erro?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M2.1 = Não avaliado (sem dados)`** ($I_t = 0$ de $10$ ciclos limpos registrados em [Coleta de Dados](1-coleta.md); hipótese `H2.1`: $M_{2.1} = 1{,}00$ **não verificada**).
* **Análise técnica e critério de resposta:** O roteiro exige **10 ciclos independentes de instalação limpa** pela Google Play Store em aparelho físico, avaliando exclusivamente a **primeira tentativa** de cada ciclo (tentativas posteriores não revertem uma falha inicial). Pela granularidade discreta da amostra ($I_t = 10$), a **Nota 3 (Bom, $\ge 0{,}95$) é matematicamente inatingível**: a aprovação integral (`10/10 = 1,00`) confirma `H2.1` com **Nota 4 (Excelente)**, ao passo que `9/10` (`0,90`) já refuta `H2.1` e atribui **Nota 2 (Insuficiente)**, e $\le 8/10$ ($\le 0{,}80$) atribui **Nota 1 (Crítico)**.

#### Q2.2 — Resíduo Pós-Desinstalação (*Objetivo G2 · Métrica M2.2*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q2-2)):** *O aplicativo evita deixar arquivos residuais no armazenamento compartilhado após a desinstalação?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M2.2 = Não avaliado (sem dados)`** ($D_t = 0$ de $10$ ciclos inspecionados via `adb` registrados em [Coleta de Dados](1-coleta.md); hipótese `H2.2`: $M_{2.2} < 1{,}00$ **não verificada**).
* **Análise técnica e critério de resposta:** A resposta depende dos `diff` entre as listagens `_antes.txt` e `_depois.txt` obtidas por `adb shell ls -laR` nos diretórios públicos observáveis (`/sdcard/Android/data`, `obb`, `media`, `Download`, `Documents` e pastas com nome do app), após uso padronizado e remoção pelo método padrão do Android (excluindo-se o armazenamento interno privado, inacessível sem *root* na abordagem de caixa preta). Com $D_t = 10$, a Nota 3 também é inatingível: ausência total de resíduos (`D_r = 0`, `M2.2 = 1,00`) refuta `H2.2` com **Nota 4 (Excelente)**; ocorrência em `1` ciclo (`0,90`) confirma `H2.2` com **Nota 2 (Insuficiente)**; e ocorrência em $\ge 2$ ciclos ($\le 0{,}80$) resulta em **Nota 1 (Crítico)**.

---

### 3.2. Eixo Confiabilidade — Objetivos G3 e G4 (`Q3.1` a `Q4.2`)

#### Q3.1 — Prevenção de Encerramentos Inesperados / *Crashes* (*Objetivo G3 · Métrica M3.1*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q3-1)):** *O aplicativo evita encerramentos forçados (crashes) durante sessões ativas?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M3.1 = Não avaliado (sem dados)`** ($S_t = 0$ de $20$ sessões padronizadas registradas em [Coleta de Dados](1-coleta.md); hipótese `H3.1`: $M_{3.1} \ge 0{,}95$ **não verificada**).
* **Análise técnica e critério de resposta:** O protocolo prevê **20 sessões ativas de 5 minutos** (`100` minutos totais, 1 minuto por atividade: busca, horários, mapa de itinerário, parada/veículo e favoritos), monitoradas por gravação de tela e `adb logcat` (`FATAL EXCEPTION` / `AndroidRuntime`). Sessões interrompidas por *crash* permanecem no denominador $S_t$ e incrementam $S_c$. Quando coletada a amostra completa ($S_t = 20$): `20/20` ($1{,}00$) confere **Nota 4** e confirma `H3.1`; `19/20` ($0{,}95$) confere **Nota 3** e ainda confirma `H3.1`; `18/20` ($0{,}90$) confere **Nota 2** e refuta `H3.1`; e $\le 17/20$ ($< 0{,}90$) confere **Nota 1 (Crítico)**.

#### Q3.2 — Prevenção de Congelamentos > 5 s / *ANRs* (*Objetivo G3 · Métrica M3.2*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q3-2)):** *O sistema previne congelamentos prolongados de tela superiores a 5 segundos (ANRs)?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M3.2 = Não avaliado (sem dados)`** ($S_t = 0$ de $20$ sessões padronizadas registradas em [Coleta de Dados](1-coleta.md); hipótese `H3.2`: $M_{3.2} \ge 0{,}95$ **não verificada**).
* **Análise técnica e critério de resposta:** Avaliada nas mesmas 20 sessões de 5 minutos de `M3.1` mediante gravação com indicador "Mostrar toques" e marcação temporal (e confirmação em `logcat` para diagnóstico formal de *ANR* do Android). Carregamentos assíncronos em que a interface permanece responsiva não são contabilizados em $S_a$. A escala de julgamento exige $S_a = 0$ (`20/20`) para **Nota 4**, $S_a = 1$ (`19/20`, limiar de confirmação de `H3.2`) para **Nota 3**, $S_a = 2$ (`18/20`) para **Nota 2** e $S_a \ge 3$ ($\le 17/20$) para **Nota 1 (Crítico)**.

#### Q4.1 — Mitigação de Perda de Conexão (*Objetivo G4 · Métrica M4.1*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q4-1)):** *O aplicativo evita quebras, exibe mensagens amigáveis e retoma a operação após quedas momentâneas de conexão?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M4.1 = Não avaliado (sem dados)`** ($R_t = 0$ de $10$ ensaios de corte de rede registrados em [Coleta de Dados](1-coleta.md); hipótese `H4.1`: $M_{4.1} < 0{,}85$ **não verificada**).
* **Análise técnica e critério de resposta:** Cada um dos **10 ensaios** em aparelho físico induz Modo Avião por **30 s** a partir de sessão com rede ativa, exigindo três condições simultâneas para aprovação: (i) permanecer aberto e responsivo; (ii) exibir aviso claro de indisponibilidade em até **5 s** após consulta dependente de dados; e (iii) retomar a consulta em até **30 s** após a reconexão. A hipótese `H4.1` formula expectativa negativa de qualidade ($M_{4.1} < 0{,}85$ por ausência de modo *offline*): sua confirmação ocorrerá se $R_s \le 8/10$ (Notas **2** para `7–8/10` ou **1** para `0–6/10`), enquanto $R_s \ge 9/10$ (Nota **3** para `9/10` ou **4** para `10/10`) refutará `H4.1` e demonstrará resiliência adequada.

#### Q4.2 — Tratamento de Perda de GPS (*Objetivo G4 · Métrica M4.2*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q4-2)):** *O sistema reage apropriadamente à ausência ou desativação do sinal de GPS?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M4.2 = Não avaliado (sem dados)`** ($G_t = 0$ de $10$ ensaios de desativação de localização registrados em [Coleta de Dados](1-coleta.md); hipótese `H4.2`: $M_{4.2} \ge 0{,}85$ **não verificada**).
* **Análise técnica e critério de resposta:** Os **10 ensaios** em aparelho físico desativam o serviço de localização por **30 s**, verificando simultaneamente: permanência aberta e responsiva, aviso ao usuário em até **5 s**, manutenção das **consultas independentes da posição do usuário** (como busca textual de linhas e consulta a paradas) e retomada da geolocalização em até **30 s** após reativação. Com $G_t = 10$, a hipótese `H4.2` será confirmada com $G_s = 10$ (**Nota 4**) ou $G_s = 9$ (**Nota 3**), e refutada com $G_s \in \{7, 8\}$ (**Nota 2**) ou $G_s \le 6$ (**Nota 1**).

---

### 3.3. Eixo Adequação Funcional — Objetivos G5 e G6 (`Q5.1` a `Q6.2`)

#### Q5.1 — Precisão Temporal do Horário de Chegada (*Objetivo G5 · Métrica M5.1*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q5-1)):** *As previsões de horários de chegada refletem com precisão a aproximação física?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M5.1 = Não avaliado (sem dados)`** ($n = 0$ de $10$ pares previsão/chegada previstos em campo registrados em [Coleta de Dados](1-coleta.md); hipótese `H5.1`: $M_{5.1} \le 5\text{ min}$ **não verificada**).
* **Análise técnica e critério de resposta:** A métrica utiliza o **erro absoluto mediano em minutos** ($e_i = \lvert t_i^{obs} - t_i^{prev}\rvert / 60$) em 10 eventos de campo (dois blocos de 5, com 2 linhas, no fuso `America/Sao_Paulo`), capturando a primeira previsão da janela e pareando-a à chegada física pela dianteira do veículo. Previsões ausentes ou sem identificação são excluídas como *Não observáveis* sem jamais receber erro zero ($e_i = 0$). Os limiares determinam: $M_{5.1} \le 2\text{ min}$ (**Nota 4**), $\le 5\text{ min}$ (**Nota 3**, limite de confirmação de `H5.1`), $\le 10\text{ min}$ (**Nota 2**) e $> 10\text{ min}$ (**Nota 1**), devendo-se reportar também mínimo, máximo e tamanho $n$ válido para distinguir desvios algorítmicos de anomalias viárias ou de rastreadores embarcados.

#### Q5.2 — Correção de Dados do Mapa e Tolerância Espacial (*Objetivo G5 · Métrica M5.2*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q5-2)):** *A posição dos ônibus e paradas no mapa coincide com a posição espacial real?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M5.2 = Não avaliado (sem dados)`** ($P_t = 0$ de $5$ paradas e $10$ eventos de veículos previstos registrados em [Coleta de Dados](1-coleta.md); hipótese `H5.2`: $M_{5.2} \ge 0{,}85$ para paradas e menor para veículos **não verificada**).
* **Análise técnica e critério de resposta:** Os [Procedimentos de Execução](../fase3/2-procedimentos.md#m52-posicoes-no-mapa-campo) fixam a tolerância espacial prévia em **$\varepsilon = 30\text{ m}$** e a diferença temporal máxima entre captura no app e registro no **GPSTest** (datum WGS84, precisão horizontal $\le 10\text{ m}$) em **$\Delta t_{\max} = 2\text{ s}$** para veículos parados junto à parada, obtendo $d_i$ por medição direta pela escala do mapa ou pela fórmula geodésica de **Haversine** ($R = 6\,371\,000\text{ m}$). Paradas e veículos são pontuados separadamente, prevalecendo para `G5` a **pior nota** entre os dois estratos: nas 5 paradas, apenas `5/5` (Nota 4), `4/5` (`0,80`, Nota 2) e `0–3/5` (Nota 1) são atingíveis; nos 10 veículos, `10/10` (Nota 4), `9/10` (Nota 3), `7–8/10` (Nota 2) e `0–6/10` (Nota 1).

#### Q6.1 — Cobertura das Tarefas Essenciais (*Objetivo G6 · Métrica M6.1*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q6-1)):** *O catálogo de tarefas essenciais executa de ponta a ponta com sucesso?*
* **Resultado apurado e estado atual:** **Não respondida conclusivamente — `M6.1 = Não avaliado (sem dados)`** ($F_t = 0$ de $8$ tarefas essenciais `TE01`–`TE08` registradas em [Coleta de Dados](1-coleta.md); hipótese `H6.1`: $M_{6.1} = 1{,}00$ **não verificada**).
* **Análise técnica e critério de resposta:** O catálogo essencial abrange busca de linha (`TE01`), consulta de horários (`TE02`), exibição de itinerário no mapa (`TE03`), consulta a parada (`TE04`), acompanhamento de veículo em trânsito (`TE05` — podendo ser *Não observável* se `L02` estiver sem operação) e adição/remoção de favoritos (`TE06`–`TE08`). Como $F_t = 8$ tarefas válidas (cada uma com peso $1/8 = 0{,}125$), a **Nota 3 ($\ge 0{,}95$) é matematicamente inatingível**: a conclusão integral (`8/8 = 1,00`) confirma `H6.1` com **Nota 4 (Excelente)**, ao passo que **uma única tarefa com defeito** (`7/8 = 0,875`) refuta `H6.1`, rebaixa `M6.1` diretamente para **Nota 2 (Insuficiente)** e, pelo critério conservador, bloqueia o veredito *Satisfeito* de `G6`.

#### Q6.2 — Completude do Banco de Dados (*Objetivo G6 · Métrica M6.2*)
* **Questão operacional ([Fase 2](../fase2/planejamento-objetivos.md#q6-2)):** *A base de linhas e itinerários do app está plenamente sincronizada com a Semob-DF?*
* **Resultado apurado e estado atual:** **Respondida positivamente com evidência completa — `M6.2 = 1,00` (`20/20`, $100{,}00\%$ de correspondência) · Nota 4 (Excelente) · Hipótese `H6.2` confirmada.**
* **Análise técnica e evidências observadas:** A auditoria estratificada executada em `DISP01` (`Android 13`, aplicativo versão `5.25.1(1149)`) confrontou **20 linhas** sorteadas com viagens em dia útil — **4 linhas por bacia operacional** (`01` a `05`), casos `A01`–`A20` (`M6.2-01` a `M6.2-20`) — contra o **Relatório de Linhas oficial da Semob-DF** (data de referência `17/11/2026`, com as 20 capturas validadas `M6.2_A01_DISP01.jpg` a `M6.2_A20_DISP01.jpg` em [Coleta de Dados](1-coleta.md#m62-completude-do-banco)). Todas as **20 linhas** (`10` circulares e `10` de duplo sentido: Bacia 01 `0.110`, `0.504`, `062.1`, `620.1`; Bacia 02 `0.102`, `0.761`, `180.2`, `2201`; Bacia 03 `0.082`, `0.809`, `119.0`, `870.1`; Bacia 04 `0.008`, `0.336`, `154.2`, `933.1`; Bacia 05 `0.005`, `0.400`, `0.808`, `158.6`) foram localizadas no aplicativo com **100% de correspondência exata** em código, denominação (origem/destino) e sentidos (ida e volta nas linhas bidirecionais), registrando **0 defeitos**, **0 não observáveis** e **0 pendentes**.
* **Ressalva de escopo amostral e registro de anomalia:** O resultado supera o limiar mínimo de `H6.2` ($M_{6.2} \ge 0{,}95$) e demonstra sincronização cadastral plena na amostra auditada; entretanto, conforme as limitações da Fase 3, vale estritamente para a amostra de 20 linhas com operação em dia útil na data de `17/11/2026` (não cobrindo linhas exclusivamente de fim de semana nem atualizações posteriores). Registra-se ainda a anomalia editorial já documentada em [Análise de Dados](2-analise.md#91-anomalias-registradas-nos-dados-coletados-e-na-consolidacao) (digitação `17/19/2026` em `1-coleta.md` no lugar de `17/11/2026`), que não compromete a validade técnica das capturas nem o índice apurado.

---

## 4. Respostas às Questões Norteadoras Transversais (QN1, QN2 e QN3)

Segundo a regra hierárquica definida em [Julgamento por Característica e Resposta às Questões Norteadoras](../fase2/metricas-julgamento.md#julgamento-por-caracteristica-e-resposta-as-questoes-norteadoras), cada **Questão Norteadora Transversal** da Fase 1 é respondida pelo **pior veredito** dentre os dois objetivos de medição associados à respectiva característica da **ISO/IEC 25010:2011**, sem cálculo de média aritmética nem de nota global única para o aplicativo.

### 4.1. QN1 — Portabilidade (*Universalidade e Acesso Equitativo · Decisão D1*)

> **Pergunta ([Fase 1](../fase1/1-proposito.md#3-questoes-norteadoras-transversais) / [Fase 2](../fase2/planejamento-objetivos.md#qn1)):** *O DF no Ponto atende ao parque heterogêneo de dispositivos dos usuários do DF sem barreiras de hardware ou SO (garantindo acesso inclusivo independentemente do tamanho da tela ou limitações técnicas do smartphone)?*

* **Veredito atual:** **Não respondida conclusivamente — `Portabilidade: Não avaliada (dados incompletos)`**.
* **Fundamentação empírica e lacunas:** Ambos os objetivos subordinados permanecem sem dados publicados em [Coleta de Dados](1-coleta.md): **`G1` (Adaptabilidade)** aguarda os 20 pares tela $\times$ configuração de `M1.1` e a bateria de versões do Android de `M1.2`; **`G2` (Instalabilidade)** aguarda os 10 ciclos limpos de instalação via Google Play (`M2.1`) e os 10 ciclos pareados de inspeção de resíduos via `adb` (`M2.2`). Conforme a regra 4 de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo), a ausência dessas evidências impede afirmar ou descartar barreiras de tela compacta, fonte ampliada (`200%`), compatibilidade com versões legadas (`Android 9`) ou acúmulo de arquivos órfãos em aparelhos com armazenamento restrito.
* **Implicação para a Decisão Estratégica `D1`:** Não é possível, no estágio atual, homologar dispositivos de entrada ou recomendar formalmente refatoração de *layout* e empacotamento. O fechamento de `D1` exige a execução completa de `M1.1`–`M2.2`, observando-se que, pela granularidade da amostra, qualquer reprovação em `M1.2` levará imediatamente `Portabilidade` ao estado **Não Satisfeito (Nota 1)** e qualquer falha isolada em `M2.1` ou `M2.2` levará ao estado **Satisfeito com Ressalvas (Nota 2)**.

---

### 4.2. QN2 — Confiabilidade (*Resiliência Operacional sob Condições Reais · Decisão D2*)

> **Pergunta ([Fase 1](../fase1/1-proposito.md#3-questoes-norteadoras-transversais) / [Fase 2](../fase2/planejamento-objetivos.md#qn2)):** *O aplicativo se mantém estável, resiliente a quedas de rede e recuperável durante os deslocamentos urbanos (mesmo sob oscilações de rede 3G/4G, ausência de GPS e horários de pico)?*

* **Veredito atual:** **Não respondida conclusivamente — `Confiabilidade: Não avaliada (dados incompletos)`**.
* **Fundamentação empírica e lacunas:** Os dois objetivos vinculados à característica permanecem abertos por ausência de registros em [Coleta de Dados](1-coleta.md): **`G3` (Maturidade)** carece das 20 sessões padronizadas de 5 minutos (`100` minutos ativos) com gravação e `adb logcat` para quantificar *crashes* (`M3.1`) e congelamentos superiores a 5 segundos (`M3.2`); **`G4` (Tolerância a Falhas)** carece dos 10 ensaios de interrupção induzida de rede (`M4.1`, corte de 30 s) e dos 10 ensaios de desativação de GPS (`M4.2`, corte de 30 s). Sem esses ensaios cronometrados, não há evidência objetiva que comprove ou refute a existência de *ANRs* na renderização de mapas ou de travamentos/carregamento infinito diante de desconexões momentâneas (risco levantado na hipótese `H4.1`).
* **Implicação para a Decisão Estratégica `D2`:** A decisão sobre priorização de mecanismos de tolerância a falhas (avisos em até 5 s, preservação de busca *offline* independente de GPS e retomada em até 30 s) permanece bloqueada até a incorporação dos registros em `1-coleta.md`. Pela regra conservadora, somente notas $\ge 3$ simultaneamente em `M3.1`, `M3.2`, `M4.1` e `M4.2` permitirão declarar `Confiabilidade` **Satisfeita**.

---

### 4.3. QN3 — Adequação Funcional (*Fidelidade da Informação e Utilidade Pública · Decisão D3*)

> **Pergunta ([Fase 1](../fase1/1-proposito.md#3-questoes-norteadoras-transversais) / [Fase 2](../fase2/planejamento-objetivos.md#qn3)):** *O aplicativo entrega informações completas e fidedignas (linhas, horários e mapas) para planejar viagens com segurança?*

* **Veredito atual:** **Não respondida conclusivamente no plano global — `Adequação Funcional: Não avaliada (dados incompletos)`, com evidência parcial positiva consolidada em `M6.2` (100% de completude cadastral na amostra auditada).**
* **Fundamentação empírica e lacunas:**
  * **Dimensão já comprovada (`M6.2` — Completude do Banco):** Na auditoria da amostra estratificada de 20 linhas com operação em dia útil nas cinco bacias do DF (`A01`–`A20`, referência Semob-DF `17/11/2026`), o aplicativo versão `5.25.1(1149)` apresentou **`100,00%` de correspondência (`20/20`, Nota 4 — Excelente)** em código, denominação e sentido de viagem, confirmando `H6.2`. Isso fornece evidência objetiva de que, quanto à **existência cadastral de linhas e sentidos** no catálogo consultável, o *DF no Ponto* reflete fielmente a base oficial da Semob-DF dentro da amostra auditada.
  * **Dimensões ainda pendentes (`M6.1`, `M5.1` e `M5.2`):** A resposta integral a **QN3** — que exige que o cidadão planeje viagens com segurança — **não pode ser declarada satisfeita** apenas pela completude cadastral. Falta comprovar: (i) a execução ponta a ponta das 8 tarefas essenciais em **`M6.1`**, sem a qual o próprio objetivo **`G6`** permanece formalmente *Não avaliado (dados incompletos)*; e (ii) a **fidedignidade dinâmica em campo** medida pelo objetivo **`G5` (Correção)**, isto é, o erro temporal mediano das previsões de chegada (`M5.1`) e a precisão espacial de paradas e veículos dentro da tolerância $\varepsilon = 30\text{ m}$ (`M5.2`).
* **Implicação para a Decisão Estratégica `D3`:** Embora o resultado de `M6.2` (`20/20`, Nota 4) seja um indicativo sólido da integridade da base estática de linhas para apoio à decisão `D3`, o parecer definitivo sobre utilidade pública para planejamento seguro de viagens depende da conclusão de `M6.1` em laboratório e de `M5.1`/`M5.2` em campo — especialmente porque eventuais atrasos de telemetria dos rastreadores embarcados ou falhas de previsão temporal afetam diretamente a confiança do passageiro na parada.

---

### 4.4. Síntese Integrada do Julgamento Transversal

| Questão Norteadora | Característica (Prioridade) | Objetivos / Métricas | Evidência Consolidada em `1-coleta.md` | Veredito Atual | Condição para Fechamento de D1–D3 |
| :---: | :--- | :--- | :--- | :--- | :--- |
| **QN1** | **Portabilidade** *(Prioridade 3 · D1)* | `G1` (`M1.1`, `M1.2`)<br>`G2` (`M2.1`, `M2.2`) | `0/20` (`M1.1`), `0/3` (`M1.2`), `0/10` (`M2.1`), `0/10` (`M2.2`) | **Não avaliada** *(dados incompletos)* | Coletar as 4 métricas; todas precisam atingir Nota $\ge 3$ para `Portabilidade` ser **Satisfeita**. |
| **QN2** | **Confiabilidade** *(Prioridade 2 · D2)* | `G3` (`M3.1`, `M3.2`)<br>`G4` (`M4.1`, `M4.2`) | `0/20` sessões (`M3.1`/`M3.2`), `0/10` (`M4.1`), `0/10` (`M4.2`) | **Não avaliada** *(dados incompletos)* | Executar as 20 sessões de 5 min e os 20 ensaios de falha induzida (`M4.1`–`M4.2`) com vídeo e `logcat`. |
| **QN3** | **Adequação Funcional** *(Prioridade 1 · D3)* | `G5` (`M5.1`, `M5.2`)<br>`G6` (`M6.1`, `M6.2`) | **`M6.2`: `20/20 = 1,00` (Nota 4 — Excelente)**;<br>`0/8` (`M6.1`), `0/10` (`M5.1`), `0/5` e `0/10` (`M5.2`) | **Não avaliada** *(dados incompletos, com evidência positiva em `M6.2`)* | Executar `M6.1` (`8/8` para manter Nota 4 em `G6`) e concluir a coleta de campo de `M5.1` e `M5.2` para julgar `G5`. |

<p class="legenda">Tabela 2. Síntese das respostas às Questões Norteadoras Transversais (QN1 a QN3) e vínculo com as decisões D1 a D3. Fonte: elaboração própria (2026).</p>


---

## 5. Pareceres Técnicos para as Decisões Apoiadas (D1, D2 e D3)

Em conformidade com a atividade **concluir a avaliação** da norma **ISO/IEC 25040:2011** e com as regras de [Julgamento por Característica e Resposta às Questões Norteadoras](../fase2/metricas-julgamento.md#julgamento-por-caracteristica-e-resposta-as-questoes-norteadoras), a emissão de pareceres para as **Decisões Apoiadas (`D1`, `D2` e `D3`)** deve traduzir os vereditos dos objetivos GQM (`G1` a `G6`) em recomendações técnicas acionáveis (**manter**, **corrigir com prioridade** ou **corrigir de imediato**, ou, quando ausentes as evidências requeridas, **suspender a homologação conclusiva até a conclusão da coleta**), sempre ancoradas em evidências auditáveis.

Conforme estabelecido em [Propósito da Avaliação](../fase1/1-proposito.md#2-proposito-da-avaliacao-e-decisoes-apoiadas) e refinado no ciclo GQM de [Abordagem GQM e Metas de Avaliação](../fase2/planejamento-objetivos.md), nenhuma decisão estratégica pode ser fundamentada por médias globais ou inferências não observadas. Os pareceres a seguir consideram exclusivamente a versão de produção avaliada (`5.25.1(1149)` para Android) e os registros efetivamente consolidados em [Coleta de Dados](1-coleta.md) e [Análise de Dados](2-analise.md).

---

### 5.1. Decisão D1 — Homologação e Distribuição no Ecossistema Android (Portabilidade)

* **Alinhamento Fase 1 $\leftrightarrow$ Fase 2:** vinculada à questão norteadora **QN1** (*Universalidade e Acesso Equitativo*) e à característica **Portabilidade** (prioridade 3 no [Modelo de Qualidade e Escopo](../fase1/5-modelo.md#25-representacao-grafica-do-modelo-adaptado)), desdobrada nos objetivos **G1 — Adaptabilidade** (`M1.1` e `M1.2`) e **G2 — Instalabilidade** (`M2.1` e `M2.2`). Tem como finalidade subsidiar os órgãos mantenedores (**Semob-DF / BRB Mobilidade**) e a equipe técnica sobre a necessidade de refatoração visual para telas compactas, homologação de versões legadas do Android e higienização do pacote na distribuição e remoção.
* **Base empírica disponível:** até o fechamento desta etapa, as quatro métricas associadas (`M1.1`: $0/20$ pares tela $\times$ configuração; `M1.2`: $0/3$ versões do Android; `M2.1`: $0/10$ ciclos de instalação; `M2.2`: $0/10$ ciclos de desinstalação) encontram-se no estado **Não avaliado (sem dados)** em [Coleta de Dados](1-coleta.md), mantendo `G1`, `G2` e a característica **Portabilidade** com veredito **Não avaliada (dados incompletos)** e as hipóteses `H1.1` a `H2.2` não verificadas. O único indício indireto registrado em campo/laboratório refere-se à execução da auditoria `M6.2` sobre o dispositivo físico `DISP01` (`Android 13`, app `5.25.1(1149)`), o qual não substitui a bateria padronizada das tarefas essenciais (`TE01`–`TE08`) nem as combinações de hardware e instalação.

#### Parecer Técnico D1

1. **Viabilidade de homologação institucional:** **Parecer inconclusivo — homologação ampla não recomendada no estado atual.** Embora o aplicativo exista em produção na Google Play Store (`5.25.1(1149)`), a ausência completa das medições de `M1.1`, `M1.2`, `M2.1` e `M2.2` impede atestar tecnicamente o atendimento à **QN1** e ao apoio informacional vinculado à meta **11.2 do ODS 11** em aparelhos de entrada. Em particular, não há evidência empírica que descarte a hipótese preditiva **H1.1** (corte ou sobreposição de controles sobre a camada de mapa em telas compactas de `640 × 1136 px, 320 dpi` ou com escala de fonte a `200%`), situação que inviabilizaria a consulta no ponto de ônibus para usuários com dispositivos modestos ou necessidades de ampliação tipográfica.
2. **Compatibilidade com versões do Android:** **Compatibilidade não atestada para o parque heterogêneo do DF.** O plano da [Fase 3](../fase3/2-procedimentos.md#m12-adaptabilidade-de-so-lab) prevê a execução integral de `TE01`–`TE08` em até $3$ versões distintas (`Android 9`, `Android 13` e a versão do aparelho físico `DISP01`). Além de os ensaios ainda não terem sido publicados em `1-coleta.md`, duas condicionantes técnicas devem orientar os tomadores de decisão:
   * **Efeito de granularidade discreta ($O_t = 3$):** conforme demonstrado em [Análise de Dados](2-analise.md#53-sintese-parcial-da-caracteristica-portabilidade-qn1--d1), apenas as notas `4` (`3/3`) e `1` ($\le 2/3$) são atingíveis em `M1.2`; qualquer falha impeditiva em versão legada (como `Android 9`) leva imediatamente `G1` e a característica Portabilidade à reprovação crítica.
   * **Lacuna da faixa intermediária (`Android 10`, `11` e `12`):** mesmo após a execução do plano atual, versões intermediárias muito presentes em aparelhos de entrada no Brasil não são cobertas diretamente pela amostra, exigindo cautela caso a Semob-DF pretenda emitir chancela oficial de compatibilidade multiplataforma.
3. **Ciclo de instalação e remoção limpa:** **Pendente de verificação operacional e de auditoria de resíduos.** Sem os $10$ ciclos pareados na Play Store (`M2.1`) e sem a comparação via `adb` antes/depois nos diretórios públicos (`/sdcard/Android/data`, `obb`, `media`, `Download`, `Documents` e pastas do app) em `M2.2`, não é possível confirmar `H2.1` (sucesso na primeira tentativa) nem refutar `H2.2` (permanência de arquivos órfãos que consomem armazenamento escasso em dispositivos de entrada). Ressalta-se ainda que, para $n = 10$, a Nota 3 é matematicamente inatingível (`9/10 = 0,90 < 0,95` $\implies$ Nota 2) e que a auditoria de caixa preta sem *root* restringe-se ao armazenamento compartilhado, não observando diretórios privados gerenciados pelo próprio sistema operacional.

**Recomendação decisória para D1:** **Manter decisão de homologação sob reserva (suspensa até a coleta)**; concluir prioritariamente os $20$ ensaios de `M1.1`, a execução de `M1.2` nas versões especificadas (idealmente expandida à faixa intermediária em ciclo futuro) e os $10$ ciclos pareados de `M2.1`/`M2.2` em `DISP01`, sanando previamente as pendências de inventário em [Recursos](../fase3/3-recursos.md).

---

### 5.2. Decisão D2 — Estabilidade Operacional e Continuidade de Serviço (Confiabilidade)

* **Alinhamento Fase 1 $\leftrightarrow$ Fase 2:** vinculada à questão norteadora **QN2** (*Resiliência Operacional sob Condições Reais de Uso*) e à característica **Confiabilidade** (prioridade 2 no [Modelo de Qualidade e Escopo](../fase1/5-modelo.md#25-representacao-grafica-do-modelo-adaptado)), desdobrada nos objetivos **G3 — Maturidade** (`M3.1` e `M3.2`) e **G4 — Tolerância a Falhas** (`M4.1` e `M4.2`). Orienta os gestores sobre a necessidade de estabilização do cliente móvel e de priorização arquitetural de tratamento de exceções, cache local / modo *offline* e recuperação graciosa diante de oscilações de rede 3G/4G e ausência de GPS.
* **Base empírica disponível:** até a consolidação deste parecer, nenhuma das quatro métricas de Confiabilidade possui registros publicados em [Coleta de Dados](1-coleta.md): `M3.1` ($0/20$ sessões), `M3.2` ($0/20$ sessões), `M4.1` ($0/10$ ensaios) e `M4.2` ($0/10$ ensaios). Por conseguinte, `G3`, `G4` e a característica **Confiabilidade** permanecem como **Não avaliado (dados incompletos)**, e as hipóteses `H3.1` a `H4.2` permanecem sem verificação empírica.

#### Parecer Técnico D2

1. **Maturidade operacional em uso contínuo (`G3` — `M3.1` e `M3.2`):** **Parecer inconclusivo — estabilidade em campo não comprovada.** No contexto do transporte público, um encerramento inesperado (*crash*) ou congelamento superior a $5\text{ s}$ durante a aproximação do coletivo pode custar a viagem ao passageiro, razão pela qual os limiares da Fase 2 adotaram critérios rigorosos ($\ge 0{,}99$ para Nota 4; $\ge 0{,}95$ para Nota 3; $< 0{,}90$ para Nota 1), tomando como ordem de grandeza os referenciais do *Android vitals* (`1,09%` de *crashes* e `0,47%` de ANRs percebidos). Sem a execução das $20$ sessões cronometradas de $5$ minutos cada ($100$ minutos totais alternando busca, horários, mapa, paradas/veículos e favoritos) acompanhadas de gravação de tela e `adb logcat`, não há lastro para declarar o aplicativo estável sob uso contínuo nem para validar a hipótese `H3.2` sobre possíveis congelamentos no carregamento do mapa.
2. **Tolerância a interrupções de sinal de celular (`M4.1`):** **Risco operacional em aberto quanto à ausência de modo *offline*.** O protocolo da [Fase 3](../fase3/2-procedimentos.md#m41-falha-de-rede-lab-aparelho-fisico) exige que, diante de interrupção total de rede por $30\text{ s}$ (Modo Avião), o aplicativo permaneça aberto e responsivo, informe a indisponibilidade em até $5\text{ s}$ após a consulta e retome a operação em até $30\text{ s}$ após a reconexão. A hipótese preditiva **H4.1** ($M_{4.1} < 0{,}85$) já sinalizava vulnerabilidade estrutural decorrente da falta de modo *offline* e do risco de carregamento infinito sob redes móveis instáveis — além da forte dependência da disponibilidade da API da Semob-DF (que pode paralisar o *front-end* e gerar percepção de falha local). Sem os $10$ ensaios documentados, os mantenedores não dispõem de evidência para validar a resiliência em regiões de sombra de cobertura celular no DF, sendo prematuro dispensar melhorias de *timeout*, mensagens orientativas e cache local.
3. **Tolerância à perda momentânea de GPS (`M4.2`):** **Continuidade funcional sem localização não verificada.** A desativação do GPS por usuários em modo de economia de energia ou a atenuação de sinal em terminais cobertos torna crítica a exigência de que o aplicativo informe a perda de localização em até $5\text{ s}$, mantenha operantes as consultas independentes de geolocalização (busca textual por código de linha e paradas) e retome o posicionamento em até $30\text{ s}$ após a reativação. Embora **H4.2** projete desempenho favorável ($M_{4.2} \ge 0{,}85$), a ausência dos $10$ ensaios de injeção de falha impede confirmar que o fluxo de consulta manual permanece desacoplado do serviço de localização.

**Recomendação decisória para D2:** **Não emitir atestado de maturidade nem descartar refatorações de resiliência**; executar integralmente as atividades `2.2` (`M3.1`/`M3.2` — $20$ sessões com `adb logcat`) e `2.3` (`M4.1`/`M4.2` — $20$ ensaios com marcação temporal em vídeo) antes de definir o *backlog* de tolerância a falhas e tratamento de desconexão para a Semob-DF.

---

### 5.3. Decisão D3 — Confiabilidade da Informação para o Passageiro (Adequação Funcional)

* **Alinhamento Fase 1 $\leftrightarrow$ Fase 2:** vinculada à questão norteadora **QN3** (*Fidelidade da Informação e Utilidade Pública*) e à característica **Adequação Funcional**, eleita como **prioridade 1** no [Modelo de Qualidade e Escopo](../fase1/5-modelo.md#25-representacao-grafica-do-modelo-adaptado) por impactar diretamente a razão de existir do aplicativo para o cidadão. Desdobra-se nos objetivos **G5 — Correção Funcional** (`M5.1` e `M5.2`) e **G6 — Completude e Pertinência Funcional** (`M6.1` e `M6.2`), subsidiando decisões sobre confiabilidade das previsões temporais, fidelidade cartográfica do mapa e sincronização do catálogo oficial com a Semob-DF.
* **Base empírica disponível:** esta é a única dimensão da avaliação que já conta com evidência empírica integralmente coletada, evidenciada e auditada (`M6.2`), porém permanece **incompleta** nos demais indicadores (`M5.1`, `M5.2` e `M6.1`), resultando no veredito parcial **Não avaliada (dados incompletos)** para **Adequação Funcional**, `G5` e `G6`.

#### Parecer Técnico D3

1. **Completude da base de linhas e sentidos (`M6.2`) — Parecer Positivo no Recorte Auditado:**
   * A auditoria da métrica **M6.2 — Completude do Banco** em [Coleta de Dados](1-coleta.md#m62-completude-do-banco) (`DISP01 · Android 13 · app 5.25.1(1149)`) confrontou **$20$ linhas sorteadas** (`A01` a `A20`) do Relatório de Linhas da Semob-DF (data de referência `17/11/2026`), estratificadas de forma equilibrada nas cinco bacias operacionais do STPC-DF ($4$ itens por bacia, contemplando $10$ linhas circulares e $10$ linhas de duplo sentido).
   * Todas as **$20$ linhas auditadas** foram localizadas no aplicativo com código, denominação e sentidos compatíveis com a base oficial (inclusive presença integral dos sentidos de ida e volta nas $10$ linhas bidirecionais), registrando **$0$ defeitos** e **$0$ exclusões**:
     $$
     M_{6.2} = \frac{20}{20} = 1{,}00 \ (100{,}00\%) \implies \textbf{Nota 4 (Excelente)}
     $$
   * O resultado **confirma plenamente a hipótese preditiva H6.2** ($M_{6.2} \ge 0{,}95$) e fornece parecer técnico **favorável** aos mantenedores (Semob-DF / BRB Mobilidade) quanto à sincronização cadastral do banco de linhas operantes em dias úteis na data de referência.
   * **Ressalvas técnicas de interpretação em `M6.2`:** (i) o índice reflete estritamente a amostra de $20$ linhas com operação em dia útil na data `17/11/2026`, não garantindo cobertura de linhas que operam exclusivamente aos finais de semana nem imunidade a atualizações cadastrais posteriores; e (ii) constatou-se erro material de digitação no campo `Data/hora` de `1-coleta.md` (`17/19/2026` em vez de `17/11/2026`), anomalia meramente editorial que não compromete a validade das $20$ capturas (`M6.2_A01_DISP01.jpg` a `M6.2_A20_DISP01.jpg`) nem o cálculo de $M_{6.2}$, mas deve ser corrigida para integridade dos registros.
2. **Cobertura ponta a ponta das tarefas essenciais (`M6.1` / fechamento de `G6`):** **Pendente de verificação.** Embora `M6.2` tenha alcançado Nota 4, a utilidade do catálogo completo só se concretiza se o passageiro conseguir executar com sucesso as $8$ tarefas essenciais (`TE01`–`TE08`: busca, consulta de grade horária, abertura de itinerário, consulta de parada, acompanhamento de veículo e gestão de favoritos). Pelo princípio conservador da pior nota e pela granularidade discreta de $F_t = 8$ (em que Nota 3 é inatingível: `8/8` = Nota 4; `7/8 = 0,875` = Nota 2), uma única falha funcional rebaixará **G6** de **Satisfeito** para **Não Satisfeito**.
3. **Exatidão das previsões de chegada (`M5.1`) e localização cartográfica (`M5.2`):** **Parecer inconclusivo — informação em tempo real não validada.** A decisão **D3** possui peso crítico porque o cidadão utiliza a previsão temporal (`M5.1`) e a posição dos veículos e paradas no mapa (`M5.2`) para decidir entre aguardar na parada ou buscar outra alternativa de transporte. Como as coletas de campo ainda não foram registradas em `1-coleta.md` ($0/10$ chegadas pareadas em `M5.1`; $0/5$ paradas e $0/10$ veículos parados em `M5.2` sob $\varepsilon = 30\text{ m}$, $\Delta t_{\max} = 2\text{ s}$ e GPSTest $\le 10\text{ m}$), não há evidência para confirmar `H5.1` (erro mediano $\le 5\text{ min}$) ou `H5.2` (maior acurácia em paradas do que em veículos por defasagem de telemetria dos rastreadores embarcados). Adicionalmente, no estrato de paradas de `M5.2` ($n = 5$), qualquer único desvio acima de $30\text{ m}$ (`4/5 = 0,80`) leva diretamente à Nota 2, condenando `G5` pelo critério da pior nota.

**Recomendação decisória para D3:** **Reconhecer e manter o processo de sincronização cadastral da base de linhas (`M6.2` = Nota 4)**, porém **condicionar o parecer final sobre confiabilidade da informação em tempo real** à coleta e auditoria imediata das tarefas essenciais (`M6.1`) e das medições de campo (`M5.1` e `M5.2`), mantendo separada a eventual latência de rastreadores e congestionamentos da Semob-DF da responsabilidade direta do cliente Android.

---

### 5.4. Tabela Síntese dos Pareceres Técnicos (D1, D2 e D3)

A tabela a seguir consolida o posicionamento técnico formal emitido para cada decisão apoiada prevista na [Fase 1](../fase1/1-proposito.md) e operacionalizada na [Fase 2](../fase2/planejamento-objetivos.md):

| Decisão | Eixo Estratégico | Pergunta Decisória | Parecer Técnico Emitido | Condicionantes e Próximos Passos |
| :---: | :--- | :--- | :--- | :--- |
| **D1** | **Homologação e Distribuição no Ecossistema Android** *(Portabilidade · `QN1` · `G1`, `G2`)* | O aplicativo `5.25.1(1149)` apresenta adaptabilidade visual, compatibilidade de SO e instalabilidade/remoção limpa suficientes para homologação institucional em dispositivos variados (incluindo entrada)? | **Inconclusivo / Homologação ampla não recomendada no momento.** Todas as métricas associadas (`M1.1`, `M1.2`, `M2.1`, `M2.2`) permanecem **Não avaliadas (sem dados)** em `1-coleta.md`, impedindo validar `H1.1`–`H2.2` ou descartar cortes/sobreposições em telas compactas e resíduos pós-desinstalação. | 1. Concluir e publicar os $20$ casos `T01`–`T05` $\times$ `C01`–`C04` de `M1.1`, os fluxos `TE01`–`TE08` em `M1.2` (`Android 9`, `13` e `DISP01`) e os $10$ ciclos pareados de `M2.1`/`M2.2` via Play Store e `adb`.<br>2. Confirmar inventário definitivo de aparelhos e ID do pacote em `3-recursos.md`.<br>3. Considerar ampliação futura de `M1.2` para a faixa intermediária (`Android 10`–`12`), devido à restrição amostral ($O_t = 3$, apenas notas `4` ou `1`). |
| **D2** | **Estabilidade Operacional e Continuidade de Serviço** *(Confiabilidade · `QN2` · `G3`, `G4`)* | O aplicativo mantém maturidade em sessões contínuas e tolera adequadamente quedas de rede móvel e perda momentânea de GPS sob condições reais de uso urbano? | **Inconclusivo / Estabilidade e resiliência não comprovadas.** As métricas `M3.1`, `M3.2`, `M4.1` e `M4.2` encontram-se **Não avaliadas (sem dados)** ($0/20$ sessões; $0/20$ ensaios), mantendo em aberto os riscos de congelamento no mapa (`H3.2`) e falhas sem aviso por ausência de modo *offline* (`H4.1`). | 1. Executar e registrar as $20$ sessões de $5\text{ min}$ (`M3.1`/`M3.2`) com gravação de tela ("Mostrar toques") e `adb logcat`.<br>2. Executar os $10$ ensaios de corte de rede (`M4.1`) e $10$ de desativação de GPS (`M4.2`) por $30\text{ s}$ (verificando aviso $\le 5\text{ s}$ e retomada $\le 30\text{ s}$).<br>3. Priorizar melhorias de tratamento de erro/cache caso `M4.1` confirme $M_{4.1} < 0{,}85$, separando quedas da API da Semob-DF de falhas do app. |
| **D3** | **Confiabilidade da Informação para o Passageiro** *(Adequação Funcional · `QN3` · `G5`, `G6`)* | A base de linhas está sincronizada com a Semob-DF e as previsões de chegada e posições no mapa possuem exatidão e completude funcional para o planejamento seguro da viagem? | **Parcialmente favorável na completude cadastral (`M6.2`) e inconclusivo na operação em tempo real (`G5` e `M6.1`).** A auditoria de **`M6.2`** alcançou **$20/20 = 1{,}00$ ($100{,}00\%$) — Nota 4 (Excelente)**, confirmando **`H6.2`** para linhas e sentidos em dia útil (`17/11/2026`); contudo, `M6.1`, `M5.1` e `M5.2` estão **Não avaliadas (sem dados)**, mantendo `G5`, `G6` e a característica **Não avaliadas**. | 1. Corrigir o erro editorial de data (`17/19/2026` $\rightarrow$ `17/11/2026`) na tabela de `M6.2` em `1-coleta.md`.<br>2. Executar as $8$ tarefas essenciais (`TE01`–`TE08`) de `M6.1` para fechar `G6` (exige $8/8$ para Nota 4).<br>3. Coletar em campo os $10$ eventos de chegada (`M5.1`) e as posições de $5$ paradas e $10$ veículos parados (`M5.2`, $\varepsilon = 30\text{ m}$, $\Delta t_{\max} = 2\text{ s}$, GPSTest $\le 10\text{ m}$) sob conformidade com a LGPD para fechar `G5` e emitir parecer definitivo de D3. |

<p class="legenda">Tabela síntese dos pareceres técnicos emitidos para as Decisões Apoiadas D1, D2 e D3. Fonte: elaboração própria (2026), com base nas Fases 1, 2, 3 e nos resultados auditados da Fase 4.</p>


---

## 6. Plano de Recomendações e Melhorias Priorizadas

Com base no modelo de qualidade da **ISO/IEC 25010:2011**, nas métricas adaptadas da **ISO/IEC 25023:2016**, nas hipóteses preditivas formuladas na [Fase 2](../fase2/planejamento-objetivos.md) e nas evidências consolidadas até este fechamento na [Análise de Dados](2-analise.md) — em especial a conformidade plena verificada em **M6.2** ($20/20 = 1{,}00$, **Nota 4 — Excelente**) e o estado ainda aberto de **M1.1 a M6.1** (*Não avaliado (sem dados)*) —, esta seção estrutura um plano de ação priorizado para dois públicos complementares:

- **Equipe de Desenvolvimento do *DF no Ponto*:** responsável pela arquitetura do aplicativo Android, camada de interface, resiliência de rede/sensores, gestão de armazenamento local e consumo de telemetria.
- **Semob-DF (Secretaria de Transporte e Mobilidade do Distrito Federal):** responsável pela governança dos dados abertos (catálogo oficial, feeds GTFS e APIs em tempo real), qualidade da telemetria embarcada na frota e sincronização institucional de alterações operacionais.

> **Critério de priorização:** recomendações de prioridade **Alta** atuam sobre riscos capazes de inviabilizar o uso no ponto de ônibus ou invalidar a tomada de decisão (**D1**, **D2** e **D3**); recomendações de prioridade **Média** tratam de degradações relevantes de experiência, governança contínua da base cadastral já aprovada em `M6.2` e higiene de dispositivo; recomendações de prioridade **Baixa** cobrem refinamentos preventivos de compatibilidade e observabilidade de campo.

### 6.1. Matriz de Recomendações Estruturadas

| ID | Prioridade | Característica / Métrica | Diagnóstico / Oportunidade | Ação Técnica Recomendada | Impacto Esperado no Passageiro |
| :---: | :---: | :--- | :--- | :--- | :--- |
| **REC-01** | **Alta** | **Confiabilidade (Tolerância a Falhas)**<br>`M4.1` · `G4` · `D2` | A hipótese preditiva **H4.1** ($M_{4.1} < 0{,}85$) aponta risco de o aplicativo depender integralmente de conectividade ativa, deixando telas em carregamento contínuo sem aviso amigável durante oscilações de rede móvel (3G/4G) comuns em paradas e corredores urbanos. | **Equipe de Dev:** implementar camada de **cache *offline* local** (SQLite/Room) para linhas favoritas, paradas próximas consultadas recentemente, horários programados e itinerários estáticos; exibir indicador explícito de *status* de conexão com prazo máximo de *timeout* ($\le 5\text{ s}$), mensagem orientativa clara e botão de tentativa manual/reconexão automática após retorno do sinal. | Permite consultar linhas, sentidos e horários programados mesmo em áreas de sombra de sinal celular, evitando frustração e incerteza na espera. |
| **REC-02** | **Alta** | **Adequação Funcional (Correção)**<br>`M5.1` e `M5.2` · `G5` · `D3` | A precisão das previsões de chegada (`M5.1`) e da posição dos ônibus no mapa (`M5.2`) depende criticamente da latência e da integridade da **sincronização em tempo real dos veículos** entre os rastreadores embarcados, o *backend* da Semob-DF e o cliente móvel (observando que hoje o app não exibe o *timestamp* da última atualização do veículo). | **Semob-DF + Equipe de Dev:** reduzir o intervalo de *polling*/atualização via *streaming* ou *delta updates* de telemetria; filtrar pacotes GNSS inválidos ou congelados no servidor; exibir no cartão de cada veículo e na previsão o **horário/idade da última leitura de telemetria** (ex.: *"atualizado há 15 s"*) e sinalizar visualmente quando a estimativa for apenas programada (tabela horária) e não em tempo real. | Aumenta a confiança do cidadão ao decidir entre aguardar o ônibus ou buscar rota alternativa, reduzindo embarques perdidos por atraso de mapa ou "ônibus fantasma". |
| **REC-03** | **Alta** | **Portabilidade (Adaptabilidade)**<br>`M1.1` · `G1` · `D1` | A hipótese **H1.1** ($M_{1.1} < 1{,}00$) antecipa sobreposições, truncamentos ou ocultação de controles sobre o mapa em smartphones com tela compacta e sob ampliação de acessibilidade de sistema (**fonte a 200%**, critério 1.4.4 da **WCAG 2.1**), comprometendo o acesso equitativo (**QN1**). | **Equipe de Dev:** revisar *layouts* XML/Compose com contêineres roláveis (`ScrollView`/`ConstraintLayout` adaptável), substituir alturas fixas em `dp` por dimensionamento elástico, adotar `sp` com limites seguros de quebra de linha (*ellipsize* apenas em conteúdo secundário) e validar automaticamente telas compactas e escalas de fonte `100%`–`200%` em *CI* com testes instrumentados de acessibilidade. | Garante leitura integral de códigos, destinos, horários e botões de ação para pessoas com baixa visão, idosos e usuários de aparelhos de entrada com telas menores. |
| **REC-04** | **Alta** | **Governança da Avaliação (Fase 4)**<br>`M1.1`–`M6.1` · `G1`–`G6` · `D1`–`D3` | Até o fechamento da [Análise de Dados](2-analise.md), apenas `M6.2` teve coleta publicada ($20/20$), mantendo 11 métricas como *Não avaliado (sem dados)* e impedindo veredito definitivo para `G1`–`G6` pelo critério conservador. | **Equipe de Avaliação / Semob-DF:** concluir a execução e publicação em [Coleta de Dados](1-coleta.md) dos ensaios pendentes (`M1.1`–`M6.1`) respeitando o protocolo de amostras da Fase 3, mantendo a versão `5.25.1(1149)` (ou segregando nova *build*) e anexando todas as evidências em `dados/fase4/`. | Viabiliza parecer conclusivo e auditável para as decisões estratégicas **D1**, **D2** e **D3**, convertendo hipóteses em diagnósticos empíricos rastreáveis. |
| **REC-05** | **Média** | **Adequação Funcional (Completude)**<br>`M6.2` · `G6` · `D3` | Embora **M6.2** tenha obtido **Nota 4 — Excelente** ($20/20 = 1{,}00$, 0 defeitos em `17/11/2026`), a amostra restringiu-se a linhas com viagem em dia útil, e o catálogo do STPC-DF sofre inclusões, alterações de itinerário e ajustes de fim de semana frequentes. | **Semob-DF + Equipe de Dev:** instituir *pipeline* automatizado de **manutenção e validação contínua do banco GTFS** (e espelhamento do Relatório de Linhas oficial), executando checagens automáticas de integridade referencial (códigos, sentidos ida/volta, *shapes* e paradas) antes de cada publicação e notificando o app sobre atualizações incrementais do catálogo, incluindo linhas exclusivas de sábados, domingos e feriados. | Preserva a completude comprovada ($100\%$) ao longo do tempo, impedindo que novas linhas ou alterações de trajeto deixem o passageiro sem informação oficial no aplicativo. |
| **REC-06** | **Média** | **Confiabilidade (Maturidade)**<br>`M3.1` e `M3.2` · `G3` · `D2` | Sessões contínuas de acompanhamento no mapa envolvendo renderização de múltiplos veículos e chamadas de rede concorrentes podem gerar *crashes* (`M3.1`) ou travamentos da *thread* principal / ANRs $> 5\text{ s}$ (`M3.2`), especialmente em aparelhos de entrada. | **Equipe de Dev:** mover decodificação JSON/GTFS, cálculo de rotas e clusterização de marcadores de mapa para *threads* assíncronas (*coroutines*/WorkManager), aplicar paginação/virtualização de marcadores visíveis no *viewport* do mapa e monitorar taxas de *crash* e ANR via *Android Vitals* (meta $\le 1{,}09\%$ de sessões com falha). | Assegura fluidez na navegação do mapa durante a espera na parada, evitando fechamentos abruptos no momento de aproximação do ônibus. |
| **REC-07** | **Média** | **Confiabilidade (Tolerância a Falhas)**<br>`M4.2` · `G4` · `D2` | A desativação ou perda momentânea de sinal GNSS (`M4.2`), bem como restrições de economia de energia do Android, podem bloquear buscas manuais que não dependem de localização ou impedir a retomada automática do posicionamento. | **Equipe de Dev:** desacoplar totalmente o módulo de **busca textual de linhas e horários** da permissão/estado do GPS, exibir aviso não bloqueante quando a localização estiver indisponível (oferecendo seleção manual de parada/região) e reativar os *listeners* do *FusedLocationProvider* automaticamente assim que o sensor voltar a responder. | Mantém o aplicativo útil para planejamento de viagens mesmo em locais fechados (terminais subterrâneos/cobertos) ou com GPS desativado para poupar bateria. |
| **REC-08** | **Média** | **Portabilidade (Instalabilidade)**<br>`M2.1` e `M2.2` · `G2` · `D1` | A hipótese **H2.2** ($M_{2.2} < 1{,}00$) prevê persistência de arquivos residuais em armazenamento compartilhado após desinstalação, desperdiçando espaço em smartphones de entrada com memória interna limitada. | **Equipe de Dev:** migrar caches temporários, mapas *offline* e logs para os diretórios gerenciados pelo sistema (`Context.getCacheDir()` / `getExternalFilesDir()`), eliminando gravações em pastas públicas persistentes (`/sdcard/Download`, `/Documents` ou diretórios órfãos) para que o Android remova 100% dos artefatos na desinstalação. | Evita acúmulo silencioso de dados residuais após remoção ou reinstalação do aplicativo, preservando o armazenamento interno de aparelhos modestos. |
| **REC-09** | **Baixa** | **Adequação Funcional (Completude)**<br>`M6.1` · `G6` · `D3` | Na amostra discreta de 8 tarefas essenciais (`M6.1`), uma única falha funcional derruba o objetivo `G6` da Nota 4 para a Nota 2, exigindo confiabilidade ponta a ponta nos fluxos principais (`TE01`–`TE08`). | **Equipe de Dev:** automatizar testes de ponta a ponta (*UI tests* para pesquisa por código/destino, visualização de itinerário ida/volta, favoritos e alertas) na esteira de integração contínua antes da publicação de novas versões na Play Store. | Reduz a chance de regressões funcionais atingirem o usuário final após atualizações de rotina do aplicativo. |
| **REC-10** | **Baixa** | **Portabilidade (Adaptabilidade de SO)**<br>`M1.2` · `G1` · `D1` | O plano de `M1.2` cobre os extremos (`Android 9` e `Android 13`) e o aparelho físico de referência (`DISP01`), deixando a faixa intermediária (`Android 10`, `11` e `12`) sem cobertura direta na amostra acadêmica. | **Equipe de Dev:** incluir matriz de testes em *Firebase Test Lab* ou emuladores abrangendo API levels 28 a 34 (`Android 9` a `14`), com atenção especial às mudanças de permissões granulares de localização em segundo plano introduzidas a partir do Android 10/11. | Assegura comportamento consistente das permissões de mapa e localização em toda a base instalada de smartphones Android no DF. |

<p class="legenda">Tabela 6.1. Plano de recomendações técnicas e institucionais priorizadas para o DF no Ponto e a Semob-DF. Fonte: elaboração própria (2026).</p>

### 6.2. Diretrizes de Execução Conjunta (Equipe de Desenvolvimento e Semob-DF)

1. **Ciclo curto de correção arquitetural (*front-end* móvel):** priorizar **REC-01** (cache *offline* + tolerância a quedas de rede) e **REC-03** (responsividade a telas compactas e fonte 200%), pois endereçam diretamente barreiras de exclusão tecnológica (**QN1**) e falhas de uso em mobilidade urbana (**QN2**).
2. **Protocolo de governança de dados abertos (Semob-DF):** institucionalizar a combinação de **REC-02** (qualidade e frescor da telemetria em tempo real) e **REC-05** (automação de validação GTFS/Relatório de Linhas), garantindo que a excelência cadastral observada em `M6.2` ($1{,}00$) seja mantida e estendida à precisão operacional dinâmica (`M5.1` e `M5.2`).
3. **Fechamento empírico antes de nova versão (*baseline*):** executar **REC-04** sobre a versão `5.25.1(1149)` antes de incorporar alterações de código, permitindo comparação direta de *antes e depois* nas reavaliações futuras.

---

## 7. Análise de Ameaças à Validade e Limitações do Estudo

Seguindo as boas práticas de engenharia de software empírica e os requisitos de transparência da **ISO/IEC 25040:2011**, analisam-se abaixo as ameaças à validade que condicionam a interpretação dos resultados obtidos na Fase 4, articulando os riscos previstos no [Método de Avaliação](../fase3/1-metodo.md#6-limitacoes-do-metodo-e-ameacas-a-validade) com os achados da [Análise de Dados](2-analise.md).

### 7.1. Validade Interna

A **validade interna** diz respeito ao grau em que os resultados observados refletem efetivamente o comportamento do aplicativo avaliado, livres de vieses operacionais, falhas de instrumentação ou contaminação por fatores externos durante os ensaios de caixa-preta:

- **Controle de viés na execução de caixa-preta:** sem acesso ao código-fonte ou *backend*, a atribuição de defeitos poderia sofrer subjetividade entre avaliadores. Para mitigar esse viés, a Fase 3 estabeleceu roteiros fechados por métrica (`M1.1`–`M6.2`), critérios binários ou numéricos objetivos por caso, teste-piloto conduzido por avaliador distinto do autor do roteiro e **auditoria independente de 10% dos registros**.
- **Separação entre falhas do aplicativo e falhas de infraestrutura externa:** quedas momentâneas da Play Store (`M2.1`), da API governamental da Semob-DF ou ausência de operação de linha em campo (`M5.1`/`M6.1`) podem gerar falsos positivos contra o cliente móvel. O protocolo adotado segregou os estados **`Defeito`** (falha atribuível ao app, nunca excluída) e **`Não observável`** (impedimento externo documentado com evidência e contabilizado à parte), evitando distorção dos denominadores válidos.
- **Instrumentação e precisão de cronometragem/GNSS:** nas medições de campo previstas para `M5.1` e `M5.2`, utiliza-se relógio sincronizado e receptor GNSS validado pelo aplicativo *GPSTest* com exigência de precisão horizontal $\le 10\text{ m}$ (abaixo da tolerância $\varepsilon = 30\text{ m}$) e sincronia máxima $\Delta t_{\max} \le 2\text{ s}$ entre a captura da tela do app e a posição física observada. Além disso, o controle da versão em teste (`5.25.1(1149)`) impede mistura de *builds* caso ocorram atualizações na Play Store durante a janela de coleta.
- **Integridade dos registros publicados:** durante a auditoria de `1-coleta.md`, identificou-se erro material de digitação na coluna `Data/hora` dos 20 registros de `M6.2` (`17/19/2026` em lugar de `17/11/2026`). Embora não altere as capturas de tela nem o resultado $M_{6.2} = 1{,}00$, sua identificação explícita na Seção 9 de [Análise de Dados](2-analise.md#91-anomalias-registradas-nos-dados-coletados-e-na-consolidacao) garante rastreabilidade sem ocultação de inconsistências.

### 7.2. Validade Externa

A **validade externa** refere-se aos limites de generalização dos achados para além dos dispositivos, locais, horários e recorte temporal efetivamente avaliados:

- **Amostragem intencional delimitada de linhas, paradas e horários:** o estudo foi dimensionado à capacidade acadêmica da equipe (`20` casos em `M1.1`, `10` ciclos em `M2.1`/`M2.2`, `20` sessões em `M3.1`/`M3.2`, `10` ensaios em `M4.1`/`M4.2`, `10` chegadas em `M5.1`, `5` paradas e `10` veículos em `M5.2`, `8` tarefas em `M6.1` e `20` itens em `M6.2`). Portanto, os índices apurados **não constituem estimativa estatística populacional** para toda a frota do STPC-DF nem certificação oficial do produto.
- **Recorte específico de `M6.2`:** os 20 itens auditados (`A01`–`A20`, 4 por bacia operacional de `01` a `05`) foram sorteados exclusivamente dentre **linhas com viagens em dia útil** no Relatório de Linhas da Semob-DF de `17/11/2026`. O resultado $1{,}00$ vale estritamente para essa amostra e data de referência, não garantindo automaticamente a mesma completude para linhas exclusivas de fins de semana/feriados ou após alterações cadastrais posteriores.
- **Cobertura parcial de hardware e sistema operacional:** na métrica `M1.2`, testam-se os extremos definidos (`Android 9` e `Android 13`) e o aparelho físico `DISP01`, deixando **`Android 10`, `11` e `12` sem verificação direta**. Adicionalmente, o uso de emuladores do Android Studio em `M1.1` e `M1.2` garante precisão em resolução e escala de fonte, mas pode divergir de dispositivos físicos de entrada em gestão térmica, consumo de RAM e latência de renderização.
- **Exclusões explícitas de escopo:** os resultados aplicam-se exclusivamente ao aplicativo móvel Android (`5.25.1(1149)`), não sendo generalizáveis à plataforma web (`dfnoponto.com.br`), a tablets, a outros sistemas operacionais móveis ou ao desempenho interno isolado do *backend* da Semob-DF.

### 7.3. Validade de Construto

A **validade de construto** avalia se as 12 métricas operacionalizadas representam adequadamente os conceitos de qualidade da **ISO/IEC 25010:2011** e **ISO/IEC 25023:2016** no contexto específico do transporte público do Distrito Federal:

- **Adequação do modelo GQM e normas SQuaRE:** a decomposição hierárquica em 3 características, 6 objetivos (`G1`–`G6`), 12 questões (`Q1.1`–`Q6.2`) e 12 métricas (`M1.1`–`M6.2`) adapta diretamente medidas normalizadas da **ISO/IEC 25023:2016** às demandas concretas do passageiro do DF — incorporando o critério 1.4.4 da **WCAG 2.1** (texto ampliável a 200% em `M1.1`), os patamares do *Android Vitals* (`M3.1`/`M3.2`) e parâmetros validados na literatura de informação de trânsito em tempo real para `M5.1` (erro absoluto mediano em minutos, robusto a *outliers*).
- **Limitações de observabilidade inerentes à caixa-preta:**
  - Em `M2.2`, sem permissões *root*, a auditoria de resíduos pós-desinstalação limita-se aos diretórios de armazenamento compartilhado inspecionáveis via `adb` (`/sdcard/Android/data`, `obb`, `media`, `Download`, `Documents`), não capturando eventuais vestígios em partições internas gerenciadas pelo sistema. Além disso, conforme registrado na [Rastreabilidade GQM](../fase2/rastreabilidade-diagrama%20GQM.md), `M2.2` possui vínculo indireto com a meta de acesso universal (`D1`).
  - Em `M5.2` (veículos), como o aplicativo não exibe o instante exato de geração do pacote de telemetria de cada ônibus, restringiu-se a medição a **veículos parados junto à parada** com $\Delta t \le 2\text{ s}$; ainda assim, o erro espacial medido combina eventual imprecisão do app com latência acumulada entre o rastreador embarcado e o servidor.
  - Em `M6.2`, a presença das linhas e itinerários no catálogo do app avalia a **completude informacional frente à base oficial**, não equivalendo à cobertura territorial ou qualidade física da oferta de transporte público.

### 7.4. Validade de Conclusão

A **validade de conclusão** assegura que as inferências, notas e vereditos emitidos decorram de regras matemáticas e estatísticas rigorosas, sem manipulação *post-hoc*:

- **Fixação *a priori* de fórmulas e limiares ordinais:** todas as equações, unidades de contagem, escalas ordinais (`1` a `4`, seguindo a taxonomia de Stevens/NIST) e limiares de conversão foram congelados na [Fase 2](../fase2/metricas-julgamento.md) antes de qualquer coleta na Fase 4, impedindo o ajuste oportunista de critérios após a observação dos dados.
- **Rigor da escala ordinal e critério conservador da pior nota:** reconhecendo que notas ordinais (`1` a `4`) não possuem intervalos iguais nem aditividade, **proibiu-se o cálculo de média aritmética** entre métricas ou objetivos. Adotou-se a atribuição da maior nota cujo limiar é atendido pelo valor exato sem arredondamento e a **regra conservadora da pior nota** (entre métricas filhas em `G1`–`G6`, entre paradas e veículos em `M5.2`, e entre objetivos de cada característica para responder a `QN1`–`QN3` e subsidiar `D1`–`D3`), impedindo que notas altas mascarem falhas críticas em outra dimensão.
- **Granularidade discreta em amostras pequenas ($n < 20$):** conforme demonstrado na Fase 3 e na [Análise de Dados](2-analise.md#43-conversao-discreta-em-amostras-pequenas-e-regras-de-agregacao), quando $n < 20$ cada ocorrência altera a proporção em $1/n$, tornando determinadas faixas da escala matematicamente inatingíveis (`M1.2` com $O_t = 3$ só permite notas `4` ou `1`; `M2.1`, `M2.2`, `M5.2` paradas e `M6.1` não permitem atingir Nota `3`, caindo diretamente de `4` para `2` diante de uma única falha). Por essa razão, os resultados são sempre acompanhados da contagem absoluta e interpretados como **indicativos da amostra observada**.
- **Bloqueio de vereditos prematuros sob incompletude de coleta:** em estrita conformidade com a regra 4 de cálculo da Fase 2 e com a **ISO/IEC 25040:2011**, a ausência de publicação das coletas de `M1.1` a `M6.1` em `1-coleta.md` impede a emissão de vereditos globais definitivos para `G1`–`G6`, preservando o estado explícito **Não avaliado (dados incompletos)** em vez de extrapolar ou inferir aprovação a partir do único resultado positivo já consolidado (`M6.2` = Nota 4).

| Dimensão de Validade | Principais Ameaças Identificadas | Mecanismos de Controle e Mitigação Adotados | Limitação Residual na Interpretação |
| :--- | :--- | :--- | :--- |
| **Interna** | Subjetividade em caixa-preta; confusão entre falha do app e indisponibilidade externa; erro de data em `1-coleta.md`; variação de versão. | Roteiros fechados, teste-piloto independente, auditoria de 10%, classificação formal (`Defeito` vs. `Não observável`), controle de *build* (`5.25.1(1149)`) e registro explícito da anomalia de data (`17/19/2026`). | Dependência da integridade de preenchimento manual das tabelas pendentes e impossibilidade de inspecionar o código-fonte. |
| **Externa** | Amostra intencional reduzida; sorteio de `M6.2` restrito a dias úteis (`17/11/2026`); lacuna de `Android 10`–`12` em `M1.2`; uso de emuladores; exclusão de web/iOS/tablets. | Estratificação pelas 5 bacias operacionais (`A01`–`A20`), delimitação explícita do alvo e registro do ambiente em cada caso. | Resultados não estimam taxas populacionais do STPC-DF nem cobrem linhas exclusivas de fim de semana ou versões intermediárias do Android. |
| **Construto** | Observação de resíduos limitada a pastas compartilhadas (`M2.2`); ausência de *timestamp* de telemetria no app (`M5.2`); medição cadastral vs. oferta viária (`M6.2`). | Alinhamento GQM às normas ISO/IEC 25010/25023/25012, WCAG 2.1 (1.4.4) e protocolo de veículo parado com $\Delta t \le 2\text{ s}$ e GPSTest $\le 10\text{ m}$. | Latência acumulada entre rastreador embarcado e servidor em `M5.2` e resíduos internos privados do Android em `M2.2` não são diretamente observáveis. |
| **Conclusão** | Uso indevido de médias em escala ordinal; saltos discretos em amostras $n < 20$; risco de falsa aprovação com coleta parcial (`1` de `12` métricas). | Limiares congelados *a priori* na Fase 2, proibição de média aritmética, critério conservador da pior nota, tabela discreta de notas e estado obrigatório *Não avaliado (dados incompletos)*. | Vereditos de `G1`–`G6`, `QN1`–`QN3` e `D1`–`D3` permanecem abertos até a publicação integral de `M1.1`–`M6.1`; amostras pequenas têm caráter indicativo. |

<p class="legenda">Tabela 7.1. Síntese das ameaças à validade (interna, externa, de construto e de conclusão), controles aplicados e limitações residuais. Fonte: elaboração própria (2026).</p>

---

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*. Geneva: International Organization for Standardization, 2011.

[2] ISO. *ISO/IEC 25010:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — System and software quality models*. Geneva: International Organization for Standardization, 2011.

[3] ISO. *ISO/IEC 25023:2016 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*. Geneva: International Organization for Standardization, 2016.

[4] ISO. *ISO/IEC 25012:2008 — Software engineering — Software product Quality Requirements and Evaluation (SQuaRE) — Data quality model*. Geneva: International Organization for Standardization, 2008.

[5] SEMOB-DF — Secretaria de Transporte e Mobilidade do Distrito Federal. *Dados do Sistema de Transporte Público do DF — Relatório de Linhas (DF no Ponto)*. Disponível em: <https://www.semob.df.gov.br/dados-do-sistema-de-transporte-publico-do-df>. Acesso em: 17 nov. 2026.

[6] W3C. *Web Content Accessibility Guidelines (WCAG) 2.1 — Success Criterion 1.4.4 Resize Text*. Disponível em: <https://www.w3.org/TR/WCAG21/#resize-text>. Acesso em: 11 nov. 2026.

[7] GOOGLE. *Android Developers — Android vitals: bad behavior thresholds*. Disponível em: <https://developer.android.com/google/play/vitals>. Acesso em: 13 nov. 2026.

[8] NATIONAL INSTITUTE OF STANDARDS AND TECHNOLOGY (NIST). *Metrics and Measures — Measurement Scales*. Disponível em: <https://www.nist.gov/itl/ai/ai-standards-and-guidelines-group/metrics-and-measures>. Acesso em: 11 nov. 2026.

[9] FENTON, Norman; BIEMAN, James. *Software Metrics: A Rigorous and Practical Approach*. 3. ed. Boca Raton: CRC Press, 2014.

[10] WOHLIN, Claes et al. *Experimentation in Software Engineering*. Berlin: Springer, 2012.

[11] BRASIL. *Lei nº 13.709, de 14 de agosto de 2018*. Lei Geral de Proteção de Dados Pessoais (LGPD). Diário Oficial da União: seção 1, Brasília, DF, 15 ago. 2018.

[12] EQUIPE CAROL SHAW. [Propósito da Avaliação — Fase 1](../fase1/1-proposito.md); [Descrição do Produto — Fase 1](../fase1/3-descricao.md); [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md); [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md); [Rastreabilidade e Diagrama GQM — Fase 2](../fase2/rastreabilidade-diagrama%20GQM.md); [Método de Avaliação — Fase 3](../fase3/1-metodo.md); [Procedimentos de Execução — Fase 3](../fase3/2-procedimentos.md); [Coleta de Dados — Fase 4](1-coleta.md); [Análise de Dados — Fase 4](2-analise.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Emissão dos vereditos dos objetivos, respostas às questões norteadoras, pareceres das decisões D1-D3 e recomendações da Fase 4 (#50) | [João Guilherme Capozzi](https://github.com/jonas3688) | 18/11/2026 | — | — |
