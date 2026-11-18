# Fase 4 — Análise de Dados

## 1. Introdução

Este documento registra a etapa de **análise e julgamento dos dados coletados** na avaliação de qualidade do aplicativo móvel **DF no Ponto** (plataforma Android, versão de referência `5.25.1(1149)`), conforme especificado em [Descrição do Produto](../fase1/3-descricao.md#alvo-da-avaliacao). No processo normativo da **ISO/IEC 25040:2011**, esta atividade integra a etapa de **executar a avaliação** (cálculo das métricas, aplicação dos critérios de julgamento e avaliação dos resultados), atuando como elo entre os registros brutos de [Coleta de Dados](1-coleta.md) e a consolidação final em [Resultados e Conclusões](3-resultados.md).

Seguindo as diretrizes de [Introdução da Fase 4](introducao.md) e de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md), a Fase 4 **não redefine** fórmulas, escalas de medição, limiares de pontuação nem planos de amostragem. Toda a análise preserva integralmente o desdobramento *Goal–Question–Metric* (GQM) da [Fase 2](../fase2/planejamento-objetivos.md) — composto por **3 características da ISO/IEC 25010** (**Portabilidade**, **Confiabilidade** e **Adequação Funcional**), **6 objetivos de medição** (`G1` a `G6`), **12 questões operacionais** (`Q1.1` a `Q6.2`) e **12 métricas** (`M1.1` a `M6.2`) — bem como os roteiros e amostras fixados na [Fase 3](../fase3/2-procedimentos.md).

---

## 2. Metodologia de Consolidação dos Dados e Tratamento de Exceções

A consolidação unifica os registros de ensaios em laboratório (`M1.1` a `M4.2`, `M6.1` e `M6.2`) e medições em campo (`M5.1` e `M5.2`) documentados em [Coleta de Dados](1-coleta.md), aplicando o fluxo de contabilização tabular de [Método de Avaliação](../fase3/1-metodo.md#2-como-o-metodo-funciona-fluxo-de-utilizacao) e as [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo) da Fase 2.

### 2.1. Unificação e Rastreabilidade das 12 Métricas

1. **Padronização de entrada e auditoria:** cada caso executado é importado da planilha única de coleta definida em [Procedimentos de Execução](../fase3/2-procedimentos.md#6-registro-e-evidencias) (`ID`, `Métrica` e `Caso`, `Avaliador` e `Data/hora`, `Ambiente`, `Estado`, `Valor medido`, `Evidência` e `Observações`). Conforme a regra 7 de [Regras comuns](../fase3/2-procedimentos.md#2-regras-comuns), ao menos **10% dos registros de cada métrica** (mínimo de 1 caso) passam por conferência cruzada de um segundo integrante para validar a correspondência entre o estado anotado e a evidência anexada.
2. **Controle de versão e homogeneidade de série:** todas as medições devem registrar a versão instalada (`5.25.1(1149)`), o dispositivo (ex.: `DISP01`) e a versão do Android. Caso ocorra atualização do aplicativo durante a coleta, os registros de versões distintas são separados e não podem ser misturados no mesmo denominador.
3. **Unidade de contagem e integridade das falhas:** numerador e denominador utilizam inteiros não negativos na mesma unidade de contagem, sendo cada unidade contabilizada uma única vez por métrica (em `M3.1` e `M3.2`, $0 \le S_c \le S_t$ e $0 \le S_a \le S_t$, com $S_t$ informado separadamente para cada métrica). **Falhas observadas do aplicativo jamais são excluídas para melhorar o resultado**; repetições só são admitidas quando a falha decorre exclusivamente do ambiente de teste (como queda de bateria ou erro do avaliador), com registro explícito do motivo.
4. **Regra específica de consolidação espacial (`M5.2`):** paradas (`5` pontos) e veículos (`10` eventos com $\Delta t \le 2\text{ s}$ e precisão de referência $\le 10\text{ m}$) são consolidados e pontuados **separadamente**, conforme [Verificação Espacial](../fase2/metricas-julgamento.md#verificacao-espacial-m52). Uma proporção consolidada complementar pode ser informada somando acertos e totais válidos antes da divisão, mas o julgamento de `G5` utiliza a pior nota entre os dois grupos.
5. **Precisão numérica:** proporções são calculadas no domínio $[0, 1]$ (podendo ser acompanhadas do equivalente percentual $100 \times M$), e `M5.1` é expressa em minutos. Os limiares de pontuação são aplicados **antes de qualquer arredondamento**, apresentando-se os resultados finais com **duas casas decimais**.

### 2.2. Classificação de Estados e Tratamento Formal de Exceções

Cada registro bruto em [Coleta de Dados](1-coleta.md) assume exatamente um dos quatro estados previstos na Tabela 1 de [Procedimentos de Execução](../fase3/2-procedimentos.md#2-regras-comuns), com o tratamento analítico sintetizado abaixo:

| Estado do registro | Condição de ocorrência | Efeito na amostra válida | Tratamento formal na Fase 4 (conforme Fases 2 e 3) |
| :--- | :--- | :--- | :--- |
| **Conforme** | Caso atendeu integralmente ao critério de aprovação do roteiro | Entra no numerador favorável (ou conjunto válido $n$) e no denominador | Contabilizado positivamente na fórmula da métrica, mediante evidência vinculada. |
| **Defeito** *(Não conforme)* | O aplicativo falhou no critério funcional, visual, de estabilidade ou de tolerância | Entra apenas no denominador (ou incrementa $D_r, S_c, S_a, F_f$) | Mantido obrigatoriamente na amostra válida; não pode ser descartado nem substituído por nova tentativa favorável. |
| **Não observável** | Impedimento externo ao aplicativo (ex.: linha `L02` sem operação em `TE05`, loja indisponível, ausência prévia de rede em `M4.1`, diretório inacessível em `M2.2`, previsão ausente/identificação insuficiente em `M5.1`, ou $\Delta t > 2\text{ s}$ / precisão GPS $> 10\text{ m}$ em `M5.2`) | Excluído do denominador válido (e de $n$) | A exclusão exige justificativa documentada e contagem separada. Em `M5.1`, ausências e falhas de identificação **nunca recebem erro zero** ($e_i = 0$). Se todas as execuções forem não observáveis (denominador zero ou amostra vazia), a métrica é declarada **Não avaliado (sem dados)**, sem nota. |
| **Pendente** | Dúvida de classificação entre avaliadores ou registro ainda não finalizado | Estado transitório; impede fechamento definitivo da métrica afetada | Deve ser resolvido por revisão cruzada de um segundo avaliador antes do cálculo final. Caso casos obrigatórios permaneçam pendentes ou não coletados (coleta parcial), mantém-se a transparência dos itens observados, mas o objetivo associado recebe **Não avaliado (dados incompletos)** e **não pode ser declarado satisfeito**. |

<p class="legenda">Tabela 1. Regras de consolidação de estados e tratamento de exceções. Fonte: elaboração própria (2026), com base em Fases 2 e 3.</p>

---

## 3. Matriz Sintética dos Dados Brutos Coletados

A Tabela 2 consolida o quantitativo previsto em [Procedimentos de Execução](../fase3/2-procedimentos.md#5-amostras-e-limitacao), a situação atual dos registros em [Coleta de Dados](1-coleta.md) e as variáveis de entrada definidas em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#detalhamento-das-metricas) para cada métrica.

| Métrica | Objetivo / Questão | Variável de amostra válida | Amostra prevista (Fase 3) | Executados em `1-coleta.md` | Não observáveis (excluídos) | Pendentes | Amostra válida apurada | Resultados favoráveis / defeitos | Situação na consolidação |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :--- | :--- |
| **M1.1** — Adaptabilidade de Hardware (Telas) | G1 · Q1.1 | $T_t$ | 20 casos (`T01`–`T05` × `C01`–`C04`) | — | — | — | $T_t = \text{—}$ | $T_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M1.2** — Adaptabilidade de SO | G1 · Q1.2 | $O_t$ | 3 versões (Android 9, 13 e aparelho físico) | — | — | — | $O_t = \text{—}$ | $O_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M2.1** — Sucesso de Instalação | G2 · Q2.1 | $I_t$ | 10 ciclos | — | — | — | $I_t = \text{—}$ | $I_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M2.2** — Resíduo Pós-Desinstalação | G2 · Q2.2 | $D_t$ | 10 ciclos | — | — | — | $D_t = \text{—}$ | $D_r = \text{—}$ *(com resíduo)* | Aguardando registro em `1-coleta.md` |
| **M3.1** — Sessões sem *Crashes* | G3 · Q3.1 | $S_t$ | 20 sessões (5 min cada) | — | — | — | $S_t = \text{—}$ | $S_c = \text{—}$ *(com crash)* | Aguardando registro em `1-coleta.md` |
| **M3.2** — Sessões sem Congelamentos | G3 · Q3.2 | $S_t$ | 20 sessões (5 min cada) | — | — | — | $S_t = \text{—}$ | $S_a = \text{—}$ *(congelamento > 5 s)* | Aguardando registro em `1-coleta.md` |
| **M4.1** — Mitigação de Perda de Conexão | G4 · Q4.1 | $R_t$ | 10 ensaios | — | — | — | $R_t = \text{—}$ | $R_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M4.2** — Tratamento de Perda de GPS | G4 · Q4.2 | $G_t$ | 10 ensaios | — | — | — | $G_t = \text{—}$ | $G_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M5.1** — Precisão de Tempo | G5 · Q5.1 | $n$ | 10 eventos de chegada | — | — | — | $n = \text{—}$ | Pares $e_i$ válidos: — | Aguardando registro em `1-coleta.md` |
| **M5.2** — Correção de Dados (Mapa: Paradas) | G5 · Q5.2 | $P_t$ | 5 paradas ($\varepsilon = 30\text{ m}$) | — | — | — | $P_t = \text{—}$ | $P_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M5.2** — Correção de Dados (Mapa: Veículos) | G5 · Q5.2 | $P_t$ | 10 eventos ($\varepsilon = 30\text{ m}$, $\Delta t \le 2\text{ s}$) | — | — | — | $P_t = \text{—}$ | $P_s = \text{—}$ | Aguardando registro em `1-coleta.md` |
| **M6.1** — Cobertura de Tarefas Essenciais | G6 · Q6.1 | $F_t$ | 8 tarefas (`TE01`–`TE08`) | — | — | — | $F_t = \text{—}$ | $F_f = \text{—}$ *(com falha)* | Aguardando registro em `1-coleta.md` |
| **M6.2** — Completude do Banco | G6 · Q6.2 | $L_t$ | 20 itens (`A01`–`A20`) | 20 | 0 | 0 | $L_t = 20$ | $L_c = 20$ *(0 defeitos)* | **Consolidada** (`DISP01`, Android 13, app `5.25.1(1149)`) |

<p class="legenda">Tabela 2. Matriz sintética dos dados brutos consolidados por métrica. Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4) e Procedimentos de Execução (Fase 3).</p>

> **Situação atual da coleta em `1-coleta.md`:** até o momento desta consolidação, somente a métrica **M6.2 — Completude do Banco** possui os registros completos publicados em [Coleta de Dados](1-coleta.md) ($L_c = 20$ de $L_t = 20$ itens válidos, auditados contra o Relatório de Linhas da Semob-DF de 17/11/2026, sem casos não observáveis ou pendentes). As demais métricas (`M1.1` a `M6.1`) permanecem com campos abertos aguardando a incorporação de suas respectivas tabelas de coleta; conforme a regra 4 de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo), apenas as métricas efetivamente consolidadas recebem nota definitiva nesta etapa.

---

## 4. Critérios de Conversão para a Escala de Notas

A conversão dos valores numéricos obtidos pelas equações da Fase 2 para o julgamento qualitativo do produto obedece estritamente ao modelo de pontuação definido em [Níveis de pontuação e critérios de julgamento](../fase2/metricas-julgamento.md#niveis-de-pontuacao-e-criterios-de-julgamento).

### 4.1. Escala Ordinal de Notas (1 a 4)

As notas constituem uma **escala ordinal** (classificação de Stevens adotada pelo NIST): representam níveis ordenados de atendimento à qualidade sem pressupor intervalos iguais nem proporcionalidade entre graus. Por essa razão, **não se calcula média aritmética entre notas**; atribui-se a cada métrica a **maior nota cuja condição de limiar seja satisfeita pelo valor exato sem arredondamento**.

| Nota | Nível | Significado para o Projeto DF no Ponto |
| :---: | :--- | :--- |
| **4** | **Excelente** | Eficácia plena; o aplicativo atende perfeitamente às expectativas do cidadão. |
| **3** | **Bom** | Presença de desvios menores (como pequenos atrasos toleráveis), aceitáveis no contexto de transporte público. |
| **2** | **Insuficiente** | O desvio afeta consideravelmente a utilidade prática; demanda plano corretivo de urgência. |
| **1** | **Crítico** | Inviabiliza o uso da funcionalidade; alto risco de rejeição ou abandono pelo usuário. |

<p class="legenda">Tabela 3. Escala ordinal de notas adotada na avaliação. Fonte: adaptado de Métricas e Critérios de Julgamento (Fase 2, 2026).</p>

### 4.2. Limiares de Conversão por Métrica

A Tabela 4 reproduz os limiares fixados antes da coleta na Fase 2 para conversão direta dos resultados de razão (`M1.1`–`M4.2`, `M5.2`, `M6.1`–`M6.2`, em $[0, 1]$, onde maior é melhor) e de erro temporal mediano (`M5.1`, em minutos, onde menor é melhor).

| Métrica | Nota 4 (Excelente) | Nota 3 (Bom) | Nota 2 (Insuficiente) | Nota 1 (Crítico) |
| :--- | :---: | :---: | :---: | :---: |
| **M1.1 / M1.2** (Adaptabilidade) | $= 1{,}00$ | $\ge 0{,}90$ | $\ge 0{,}75$ | $< 0{,}75$ |
| **M2.1 / M2.2** (Instalação / Desinstalação) | $= 1{,}00$ | $\ge 0{,}95$ | $\ge 0{,}85$ | $< 0{,}85$ |
| **M3.1 / M3.2** (Sessões sem crashes / congelamentos) | $\ge 0{,}99$ | $\ge 0{,}95$ | $\ge 0{,}90$ | $< 0{,}90$ |
| **M4.1 / M4.2** (Tolerância a Falhas) | $= 1{,}00$ | $\ge 0{,}85$ | $\ge 0{,}70$ | $< 0{,}70$ |
| **M5.1** (Precisão de Tempo) | $\le 2\text{ min}$ | $\le 5\text{ min}$ | $\le 10\text{ min}$ | $> 10\text{ min}$ |
| **M5.2** (Correção Espacial do Mapa) | $\ge 0{,}95$ | $\ge 0{,}85$ | $\ge 0{,}70$ | $< 0{,}70$ |
| **M6.1 / M6.2** (Completude e Cobertura) | $= 1{,}00$ | $\ge 0{,}95$ | $\ge 0{,}80$ | $< 0{,}80$ |

<p class="legenda">Tabela 4. Limiares de pontuação por métrica. Fonte: adaptado de Métricas e Critérios de Julgamento (Fase 2, 2026).</p>

### 4.3. Conversão Discreta em Amostras Pequenas e Regras de Agregação

Conforme documentado em [Amostras Pequenas e Resultados Parciais](../fase2/metricas-julgamento.md#amostras-pequenas-e-resultados-parciais) e na Seção 5 de [Procedimentos de Execução](../fase3/2-procedimentos.md#5-amostras-e-limitacao), em proporções com total válido $n < 20$, cada caso altera o índice em $1/n$, tornando algumas faixas intermediárias inatingíveis quando todos os casos previstos são válidos:

| Métrica | Amostra válida prevista | Contagem de casos conformes por nota (supondo todos os casos válidos) | Observação analítica |
| :--- | :---: | :--- | :--- |
| **M1.1** | 20 casos | **4:** 20 · **3:** 18–19 · **2:** 15–17 · **1:** 0–14 | Todas as notas atingíveis |
| **M1.2** | 3 versões | **4:** 3 · **1:** 0–2 | Sem notas 2 e 3 possíveis; qualquer versão reprovada resulta em nota 1 |
| **M2.1 / M2.2** | 10 ciclos | **4:** 10 · **2:** 9 · **1:** 0–8 | Sem nota 3 possível ($9/10 = 0{,}90 < 0{,}95$) |
| **M3.1 / M3.2** | 20 sessões | **4:** 20 · **3:** 19 · **2:** 18 · **1:** 0–17 | Todas as notas atingíveis |
| **M4.1 / M4.2** | 10 ensaios | **4:** 10 · **3:** 9 · **2:** 7–8 · **1:** 0–6 | Todas as notas atingíveis |
| **M5.1** | 10 eventos | Aplicam-se diretamente os limiares da Tabela 4 sobre a mediana $M_{5.1}$ (em minutos) | Informar também mínimo, máximo e tamanho $n$ válido |
| **M5.2 (paradas)** | 5 paradas | **4:** 5 · **2:** 4 · **1:** 0–3 | Sem nota 3 possível ($4/5 = 0{,}80 < 0{,}85$) |
| **M5.2 (veículos)** | 10 eventos | **4:** 10 · **3:** 9 · **2:** 7–8 · **1:** 0–6 | A nota de `M5.2` para `G5` é a **pior** entre paradas e veículos |
| **M6.1** | 8 tarefas | **4:** 8 · **2:** 7 · **1:** 0–6 | Sem nota 3 possível ($7/8 = 0{,}875 < 0{,}95$) |
| **M6.2** | 20 itens | **4:** 20 · **3:** 19 · **2:** 16–18 · **1:** 0–15 | Todas as notas atingíveis |

<p class="legenda">Tabela 5. Mapeamento discreto de contagens conformes para notas de 1 a 4. Fonte: adaptado de Procedimentos de Execução (Fase 3, 2026).</p>

Ao converter as notas individuais das métricas em vereditos dos objetivos (`G1` a `G6`) e das características da qualidade, aplica-se o **critério conservador** definido em [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos):

1. **Veredito por objetivo (`G1` a `G6`):** o objetivo assume a **pior nota** entre suas duas métricas filhas — apenas notas 3 e 4 resultam em **Satisfeito**; pelo menos uma nota 2 resulta em **Satisfeito com Ressalvas**; e pelo menos uma nota 1 resulta em **Não Satisfeito**. Se alguma métrica filha ou caso obrigatório estiver pendente ou sem dados válidos, o objetivo recebe **Não avaliado (dados incompletos)**.
2. **Veredito por característica e resposta às questões norteadoras (`QN1`–`QN3`):** cada característica (**Portabilidade**: `G1`, `G2`; **Confiabilidade**: `G3`, `G4`; **Adequação Funcional**: `G5`, `G6`) recebe o **pior veredito** dentre os dois objetivos associados, fundamentando as decisões estratégicas **D1**, **D2** e **D3** sem cálculo de nota global única para o aplicativo.
