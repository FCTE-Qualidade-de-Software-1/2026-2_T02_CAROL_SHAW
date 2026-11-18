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


---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

Esta seção apresenta o cálculo, a atribuição de notas, o confronto com as hipóteses preditivas e o veredito parcial dos objetivos **G1 (Adaptabilidade)** e **G2 (Instalabilidade)** da característica **Portabilidade** (ISO/IEC 25010:2011), vinculados à questão norteadora **QN1** e à decisão estratégica **D1** ([Planejamento e Objetivos](../fase2/planejamento-objetivos.md#g1), [Modelo de Qualidade](../fase1/5-modelo.md#21-portabilidade-decisao-d1-questao-norteadora-qn1)).

> **Aviso de rastreabilidade e completude da coleta:** conforme verificado na matriz de consolidação (Seção 3) e nos registros publicados em [Coleta de Dados](1-coleta.md), até este momento apenas a métrica **M6.2** possui dados coletados. As métricas **M1.1, M1.2, M2.1 e M2.2** ainda não possuem registros de execução versionados em `1-coleta.md`. Em estrita conformidade com as [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo) (regras 3 e 4) e a metodologia da Seção 2.2, **nenhum valor empírico é simulado ou inferido**: as métricas permanecem com estado **Não avaliado (sem dados)** e os objetivos associados com veredito **Não avaliado (dados incompletos)** até a incorporação das respectivas tabelas e evidências de coleta.

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

##### 1. Definição matemática e variáveis medidas

Definida em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#m11-adaptabilidade-de-hardware-telas) com base na ISO/IEC 25023:2016:

$$
M_{1.1} = \frac{T_s}{T_t}
$$

- **$T_s$:** quantidade de casos `tela × configuração` aprovados (**Conforme**), em que informações e controles necessários estão visíveis e utilizáveis sem corte ou sobreposição impeditivos que bloqueiem a tarefa.
- **$T_t$:** total de casos `tela × configuração` válidos avaliados na mesma versão do aplicativo (`5.25.1(1149)`) e do Android (exclui apenas casos classificados como **Não observável** com justificativa documentada; casos **Defeito** permanecem obrigatoriamente em $T_t$).
- **Escala, unidade e domínio:** Razão, adimensional, domínio $[0, 1]$ (maior é melhor).
- **Catálogo de ensaios ([Procedimentos de Execução](../fase3/2-procedimentos.md#33-telas-e-configuracoes-m11)):** 5 telas (`T01`: Resultado da busca por `L01`; `T02`: Horários de `L01`; `T03`: Mapa do itinerário de `L01`; `T04`: Detalhes de `P01`; `T05`: Favoritos com `L01` e `P01`) $\times$ 4 configurações (`C01`: 640 × 1136 px, 320 dpi, Retrato, Fonte 100%; `C02`: 640 × 1136 px, 320 dpi, Paisagem, Fonte 100%; `C03`: 640 × 1136 px, 320 dpi, Retrato, Fonte 200%; `C04`: 1080 × 2400 px, 420 dpi, Retrato, Fonte 100%), perfazendo **20 casos** (`T01-C01` a `T05-C04`). *(Nota de alinhamento: o arranjo `5 × 4` fixado na Fase 3 operacionaliza as duas resoluções/densidades, duas escalas de fonte — 100% e 200% — e duas orientações em 20 combinações.)*
- **Limiares de pontuação:** Nota 4 (Excelente): $= 1{,}00$ (`20/20`); Nota 3 (Bom): $\ge 0{,}90$ (`18–19/20`); Nota 2 (Insuficiente): $\ge 0{,}75$ (`15–17/20`); Nota 1 (Crítico): $< 0{,}75$ (`0–14/20`).

##### 2. Tabela de resultados dos ensaios

| ID | Caso | Tela | Configuração (Resolução · Densidade · Orientação · Fonte) | Ambiente | Estado | Evidência | Observações |
| :--- | :---: | :--- | :--- | :--- | :---: | :--- | :--- |
| M1.1-01 | `T01-C01` | T01 (Busca `L01`) | 640 × 1136 px · 320 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-02 | `T01-C02` | T01 (Busca `L01`) | 640 × 1136 px · 320 dpi · Paisagem · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-03 | `T01-C03` | T01 (Busca `L01`) | 640 × 1136 px · 320 dpi · Retrato · 200% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-04 | `T01-C04` | T01 (Busca `L01`) | 1080 × 2400 px · 420 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-05 | `T02-C01` | T02 (Horários `L01`) | 640 × 1136 px · 320 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-06 | `T02-C02` | T02 (Horários `L01`) | 640 × 1136 px · 320 dpi · Paisagem · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-07 | `T02-C03` | T02 (Horários `L01`) | 640 × 1136 px · 320 dpi · Retrato · 200% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-08 | `T02-C04` | T02 (Horários `L01`) | 1080 × 2400 px · 420 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-09 | `T03-C01` | T03 (Mapa `L01`) | 640 × 1136 px · 320 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-10 | `T03-C02` | T03 (Mapa `L01`) | 640 × 1136 px · 320 dpi · Paisagem · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-11 | `T03-C03` | T03 (Mapa `L01`) | 640 × 1136 px · 320 dpi · Retrato · 200% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-12 | `T03-C04` | T03 (Mapa `L01`) | 1080 × 2400 px · 420 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-13 | `T04-C01` | T04 (Detalhes `P01`) | 640 × 1136 px · 320 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-14 | `T04-C02` | T04 (Detalhes `P01`) | 640 × 1136 px · 320 dpi · Paisagem · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-15 | `T04-C03` | T04 (Detalhes `P01`) | 640 × 1136 px · 320 dpi · Retrato · 200% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-16 | `T04-C04` | T04 (Detalhes `P01`) | 1080 × 2400 px · 420 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-17 | `T05-C01` | T05 (Favoritos) | 640 × 1136 px · 320 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-18 | `T05-C02` | T05 (Favoritos) | 640 × 1136 px · 320 dpi · Paisagem · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-19 | `T05-C03` | T05 (Favoritos) | 640 × 1136 px · 320 dpi · Retrato · 200% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.1-20 | `T05-C04` | T05 (Favoritos) | 1080 × 2400 px · 420 dpi · Retrato · 100% | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |

<p class="legenda">Tabela P1. Matriz de consolidação dos ensaios da métrica M1.1. Fonte: elaboração própria (2026), com base em Procedimentos de Execução (Fase 3) e Coleta de Dados (Fase 4).</p>

##### 3. Cálculo do valor da métrica e atribuição da nota

- **Contagens apuradas:** previstos = 20; executados = 0; não observáveis = 0; pendentes de coleta = 20; amostra válida apurada $T_t = 0$; casos aprovados $T_s = 0$.
- **Cálculo:**

$$
M_{1.1} = \frac{T_s}{T_t} = \frac{0}{0} \rightarrow \text{Não avaliado (sem dados)}
$$

- **Grau / Nota atribuída:** **Sem nota (Não avaliado)**, conforme a regra 3 de [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo) (denominador zero). Quando os 20 casos forem executados, a nota será atribuída pela faixa exata sem arredondamento: `20/20` ($1{,}00$) $\rightarrow$ Nota 4; `18–19/20` ($\ge 0{,}90$) $\rightarrow$ Nota 3; `15–17/20` ($\ge 0{,}75$) $\rightarrow$ Nota 2; `0–14/20` ($< 0{,}75$) $\rightarrow$ Nota 1.

##### 4. Confronto com a hipótese preditiva H1.1

- **Enunciado de H1.1 ([Fase 2](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** *$M_{1.1} < 1{,}00$: ao menos um caso de tela compacta ou fonte ampliada apresenta sobreposição ou corte na camada do mapa.*
- **Situação:** **Não verificada (aguardando coleta em `1-coleta.md`).**
- **Critério técnico de julgamento:** a hipótese será **Confirmada** caso a coleta apure $M_{1.1} < 1{,}00$ com falha de corte ou sobreposição na camada do mapa (`T03`) sob perfil compacto (`640 × 1136 px`) ou fonte ampliada (`200%`, configuração `C03`). Caso todos os 20 pares sejam aprovados ($M_{1.1} = 1{,}00$), ou caso eventuais defeitos ocorram exclusivamente fora da condição prevista, H1.1 será **Refutada** com indicação da causa raiz observada nas capturas de tela.

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

##### 1. Definição matemática e variáveis medidas

Definida em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#m12-adaptabilidade-de-sistema-operacional) com base na ISO/IEC 25023:2016:

$$
M_{1.2} = \frac{O_s}{O_t}
$$

- **$O_s$:** quantidade de versões de sistema operacional Android aprovadas integralmente em **todos** os fluxos críticos definidos, sem erro de compatibilidade impeditivo.
- **$O_t$:** total de versões de SO válidas avaliadas, identificadas pelo sistema e sua versão (exclui apenas versões cujo ambiente não pôde ser preparado por impedimento externo, classificadas como **Não observável**).
- **Escala, unidade e domínio:** Razão, adimensional, domínio $[0, 1]$ (maior é melhor).
- **Catálogo de ensaios ([Procedimentos de Execução](../fase3/2-procedimentos.md#m12-adaptabilidade-de-so-lab)):** execução do catálogo de tarefas essenciais (`TE01` a `TE08`, Seção 3.2 dos Procedimentos) em **até 3 versões distintas** de Android: Android 9 (extremo legado), Android 13 (referência recente) e a versão do aparelho físico utilizado (caso o aparelho execute versão distinta, como Android 14, totalizam-se 3 versões; caso repita Android 9 ou 13, 2 versões). *(Nota de rastreabilidade: a Fase 3 consolidou a bateria completa de 8 tarefas `TE01`–`TE08` nas 3 versões especificadas, em vez de 4 fluxos genéricos entre Android 9 e 14.)*
- **Limiares de pontuação e efeito de amostra pequena:** Nota 4 (Excelente): $= 1{,}00$; Nota 3 (Bom): $\ge 0{,}90$; Nota 2 (Insuficiente): $\ge 0{,}75$; Nota 1 (Crítico): $< 0{,}75$. Pela Tabela 5 (Seção 4.3), com $O_t = 3$ versões válidas, **apenas as notas 4 (`3/3 = 1,00`) e 1 (`0–2/3 ≤ 0,67`) são matematicamente atingíveis**; qualquer reprovação em uma única versão reduz a métrica para $< 0{,}75$.

##### 2. Tabela de resultados dos ensaios

| ID | Caso | Versão do SO | Ambiente / Dispositivo | Fluxos críticos executados (`TE01`–`TE08`) | Estado da versão | Evidência | Observações |
| :--- | :---: | :--- | :--- | :---: | :---: | :--- | :--- |
| M1.2-01 | `SO-01` | Android 9 | Emulador (`EMU-01` ou equivalente) | `0/8` | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.2-02 | `SO-02` | Android 13 | Dispositivo/Emulador | `0/8` | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M1.2-03 | `SO-03` | Versão do aparelho físico *(ex.: Android 14 ou distinta)* | Aparelho físico (`DISP01`) | `0/8` | Aguardando coleta | — | Confirmar versão em `3-recursos.md` / `1-coleta.md` |

<p class="legenda">Tabela P2. Matriz de consolidação dos ensaios da métrica M1.2. Fonte: elaboração própria (2026), com base em Procedimentos de Execução (Fase 3) e Coleta de Dados (Fase 4).</p>

##### 3. Cálculo do valor da métrica e atribuição da nota

- **Contagens apuradas:** previstos = 3 versões (ou 2, caso o aparelho físico utilize Android 9 ou 13); executados = 0; não observáveis = 0; pendentes de coleta = 3; amostra válida apurada $O_t = 0$; versões aprovadas $O_s = 0$.
- **Cálculo:**

$$
M_{1.2} = \frac{O_s}{O_t} = \frac{0}{0} \rightarrow \text{Não avaliado (sem dados)}
$$

- **Grau / Nota atribuída:** **Sem nota (Não avaliado)**, conforme a regra 3 de [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo).

##### 4. Confronto com a hipótese preditiva H1.2

- **Enunciado de H1.2 ([Fase 2](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** *$M_{1.2} = 1{,}00$: todos os fluxos concluem nas versões testadas (Android 9, Android 13 e a versão do aparelho físico).*
- **Situação:** **Não verificada (aguardando coleta em `1-coleta.md`).**
- **Critério técnico de julgamento:** H1.2 será **Confirmada** somente se $M_{1.2} = 1{,}00$, isto é, todas as versões válidas concluírem `TE01`–`TE08` sem erros impeditivos de compatibilidade (API level, permissões de armazenamento/localização ou renderização). Qualquer versão reprovada reduzirá $M_{1.2}$ para $\le 0{,}67$ (ou $\le 0{,}50$ se $O_t = 2$), **Refutando** H1.2 e derrubando imediatamente a nota da métrica para **1 (Crítico)**.

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

Pelo critério conservador de [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos):

$$
\text{Nota}(G_1) = \min\big(\text{Nota}(M_{1.1}),\, \text{Nota}(M_{1.2})\big)
$$

| Métrica | Fórmula | Amostra válida ($n$) | Valor medido | Nota (1–4) | Hipótese | Situação |
| :--- | :---: | :---: | :---: | :---: | :---: | :--- |
| **M1.1** — Adaptabilidade de Hardware (Telas) | $T_s / T_t$ | $T_t = 0$ *(prev. 20)* | — | — | H1.1 ($M_{1.1} < 1{,}00$) | **Não avaliado (sem dados)** |
| **M1.2** — Adaptabilidade de SO | $O_s / O_t$ | $O_t = 0$ *(prev. 3)* | — | — | H1.2 ($M_{1.2} = 1{,}00$) | **Não avaliado (sem dados)** |
| **Veredito Parcial de G1** | **Pior nota** | — | — | **—** | — | **Não avaliado (dados incompletos)** |

<p class="legenda">Tabela P3. Síntese analítica e veredito parcial do objetivo G1. Fonte: elaboração própria (2026).</p>

Como ambas as métricas filhas de G1 (`M1.1` e `M1.2`) ainda não dispõem de registros em [Coleta de Dados](1-coleta.md), o objetivo **G1 — Portabilidade (Adaptabilidade)** recebe formalmente o veredito parcial **Não avaliado (dados incompletos)**, não podendo ser declarado satisfeito nesta etapa.

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

##### 1. Definição matemática e variáveis medidas

Definida em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#m21-sucesso-de-instalacao) como extensão do projeto alinhada à ISO/IEC 25010 (Instalabilidade) e ISO 9241-11:

$$
M_{2.1} = \frac{I_s}{I_t}
$$

- **$I_s$:** número de ciclos de instalação limpa concluídos com êxito na **primeira tentativa**, sem erro de download, verificação ou instalação.
- **$I_t$:** total de ciclos de instalação limpa válidos avaliados (tentativas posteriores de correção não alteram um **Defeito** ocorrido na primeira tentativa; ciclos em que a loja esteja indisponível por falha externa são registrados como **Não observável** e excluídos de $I_t$).
- **Escala, unidade e domínio:** Razão, adimensional, domínio $[0, 1]$ (maior é melhor).
- **Procedimento ([Fase 3](../fase3/2-procedimentos.md#m21-sucesso-de-instalacao-lab-aparelho-fisico)):** **10 ciclos** de instalação limpa em aparelho físico via loja oficial (Google Play Store), partindo com o aplicativo previamente ausente do dispositivo e capturando a tela final da loja ("Instalado" ou mensagem de erro).
- **Limiares de pontuação e efeito de amostra pequena:** Nota 4 (Excelente): $= 1{,}00$; Nota 3 (Bom): $\ge 0{,}95$; Nota 2 (Insuficiente): $\ge 0{,}85$; Nota 1 (Crítico): $< 0{,}85$. Pela Tabela 5 (Seção 4.3), com $I_t = 10$ ciclos válidos, **a Nota 3 é matematicamente inatingível** ($9/10 = 0{,}90 < 0{,}95$): `10/10` atribui Nota 4; `9/10` atribui Nota 2; `0–8/10` ($\le 0{,}80$) atribui Nota 1.

##### 2. Tabela de resultados dos ensaios

| ID | Caso | Canal oficial | Ambiente | Resultado 1ª tentativa | Estado | Evidência | Observações |
| :--- | :---: | :--- | :--- | :---: | :---: | :--- | :--- |
| M2.1-01 | `CICLO01` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-02 | `CICLO02` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-03 | `CICLO03` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-04 | `CICLO04` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-05 | `CICLO05` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-06 | `CICLO06` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-07 | `CICLO07` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-08 | `CICLO08` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-09 | `CICLO09` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.1-10 | `CICLO10` | Google Play Store | Aparelho físico (`DISP01`) | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |

<p class="legenda">Tabela P4. Matriz de consolidação dos ensaios da métrica M2.1. Fonte: elaboração própria (2026), com base em Procedimentos de Execução (Fase 3) e Coleta de Dados (Fase 4).</p>

##### 3. Cálculo do valor da métrica e atribuição da nota

- **Contagens apuradas:** previstos = 10 ciclos; executados = 0; não observáveis = 0; pendentes de coleta = 10; amostra válida apurada $I_t = 0$; instalações bem-sucedidas $I_s = 0$.
- **Cálculo:**

$$
M_{2.1} = \frac{I_s}{I_t} = \frac{0}{0} \rightarrow \text{Não avaliado (sem dados)}
$$

- **Grau / Nota atribuída:** **Sem nota (Não avaliado)**, conforme a regra 3 de [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo).

##### 4. Confronto com a hipótese preditiva H2.1

- **Enunciado de H2.1 ([Fase 2](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** *$M_{2.1} = 1{,}00$: todas as instalações concluem na primeira tentativa.*
- **Situação:** **Não verificada (aguardando coleta em `1-coleta.md`).**
- **Critério técnico de julgamento:** H2.1 será **Confirmada** se os 10 ciclos válidos concluírem a instalação pela Google Play na primeira tentativa ($M_{2.1} = 1{,}00$, Nota 4). Bastará 1 ciclo com falha atribuível ao pacote ou à compatibilidade de distribuição do aplicativo para **Refutar** H2.1, rebaixando a nota imediatamente para **2 (Insuficiente)** (ou **1**, caso ocorram $\ge 2$ falhas).

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

##### 1. Definição matemática e variáveis medidas

Definida em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#m22-residuo-pos-desinstalacao) como extensão do projeto para a dimensão de desinstalação da ISO/IEC 25010:

$$
M_{2.2} = 1 - \frac{D_r}{D_t}
$$

- **$D_r$:** quantidade de ciclos de desinstalação nos quais restou **pelo menos um** arquivo ou pasta atribuível ao aplicativo (por nome, conteúdo ou vínculo com o identificador do pacote) nos diretórios inspecionados.
- **$D_t$:** total de ciclos de desinstalação com inspeção válida antes e depois da remoção (exclui apenas ciclos em que algum diretório obrigatório esteja inacessível, classificados como **Não observável**).
- **Escala, unidade e domínio:** Razão, adimensional, domínio $[0, 1]$ (maior é melhor; mede proporção de remoções limpas, não volume em bytes).
- **Procedimento ([Fase 3](../fase3/2-procedimentos.md#m22-residuo-pos-desinstalacao-lab)):** **10 ciclos** (pareados aos ciclos de M2.1) com uso padronizado de busca, horários, mapa e favoritos, remoção pelo método padrão do sistema e comparação via `adb shell ls -laR` + `diff` entre os registros `_antes.txt` e `_depois.txt` nos diretórios públicos/armazenamento compartilhado `/sdcard/Android/data`, `/sdcard/Android/obb`, `/sdcard/Android/media`, `/sdcard/Download`, `/sdcard/Documents` e pastas com o nome do app (o armazenamento interno privado do aplicativo não é inspecionado por limitação do método de caixa preta sem acesso *root*).
- **Limiares de pontuação e efeito de amostra pequena:** Nota 4 (Excelente): $= 1{,}00$; Nota 3 (Bom): $\ge 0{,}95$; Nota 2 (Insuficiente): $\ge 0{,}85$; Nota 1 (Crítico): $< 0{,}85$. Pela Tabela 5 (Seção 4.3), com $D_t = 10$ ciclos válidos, **a Nota 3 é matematicamente inatingível**: `D_r = 0` ($1{,}00$) $\rightarrow$ Nota 4; `D_r = 1` ($0{,}90$) $\rightarrow$ Nota 2; `D_r ≥ 2` ($\le 0{,}80$) $\rightarrow$ Nota 1.

##### 2. Tabela de resultados dos ensaios

| ID | Caso | Locais inspecionados via `adb` | Ambiente | Resíduo identificado ($D_r$?) | Estado | Evidência (`_antes` / `_depois` / `diff`) | Observações |
| :--- | :---: | :--- | :--- | :---: | :---: | :--- | :--- |
| M2.2-01 | `CICLO01` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-02 | `CICLO02` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-03 | `CICLO03` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-04 | `CICLO04` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-05 | `CICLO05` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-06 | `CICLO06` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-07 | `CICLO07` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-08 | `CICLO08` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-09 | `CICLO09` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |
| M2.2-10 | `CICLO10` | `Android/data`, `obb`, `media`, `Download`, `Documents` | `DISP01` | — | Aguardando coleta | — | Sem registro em `1-coleta.md` |

<p class="legenda">Tabela P5. Matriz de consolidação dos ensaios da métrica M2.2. Fonte: elaboração própria (2026), com base em Procedimentos de Execução (Fase 3) e Coleta de Dados (Fase 4).</p>

##### 3. Cálculo do valor da métrica e atribuição da nota

- **Contagens apuradas:** previstos = 10 ciclos; executados = 0; não observáveis = 0; pendentes de coleta = 10; amostra válida apurada $D_t = 0$; desinstalações com resíduo $D_r = 0$.
- **Cálculo:**

$$
M_{2.2} = 1 - \frac{D_r}{D_t} = 1 - \frac{0}{0} \rightarrow \text{Não avaliado (sem dados)}
$$

- **Grau / Nota atribuída:** **Sem nota (Não avaliado)**, conforme a regra 3 de [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo).

##### 4. Confronto com a hipótese preditiva H2.2

- **Enunciado de H2.2 ([Fase 2](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** *$M_{2.2} < 1{,}00$: ao menos um dos dez ciclos deixa arquivo residual no armazenamento compartilhado.*
- **Situação:** **Não verificada (aguardando coleta em `1-coleta.md`).**
- **Critério técnico de julgamento:** H2.2 será **Confirmada** se $M_{2.2} < 1{,}00$ ($D_r \ge 1$ ciclo com arquivos residuais atribuíveis ao app após remoção pelo método padrão do Android). Caso o `diff` entre `_antes.txt` e `_depois.txt` não revele nenhum arquivo residual nos 10 ciclos válidos ($D_r = 0 \Rightarrow M_{2.2} = 1{,}00$, Nota 4), H2.2 será **Refutada**, indicando que o mecanismo de remoção do Android (inclusive sob *Scoped Storage*) removeu integralmente os rastros observáveis nos locais auditados.

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

Pelo critério conservador de [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos):

$$
\text{Nota}(G_2) = \min\big(\text{Nota}(M_{2.1}),\, \text{Nota}(M_{2.2})\big)
$$

| Métrica | Fórmula | Amostra válida ($n$) | Valor medido | Nota (1–4) | Hipótese | Situação |
| :--- | :---: | :---: | :---: | :---: | :---: | :--- |
| **M2.1** — Sucesso de Instalação | $I_s / I_t$ | $I_t = 0$ *(prev. 10)* | — | — | H2.1 ($M_{2.1} = 1{,}00$) | **Não avaliado (sem dados)** |
| **M2.2** — Resíduo Pós-Desinstalação | $1 - D_r / D_t$ | $D_t = 0$ *(prev. 10)* | — | — | H2.2 ($M_{2.2} < 1{,}00$) | **Não avaliado (sem dados)** |
| **Veredito Parcial de G2** | **Pior nota** | — | — | **—** | — | **Não avaliado (dados incompletos)** |

<p class="legenda">Tabela P6. Síntese analítica e veredito parcial do objetivo G2. Fonte: elaboração própria (2026).</p>

Como as duas métricas filhas de G2 (`M2.1` e `M2.2`) aguardam o registro das coletas em [Coleta de Dados](1-coleta.md), o objetivo **G2 — Portabilidade (Instalabilidade)** recebe o veredito parcial **Não avaliado (dados incompletos)**.

---

## 5. Cálculo e Análise — Portabilidade (G1 e G2)

Aplicando a regra de julgamento por característica ([Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#julgamento-por-caracteristica-e-resposta-as-questoes-norteadoras)), a característica **Portabilidade** assume o pior veredito entre **G1** e **G2**:

| Objetivo | Subcaracterística (ISO 25010) | Pior nota apurada | Veredito parcial | Dependência para fechamento |
| :---: | :--- | :---: | :--- | :--- |
| **G1** | Adaptabilidade (`M1.1`, `M1.2`) | — | **Não avaliado (dados incompletos)** | Registro dos 20 casos de `M1.1` e das versões de `M1.2` em `1-coleta.md` |
| **G2** | Instalabilidade (`M2.1`, `M2.2`) | — | **Não avaliado (dados incompletos)** | Registro dos 10 ciclos pareados de `M2.1` e `M2.2` em `1-coleta.md` |
| **Portabilidade (QN1 / D1)** | **Pior veredito (G1, G2)** | **—** | **Não avaliada (dados incompletos)** | **Conclusão da coleta de Portabilidade em `1-coleta.md`** |

<p class="legenda">Tabela P7. Consolidação parcial da característica Portabilidade. Fonte: elaboração própria (2026).</p>

**Limitações e pendências registradas antes do fechamento final:**
1. **Pendências de pré-coleta herdadas da Fase 3 ([Tabela 7 dos Procedimentos](../fase3/2-procedimentos.md#7-pendencias-antes-da-coleta)):** confirmar e versionar os itens `L01`, `L02`, `P01`, o identificador de pacote do aplicativo para a auditoria `adb` de `M2.2`, bem como o inventário definitivo dos aparelhos e emuladores em [Recursos](../fase3/3-recursos.md).
2. **Restrição de inspeção em `M2.2`:** a auditoria via `adb` sem *root* cobre apenas os diretórios de armazenamento compartilhado listados; áreas privadas do aplicativo não são observáveis e não entram no cálculo de $D_r$.
3. **Granularidade discreta em `M1.2`, `M2.1` e `M2.2`:** por restrição do tamanho amostral ($O_t = 3$; $I_t = D_t = 10$), um único defeito em `M1.2` resulta diretamente em Nota 1 (sem faixas 2 ou 3 possíveis), e um único defeito em `M2.1` ou `M2.2` resulta diretamente em Nota 2 (sem faixa 3 possível).


---

## 6. Cálculo e Análise — Confiabilidade (`G3` e `G4`)

Esta seção apresenta a análise das métricas vinculadas à característica **Confiabilidade** da ISO/IEC 25010, que responde à questão norteadora **QN2** e subsidia a decisão estratégica **D2** por meio dos objetivos **G3 (Maturidade)** e **G4 (Tolerância a Falhas)**. Conforme as diretrizes de [Introdução da Fase 4](introducao.md) e a Seção 2.2 deste documento, nenhum resultado empírico é estimado ou simulado: as apurações utilizam exclusivamente os registros publicados em [Coleta de Dados](1-coleta.md).

> **Aviso de estado da coleta (`1-coleta.md`) e alinhamento normativo:** até o momento desta análise, [Coleta de Dados](1-coleta.md) contém registros executados apenas para `M6.2`; **não há ensaios registrados para `M3.1`, `M3.2`, `M4.1` e `M4.2`**. Em conformidade com as Regras 3 e 4 de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo) e com a Tabela 1 da Seção 2.2, métricas com amostra vazia ($S_t = 0$, $R_t = 0$ ou $G_t = 0$) recebem o estado **Não avaliado (sem dados)**, sem nota numérica, e seus objetivos recebem **Não avaliado (dados incompletos)**. Adicionalmente, todos os parâmetros operacionais abaixo seguem a versão vigente de [Procedimentos de Execução](../fase3/2-procedimentos.md#confiabilidade) e [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#detalhamento-das-metricas) (sessões de **5 min** em `M3.1`/`M3.2`; nome **M4.1 — Mitigação de Perda de Conexão**; interrupção/desativação por **30 s** e janela de retomada de até **30 s** em `M4.1`/`M4.2`), prevalecendo sobre parâmetros preliminares anteriores à revisão de procedimentos da Fase 3 (`15 min` em `M3.1`/`M3.2`; `15 s` de corte e `10 s` de retomada em `M4.1`; `5 s` de retorno em `M4.2`).

---

### 6.1. Objetivo `G3` — Confiabilidade (Maturidade)

O objetivo **G3** avalia a estabilidade operacional e a frequência de travamentos do aplicativo **DF no Ponto** durante sessões padronizadas de navegação contínua (busca de linha, horários, itinerário no mapa, parada e veículo, e favoritos), sem injeção externa de falhas de rede ou GPS.

#### 6.1.1. `M3.1` — Sessões sem *Crashes* (`Q3.1`)

##### 1. Definição matemática e variáveis medidas

A métrica **M3.1** mensura, em escala de razão no domínio $[0, 1]$ (maior é melhor), a proporção de sessões padronizadas concluídas sem encerramento inesperado (*crash*):

$$
M_{3.1} = 1 - \frac{S_c}{S_t}
$$

Em que:

- $S_c$: número de sessões válidas em que ocorreu **ao menos um encerramento inesperado** do aplicativo durante a execução do roteiro padronizado, observado na gravação de tela ou confirmado via `adb logcat -v time | grep -E "FATAL EXCEPTION|AndroidRuntime"` (restrição $0 \le S_c \le S_t$).
- $S_t$: número total de sessões válidas avaliadas quanto a *crashes* (amostra planejada de **20 sessões de 5 minutos**, totalizando 100 minutos ativos; 1 minuto por atividade na ordem definida em [M3.1 e M3.2](../fase3/2-procedimentos.md#m31-e-m32-sessoes-sem-crashes-e-sem-congelamentos-lab)). Sessões interrompidas por *crash* permanecem em $S_t$ e são contabilizadas em $S_c$; a retomada do uso inicia nova sessão com identificador próprio.

Critério de classificação por sessão:

- **Conforme:** ausência de encerramento inesperado durante os 5 minutos do roteiro.
- **Defeito:** ocorrência de encerramento inesperado (*crash*).
- **Não observável:** interrupção causada exclusivamente por falha do ambiente de teste (ex.: queda de bateria do aparelho ou erro operacional do avaliador), excluída de $S_t$ com justificativa documentada.

Limiares de pontuação definidos na Fase 2: **Nota 4 (Excelente)** $\ge 0{,}99$ ($20/20$); **Nota 3 (Bom)** $\ge 0{,}95$ ($19/20$); **Nota 2 (Insuficiente)** $\ge 0{,}90$ ($18/20$); **Nota 1 (Crítico)** $< 0{,}90$ ($0\text{–}17/20$).

##### 2. Tabela de resultados dos ensaios

Conforme verificado em [Coleta de Dados](1-coleta.md), nenhuma das 20 sessões padronizadas previstas (`S01` a `S20`) foi registrada até o momento. A Tabela 6 consolida a apuração atual da amostra para `M3.1`.

| ID | Caso | Duração prevista | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
| :--- | :---: | :---: | :--- | :---: | :--- | :---: | :---: | :--- | :--- |
| `M3.1-01` a `M3.1-20` | `S01`–`S20` | 5 min cada | *Pendente de coleta* | — | `DISP01` · app `5.25.1(1149)` *(previsto)* | **Pendente** *(não coletado)* | — | *Aguardando vídeo e `logcat` em `1-coleta.md`* | Amostra de 20 sessões ainda não incorporada a `1-coleta.md`. |

<p class="legenda">Tabela 6. Registro consolidado dos ensaios da métrica M3.1. Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4).</p>

Contagem apurada das variáveis de entrada:

- Sessões previstas: $20$
- Sessões executadas em `1-coleta.md`: $0$
- Sessões não observáveis (excluídas): $0$
- Sessões pendentes / não coletadas: $20$
- Amostra válida apurada ($S_t$): $0$
- Sessões com *crash* ($S_c$): não apurado ($0$ registradas)

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota (1 a 4)

Aplicando os valores apurados na fórmula definida na Fase 2:

$$
M_{3.1} = 1 - \frac{S_c}{S_t} = 1 - \frac{\text{—}}{0} \implies \text{Indefinido (denominador } S_t = 0\text{)}
$$

De acordo com a **Regra 3 (Ausência de dados)** e a **Regra 4 (Coleta parcial)** de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo):

- **Valor da métrica (`M3.1`):** **Não avaliado (sem dados)**.
- **Grau / Nota (1 a 4):** **Sem nota atribuída** (a conversão para a escala ordinal de 1 a 4 só ocorre após a consolidação das 20 sessões válidas em `1-coleta.md`, segundo a faixa discreta da Tabela 5: Nota 4 = $20/20$; Nota 3 = $19/20$; Nota 2 = $18/20$; Nota 1 = $\le 17/20$).

##### 4. Confronto com a hipótese preditiva (`H3.1`)

- **Enunciado de H3.1 ([Planejamento e Objetivos](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** espera-se $M_{3.1} \ge 0{,}95$, isto é, no máximo 1 sessão com *crash* em 20 sessões avaliadas (associada ao carregamento de dados).
- **Situação do confronto:** **Não avaliada (aguardando coleta)**. Não é possível confirmar nem refutar `H3.1` sem os registros empíricos de execução das 20 sessões monitoradas via gravação e `adb logcat`.
- **Critério objetivo de decisão após a coleta:** quando os 20 ensaios válidos forem publicados em `1-coleta.md`, `H3.1` será **Confirmada** se $S_c \le 1$ ($M_{3.1} \in \{0{,}95;\ 1{,}00\}$, Notas 3 ou 4) e **Refutada** se $S_c \ge 2$ ($M_{3.1} \le 0{,}90$, Notas 1 ou 2). Tecnicamente, a hipótese apoia-se na referência do *Android vitals* (patamar de 1,09% de *crashes* percebidos por usuário ativo diário) adaptada à granularidade de sessão e reconhece que exceções não tratadas na desserialização ou renderização de dados da API da Semob-DF são a principal fonte potencial de encerramentos forçados.

---

#### 6.1.2. `M3.2` — Sessões sem Congelamentos (`Q3.2`)

##### 1. Definição matemática e variáveis medidas

A métrica **M3.2** mensura, em escala de razão no domínio $[0, 1]$ (maior é melhor), a proporção de sessões padronizadas sem congelamento prolongado da interface do usuário:

$$
M_{3.2} = 1 - \frac{S_a}{S_t}
$$

Em que:

- $S_a$: número de sessões válidas em que ocorreu **ao menos um congelamento da interface superior a 5 segundos** após uma ação do usuário (com "Mostrar toques" visível na gravação com marcação temporal), ou evento de **ANR (*Application Not Responding*)** confirmado em log do sistema operacional (restrição $0 \le S_a \le S_t$). Carregamento assíncrono em que a interface permanece responsiva (animação de progresso, cancelamento ou navegação fluida) não é contabilizado como congelamento.
- $S_t$: número total de sessões válidas avaliadas quanto a congelamentos nas mesmas 20 sessões padronizadas de **5 minutos** de `M3.1`, sendo cada sessão afetada contada uma única vez.

Limiares de pontuação definidos na Fase 2: **Nota 4 (Excelente)** $\ge 0{,}99$ ($20/20$); **Nota 3 (Bom)** $\ge 0{,}95$ ($19/20$); **Nota 2 (Insuficiente)** $\ge 0{,}90$ ($18/20$); **Nota 1 (Crítico)** $< 0{,}90$ ($0\text{–}17/20$).

##### 2. Tabela de resultados dos ensaios

Conforme verificado em [Coleta de Dados](1-coleta.md), nenhuma das 20 sessões previstas (`S01` a `S20`) foi registrada até o momento. A Tabela 7 consolida a apuração atual da amostra para `M3.2`.

| ID | Caso | Duração prevista | Avaliador | Data/hora | Ambiente | Estado | Valor medido (maior tempo sem resposta) | Evidência | Observações |
| :--- | :---: | :---: | :--- | :---: | :--- | :---: | :---: | :--- | :--- |
| `M3.2-01` a `M3.2-20` | `S01`–`S20` | 5 min cada | *Pendente de coleta* | — | `DISP01` · app `5.25.1(1149)` *(previsto)* | **Pendente** *(não coletado)* | — | *Aguardando vídeo com "Mostrar toques" e `logcat` em `1-coleta.md`* | Amostra de 20 sessões ainda não incorporada a `1-coleta.md`. |

<p class="legenda">Tabela 7. Registro consolidado dos ensaios da métrica M3.2. Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4).</p>

Contagem apurada das variáveis de entrada:

- Sessões previstas: $20$
- Sessões executadas em `1-coleta.md`: $0$
- Sessões não observáveis (excluídas): $0$
- Sessões pendentes / não coletadas: $20$
- Amostra válida apurada ($S_t$): $0$
- Sessões com congelamento $> 5\text{ s}$ ou ANR ($S_a$): não apurado ($0$ registradas)

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota (1 a 4)

Aplicando os valores apurados na fórmula definida na Fase 2:

$$
M_{3.2} = 1 - \frac{S_a}{S_t} = 1 - \frac{\text{—}}{0} \implies \text{Indefinido (denominador } S_t = 0\text{)}
$$

De acordo com a **Regra 3** e a **Regra 4** de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo):

- **Valor da métrica (`M3.2`):** **Não avaliado (sem dados)**.
- **Grau / Nota (1 a 4):** **Sem nota atribuída** (conversão aplicável apenas após conclusão das 20 sessões válidas: Nota 4 = $20/20$; Nota 3 = $19/20$; Nota 2 = $18/20$; Nota 1 = $\le 17/20$).

##### 4. Confronto com a hipótese preditiva (`H3.2`)

- **Enunciado de H3.2 ([Planejamento e Objetivos](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** espera-se $M_{3.2} \ge 0{,}95$, isto é, no máximo 1 sessão com congelamento superior a 5 segundos em 20 sessões avaliadas, associada ao carregamento do mapa.
- **Situação do confronto:** **Não avaliada (aguardando coleta)**. A ausência de registros temporais de resposta da UI impede validar ou refutar a hipótese neste momento.
- **Critério objetivo de decisão após a coleta:** quando os 20 ensaios válidos forem registrados em `1-coleta.md`, `H3.2` será **Confirmada** se $S_a \le 1$ ($M_{3.2} \in \{0{,}95;\ 1{,}00\}$, Notas 3 ou 4) e **Refutada** se $S_a \ge 2$ ($M_{3.2} \le 0{,}90$, Notas 1 ou 2). Do ponto de vista técnico, a renderização simultânea de múltiplos marcadores vetoriais de paradas e veículos em *main thread* (ou travamentos na camada de mapa em picos de requisição) constitui o principal risco de bloqueio superior ao limiar de 5 s definido pelo Android para detecção de ANR.

---

#### 6.1.3. Veredito parcial do Objetivo `G3` (Maturidade)

Pelo **critério conservador da pior nota** estabelecido na Seção 4.3 deste documento e em [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos):

| Métrica filha | Questão | Amostra válida | Valor apurado | Nota (1–4) | Situação da hipótese |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **M3.1** — Sessões sem *Crashes* | `Q3.1` | $S_t = 0 / 20$ | Não avaliado | — | `H3.1`: Não avaliada |
| **M3.2** — Sessões sem Congelamentos | `Q3.2` | $S_t = 0 / 20$ | Não avaliado | — | `H3.2`: Não avaliada |

<p class="legenda">Tabela 8. Síntese parcial do objetivo G3 (Maturidade). Fonte: elaboração própria (2026).</p>

- **Veredito parcial de `G3`:** **Não avaliado (dados incompletos)**. Conforme a regra de julgamento dos objetivos, enquanto `M3.1` e `M3.2` permanecerem sem dados válidos consolidados em `1-coleta.md`, o objetivo **não pode ser declarado satisfeito**. Após a coleta, `G3` assumirá a **menor nota** entre `M3.1` e `M3.2`: será **Satisfeito** se ambas obtiverem nota $\ge 3$ ($S_c \le 1$ e $S_a \le 1$); **Satisfeito com Ressalvas** se a pior nota for $2$ ($S_c = 2$ ou $S_a = 2$); e **Não Satisfeito** se qualquer uma obtiver nota $1$ ($S_c \ge 3$ ou $S_a \ge 3$).

---

### 6.2. Objetivo `G4` — Confiabilidade (Tolerância a Falhas)

O objetivo **G4** verifica a resiliência do aplicativo diante de falhas externas induzidas em laboratório (aparelho físico), medindo a capacidade de evitar encerramentos inesperados, informar o passageiro de modo oportuno e retomar a operação normal após o restabelecimento da infraestrutura.

#### 6.2.1. `M4.1` — Mitigação de Perda de Conexão (`Q4.1`)

*(Nota terminológica: em versões preliminares do planejamento o indicador apareceu como "Evitação de Quebra por Conexão"; desde a revisão 06 de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md) e a revisão 04 de [Método de Avaliação](../fase3/1-metodo.md), a denominação oficial adotada em todo o projeto é **M4.1 — Mitigação de Perda de Conexão**.)*

##### 1. Definição matemática e variáveis medidas

A métrica **M4.1** mensura, em escala de razão no domínio $[0, 1]$ (maior é melhor), a proporção de interrupções de rede induzidas tratadas adequadamente pelo aplicativo:

$$
M_{4.1} = \frac{R_s}{R_t}
$$

Em que:

- $R_s$: número de ensaios válidos de corte de rede em que o aplicativo atendeu **simultaneamente** a todos os critérios de aprovação do roteiro [M4.1 — Falha de rede](../fase3/2-procedimentos.md#m41-falha-de-rede-lab-aparelho-fisico):
  1. Permanece aberto e com interface responsiva durante a interrupção induzida (Modo Avião por **30 s**);
  2. Exibe aviso claro de indisponibilidade de conexão em até **5 s** (contados da tentativa de consulta dependente de dados até o aparecimento do aviso);
  3. Retoma a consulta automaticamente ou sob solicitação em até **30 s** após a reativação da rede (da reconexão até a conclusão da consulta).
- $R_t$: número total de interrupções de rede induzidas válidas (amostra planejada de **10 ensaios**, uma interrupção por ensaio em aparelho físico, partindo obrigatoriamente de estado inicial com rede ativa). Ensaios em que a rede já estava indisponível antes do teste são registrados como **Não observável** e excluídos de $R_t$.

Limiares de pontuação definidos na Fase 2: **Nota 4 (Excelente)** $= 1{,}00$ ($10/10$); **Nota 3 (Bom)** $\ge 0{,}85$ ($9/10$); **Nota 2 (Insuficiente)** $\ge 0{,}70$ ($7\text{–}8/10$); **Nota 1 (Crítico)** $< 0{,}70$ ($0\text{–}6/10$).

##### 2. Tabela de resultados dos ensaios

Conforme verificado em [Coleta de Dados](1-coleta.md), nenhum dos 10 ensaios previstos (`E01` a `E10`) foi registrado até o momento. A Tabela 9 consolida a apuração atual da amostra para `M4.1`.

| ID | Caso | Corte induzido | Avaliador | Data/hora | Ambiente | Estado | Valor medido (tempo de aviso / tempo de retomada) | Evidência | Observações |
| :--- | :---: | :---: | :--- | :---: | :--- | :---: | :---: | :--- | :--- |
| `M4.1-01` a `M4.1-10` | `E01`–`E10` | Modo Avião 30 s | *Pendente de coleta* | — | Aparelho físico · app `5.25.1(1149)` *(previsto)* | **Pendente** *(não coletado)* | — | *Aguardando gravação de tela com instantes visíveis em `1-coleta.md`* | Amostra de 10 ensaios ainda não incorporada a `1-coleta.md`. |

<p class="legenda">Tabela 9. Registro consolidado dos ensaios da métrica M4.1. Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4).</p>

Contagem apurada das variáveis de entrada:

- Ensaios previstos: $10$
- Ensaios executados em `1-coleta.md`: $0$
- Ensaios não observáveis (excluídos): $0$
- Ensaios pendentes / não coletados: $10$
- Amostra válida apurada ($R_t$): $0$
- Ensaios aprovados ($R_s$): não apurado ($0$ registrados)

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota (1 a 4)

Aplicando os valores apurados na fórmula definida na Fase 2:

$$
M_{4.1} = \frac{R_s}{R_t} = \frac{\text{—}}{0} \implies \text{Indefinido (denominador } R_t = 0\text{)}
$$

De acordo com a **Regra 3** e a **Regra 4** de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo):

- **Valor da métrica (`M4.1`):** **Não avaliado (sem dados)**.
- **Grau / Nota (1 a 4):** **Sem nota atribuída** (para 10 ensaios válidos: Nota 4 = $10/10$; Nota 3 = $9/10$; Nota 2 = $7\text{–}8/10$; Nota 1 = $\le 6/10$).

##### 4. Confronto com a hipótese preditiva (`H4.1`)

- **Enunciado de H4.1 ([Planejamento e Objetivos](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** espera-se $M_{4.1} < 0{,}85$, prevendo que, por ausência de modo *offline*, parte dos ensaios termine em carregamento indefinido ou sem exibição de aviso adequado dentro do prazo de 5 s (ou sem retomada dentro da janela estipulada).
- **Situação do confronto:** **Não avaliada (aguardando coleta)**. Sem os tempos cronometrados em vídeo dos 10 ensaios de corte de rede, não é possível confirmar nem refutar `H4.1`.
- **Critério objetivo de decisão após a coleta:** quando os 10 ensaios válidos forem publicados em `1-coleta.md`, `H4.1` será **Confirmada** se $R_s \le 8$ ($M_{4.1} \le 0{,}80 < 0{,}85$, Notas 1 ou 2) e **Refutada** se $R_s \ge 9$ ($M_{4.1} \ge 0{,}90 \ge 0{,}85$, Notas 3 ou 4). Note-se que `H4.1` formula uma expectativa negativa de qualidade: confirmá-la evidencia falha real de tolerância à desconexão e implica nota $\le 2$ para `M4.1`.

---

#### 6.2.2. `M4.2` — Tratamento de Perda de GPS (`Q4.2`)

##### 1. Definição matemática e variáveis medidas

A métrica **M4.2** mensura, em escala de razão no domínio $[0, 1]$ (maior é melhor), a proporção de desativações induzidas do serviço de localização tratadas adequadamente pelo aplicativo:

$$
M_{4.2} = \frac{G_s}{G_t}
$$

Em que:

- $G_s$: número de ensaios válidos de perda de GPS em que o aplicativo atendeu **simultaneamente** a todos os critérios do roteiro [M4.2 — Perda de localização](../fase3/2-procedimentos.md#m42-perda-de-localizacao-lab-aparelho-fisico):
  1. Permanece aberto e responsivo após a desativação do serviço de localização do dispositivo por **30 s**;
  2. Informa ao usuário a indisponibilidade de localização em até **5 s**;
  3. Mantém operacionais as **consultas independentes da posição do usuário** (como busca manual de linhas por texto e consulta a paradas);
  4. Retoma a função de geolocalização no mapa em até **30 s** após a reativação do serviço de localização.
- $G_t$: número total de desativações de localização induzidas válidas (amostra planejada de **10 ensaios**, uma desativação por ensaio em aparelho físico, com localização inicialmente ativa).

Limiares de pontuação definidos na Fase 2: **Nota 4 (Excelente)** $= 1{,}00$ ($10/10$); **Nota 3 (Bom)** $\ge 0{,}85$ ($9/10$); **Nota 2 (Insuficiente)** $\ge 0{,}70$ ($7\text{–}8/10$); **Nota 1 (Crítico)** $< 0{,}70$ ($0\text{–}6/10$).

##### 2. Tabela de resultados dos ensaios

Conforme verificado em [Coleta de Dados](1-coleta.md), nenhum dos 10 ensaios previstos (`E01` a `E10`) foi registrado até o momento. A Tabela 10 consolida a apuração atual da amostra para `M4.2`.

| ID | Caso | Desativação induzida | Avaliador | Data/hora | Ambiente | Estado | Valor medido (aviso / busca manual / retomada) | Evidência | Observações |
| :--- | :---: | :---: | :--- | :---: | :--- | :---: | :---: | :--- | :--- |
| `M4.2-01` a `M4.2-10` | `E01`–`E10` | Localização desligada 30 s | *Pendente de coleta* | — | Aparelho físico · app `5.25.1(1149)` *(previsto)* | **Pendente** *(não coletado)* | — | *Aguardando gravação de tela em `1-coleta.md`* | Amostra de 10 ensaios ainda não incorporada a `1-coleta.md`. |

<p class="legenda">Tabela 10. Registro consolidado dos ensaios da métrica M4.2. Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4).</p>

Contagem apurada das variáveis de entrada:

- Ensaios previstos: $10$
- Ensaios executados em `1-coleta.md`: $0$
- Ensaios não observáveis (excluídos): $0$
- Ensaios pendentes / não coletados: $10$
- Amostra válida apurada ($G_t$): $0$
- Ensaios aprovados ($G_s$): não apurado ($0$ registrados)

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota (1 a 4)

Aplicando os valores apurados na fórmula definida na Fase 2:

$$
M_{4.2} = \frac{G_s}{G_t} = \frac{\text{—}}{0} \implies \text{Indefinido (denominador } G_t = 0\text{)}
$$

De acordo com a **Regra 3** e a **Regra 4** de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo):

- **Valor da métrica (`M4.2`):** **Não avaliado (sem dados)**.
- **Grau / Nota (1 a 4):** **Sem nota atribuída** (para 10 ensaios válidos: Nota 4 = $10/10$; Nota 3 = $9/10$; Nota 2 = $7\text{–}8/10$; Nota 1 = $\le 6/10$).

##### 4. Confronto com a hipótese preditiva (`H4.2`)

- **Enunciado de H4.2 ([Planejamento e Objetivos](../fase2/planejamento-objetivos.md#matriz-de-questoes-e-hipoteses-operacionais)):** espera-se $M_{4.2} \ge 0{,}85$, prevendo que o aplicativo informe a perda de localização, preserve as consultas independentes de GPS (busca manual) e retome a função após a reativação.
- **Situação do confronto:** **Não avaliada (aguardando coleta)**. A ausência dos 10 ensaios gravados impede validar ou refutar a hipótese nesta etapa.
- **Critério objetivo de decisão após a coleta:** quando os 10 ensaios válidos forem registrados em `1-coleta.md`, `H4.2` será **Confirmada** se $G_s \ge 9$ ($M_{4.2} \in \{0{,}90;\ 1{,}00\} \ge 0{,}85$, Notas 3 ou 4) e **Refutada** se $G_s \le 8$ ($M_{4.2} \le 0{,}80 < 0{,}85$, Notas 1 ou 2). Tecnicamente, espera-se bom tratamento porque a API padrão de localização do Android (`LocationManager` / `FusedLocationProviderClient`) notifica mudanças de estado do provedor e a busca textual por código de linha não depende de coordenadas geográficas do dispositivo.

---

#### 6.2.3. Veredito parcial do Objetivo `G4` (Tolerância a Falhas)

Pelo **critério conservador da pior nota** estabelecido na Seção 4.3 deste documento e em [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos):

| Métrica filha | Questão | Amostra válida | Valor apurado | Nota (1–4) | Situação da hipótese |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **M4.1** — Mitigação de Perda de Conexão | `Q4.1` | $R_t = 0 / 10$ | Não avaliado | — | `H4.1`: Não avaliada |
| **M4.2** — Tratamento de Perda de GPS | `Q4.2` | $G_t = 0 / 10$ | Não avaliado | — | `H4.2`: Não avaliada |

<p class="legenda">Tabela 11. Síntese parcial do objetivo G4 (Tolerância a Falhas). Fonte: elaboração própria (2026).</p>

- **Veredito parcial de `G4`:** **Não avaliado (dados incompletos)**. Conforme a regra de julgamento dos objetivos, sem os registros válidos de `M4.1` e `M4.2` em `1-coleta.md`, o objetivo **não pode ser declarado satisfeito**. Após a coleta, `G4` assumirá a **menor nota** entre `M4.1` e `M4.2`: será **Satisfeito** apenas se ambas obtiverem nota $\ge 3$ ($R_s \ge 9$ e $G_s \ge 9$); **Satisfeito com Ressalvas** se a pior nota for $2$ ($7\text{–}8$ acertos em 10 na pior métrica); e **Não Satisfeito** se qualquer uma obtiver nota $1$ ($\le 6$ acertos em 10).

---

### 6.3. Síntese Parcial da Característica Confiabilidade (`QN2` / `D2`)

Aplicando a regra hierárquica de [Julgamento por Característica](../fase2/metricas-julgamento.md#julgamento-por-caracteristica-e-resposta-as-questoes-norteadoras), a característica **Confiabilidade** recebe o pior veredito dentre os objetivos **G3 (Maturidade)** e **G4 (Tolerância a Falhas)**:

| Objetivo | Subcaracterística (ISO/IEC 25010) | Métricas associadas | Coleta em `1-coleta.md` | Veredito parcial |
| :--- | :--- | :---: | :---: | :--- |
| **G3** | Maturidade | `M3.1`, `M3.2` | 0 / 20 sessões registradas | **Não avaliado (dados incompletos)** |
| **G4** | Tolerância a Falhas | `M4.1`, `M4.2` | 0 / 20 ensaios registrados (10 + 10) | **Não avaliado (dados incompletos)** |
| **Confiabilidade** | **QN2 / D2** | `M3.1`–`M4.2` | **Aguardando coleta** | **Não avaliada (dados incompletos)** |

<p class="legenda">Tabela 12. Síntese parcial da característica Confiabilidade e vínculo com QN2 e D2. Fonte: elaboração própria (2026).</p>

**Bloqueio para fechamento de QN2 e D2:** enquanto os registros das atividades `2.2` (`M3.1` e `M3.2`, 20 sessões de 5 min) e `2.3` (`M4.1` e `M4.2`, 10 + 10 ensaios de injeção de falha) não forem publicados em [Coleta de Dados](1-coleta.md) com suas respectivas evidências em vídeo e `adb logcat`, a avaliação da característica **Confiabilidade** permanece inconclusiva, impedindo a emissão de recomendação definitiva sobre estabilidade e resiliência para a decisão **D2**.


---

## Análise da Característica Adequação Funcional (Objetivos G5 e G6)

A característica **Adequação Funcional** da ISO/IEC 25010:2011 ocupa a **prioridade 1** no modelo de qualidade do projeto ([Modelo de Qualidade e Escopo](../fase1/5-modelo.md#23-adequacao-funcional-decisao-d3-questao-norteadora-qn3)) e responde diretamente à questão norteadora **QN3** (*fidelidade da informação e utilidade pública*), subsidiando a decisão estratégica **D3**. Seu desdobramento GQM compreende dois objetivos de medição ([Abordagem GQM e Metas de Avaliação](../fase2/planejamento-objetivos.md#g5)):

* **G5 — Adequação Funcional (Correção):** avalia a exatidão quantitativa das previsões de chegada (`M5.1`) e da localização espacial de paradas e veículos no mapa (`M5.2`) em campo.
* **G6 — Adequação Funcional (Completude e Pertinência):** avalia a cobertura funcional ponta a ponta das tarefas essenciais do passageiro (`M6.1`) e a completude do catálogo consultável de linhas e itinerários frente à base oficial da Semob-DF (`M6.2`).

Conforme as regras de consolidação estabelecidas na [Seção 2.2](#22-classificacao-de-estados-e-tratamento-formal-de-excecoes) e em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo), somente métricas com registros válidos publicados em [Coleta de Dados](1-coleta.md) recebem cálculo e nota definitivos; métricas sem registros publicados permanecem declaradas como **Não avaliado (sem dados)**, sem atribuição de nota ou confirmação/refutação de hipótese.

---

### Objetivo G5 — Correção Funcional (`Q5.1`, `Q5.2`)

#### M5.1 — Precisão de Tempo (`Q5.1`)

##### 1. Definição matemática e variáveis medidas

A métrica **M5.1** mede o erro absoluto mediano, em minutos, entre o instante de chegada previsto pelo aplicativo *DF no Ponto* e o instante de chegada físico observado do veículo em paradas reais do Distrito Federal ([Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#calculo-da-mediana-do-erro-temporal-m51)).

Para cada par válido $i \in \{1, \ldots, n\}$ (pareado por linha, sentido, parada e veículo ou viagem identificável, no fuso `America/Sao_Paulo` com relógios sincronizados via referência NTP/GPS):

$$
e_i = \frac{\lvert t_i^{obs} - t_i^{prev} \rvert}{60}
$$

Ordenando os $n$ erros individuais como $e_{(1)} \le e_{(2)} \le \cdots \le e_{(n)}$ (para $n > 0$):

$$
M_{5.1} =
\begin{cases}
e_{((n+1)/2)}, & \text{se } n \text{ for ímpar}, \\
\dfrac{e_{(n/2)} + e_{(n/2+1)}}{2}, & \text{se } n \text{ for par}.
\end{cases}
$$

Onde:

* $t_i^{obs}$: instante de chegada real observado (quando a frente do veículo alcança o ponto de referência da parada), em segundos;
* $t_i^{prev}$: instante de chegada previsto pelo aplicativo na **primeira previsão** capturada no início da janela de observação (caso o app exiba tempo restante, soma-se esse valor ao instante de captura), em segundos;
* $e_i$: erro absoluto do par $i$, em minutos;
* $n$: número de pares válidos previsão/chegada (amostra planejada na Fase 3: $10$ eventos em dois blocos de $5$, com duas linhas);
* **Escala, unidade e domínio:** razão, minutos, $[0, +\infty)$ — menor é melhor.

Previsões ausentes, chegadas sem identificação suficiente e chegadas não observadas são contabilizadas à parte como **Não observável** e **jamais recebem erro zero** ($e_i = 0$).

##### 2. Tabela de resultados dos ensaios

Conforme a Tabela 2 de consolidação, ainda não há registros de coleta em campo publicados para **M5.1** em [Coleta de Dados](1-coleta.md). A matriz abaixo preserva a estrutura prevista nos [Procedimentos de Execução](../fase3/2-procedimentos.md#m51-precisao-do-tempo-de-chegada-campo) para recepção dos $10$ eventos planejados:

| ID | Bloco / Caso | Linha · Sentido · Parada | $t_i^{prev}$ (s / horário) | $t_i^{obs}$ (s / horário) | Estado | Erro $e_i$ (min) | Evidência |
| :--- | :---: | :--- | :---: | :---: | :---: | :---: | :--- |
| M5.1-01 a M5.1-05 | Bloco 1 (5 eventos) | A registrar em `1-coleta.md` | — | — | Aguardando coleta | — | Captura + foto de chegada |
| M5.1-06 a M5.1-10 | Bloco 2 (5 eventos) | A registrar em `1-coleta.md` | — | — | Aguardando coleta | — | Captura + foto de chegada |
| **Exclusões à parte** | Não observáveis | Previsão ausente / ID insuficiente | — | — | Não contabilizado | **0** *(aguardando)* | Registro separado |

<p class="legenda">Tabela A1. Situação da coleta de campo da métrica M5.1 — Precisão de Tempo. Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4) e Procedimentos de Execução (Fase 3).</p>

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota

* **Amostra válida apurada:** $n = 0$ pares válidos (de $10$ previstos).
* **Valor calculado ($M_{5.1}$):** **Não calculável** (amostra temporal vazia).
* **Limiares de referência (Tabela 4):** $\le 2\text{ min}$ (**Nota 4**); $\le 5\text{ min}$ (**Nota 3**); $\le 10\text{ min}$ (**Nota 2**); $> 10\text{ min}$ (**Nota 1**).
* **Grau/Nota atribuída:** **Não avaliado (sem dados)** — sem nota atribuída (Regra 3 de [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md#regras-gerais-de-calculo)). Quando os $10$ pares forem coletados, o relatório deverá informar também o menor erro $e_{(1)}$, o maior erro $e_{(n)}$ e o tamanho $n$ válido.

##### 4. Confronto com a hipótese preditiva (`H5.1`)

* **Hipótese H5.1:** espera-se erro absoluto mediano de até $5\text{ minutos}$ (Nota 3 ou superior), isto é, $M_{5.1} \le 5{,}00\text{ min}$.
* **Situação:** **Não verificada (aguardando coleta de campo).** Não há evidência empírica publicada em [Coleta de Dados](1-coleta.md) para confirmar ou refutar **H5.1**. Na execução futura em campo, eventual violação de $M_{5.1} \le 5\text{ min}$ deverá ser analisada em conjunto com os fatores de variação previstos na *Abstraction Sheet* C da Fase 2 (congestionamentos severos e falhas nos rastreadores embarcados), distinguindo desvios de operação viária de falhas do algoritmo de estimativa exibido pelo aplicativo.

---

#### M5.2 — Correção de Dados do Mapa (`Q5.2`)

##### 1. Definição matemática e variáveis medidas

A métrica **M5.2** avalia a exatidão espacial das posições exibidas no mapa do aplicativo frente a uma referência independente obtida em campo pelo receptor GNSS do avaliador (conferida no **GPSTest** em datum **WGS84** / horário UTC, com precisão horizontal informada $\le 10\text{ m}$).

A razão de conformidade espacial é dada por:

$$
M_{5.2} = \frac{P_s}{P_t}
$$

Em que:

* $P_s$: número de observações posicionais válidas com distância $d_i \le \varepsilon$ em relação à posição de referência;
* $P_t$: total de observações posicionais válidas na amostra;
* $\varepsilon$: tolerância espacial fixada **antes da coleta** nos [Procedimentos de Execução](../fase3/2-procedimentos.md#m52-posicoes-no-mapa-campo) em **$\varepsilon = 30\text{ m}$** (nota: adota-se estritamente o valor $\varepsilon = 30\text{ m}$ vigente na Fase 3 e consolidado na Tabela 2 deste documento);
* $\Delta t_{\max}$: diferença temporal máxima admissível entre a captura no aplicativo e o registro do GPSTest para **veículos**, fixada em **$\Delta t_{\max} = 2\text{ s}$** (observando-se exclusivamente veículos parados junto à parada, uma vez que o aplicativo não exibe o instante de transmissão do sinal);
* **Escala, unidade e domínio:** razão, adimensional, $[0, 1]$ — maior é melhor.

Conforme [Verificação Espacial](../fase2/metricas-julgamento.md#verificacao-espacial-m52), a distância $d_i$ (em metros) pode ser obtida por **medição direta no mapa** (convertida pela escala do mapa no mesmo nível de zoom) ou por **cálculo geodésico via fórmula de Haversine** (com raio terrestre convencional $R = 6\,371\,000\text{ m}$ e coordenadas $\varphi, \lambda$ em radianos):

$$
a_i = \sin^2\!\left(\frac{\varphi_i^{app} - \varphi_i^{ref}}{2}\right)
+ \cos(\varphi_i^{app})\cos(\varphi_i^{ref})
\sin^2\!\left(\frac{\lambda_i^{app} - \lambda_i^{ref}}{2}\right)
$$

$$
d_i = 2R\arcsin\!\left(\sqrt{a_i}\right)
$$

Paradas e veículos são apurados e pontuados **separadamente**, atribuindo-se a **M5.2** para fins de julgamento de **G5** a **pior nota** entre os dois estratos (com a proporção consolidada informada apenas de modo complementar).

##### 2. Tabela de resultados dos ensaios

Não há registros de coleta publicados em [Coleta de Dados](1-coleta.md) para os estratos de **Paradas** nem de **Veículos**. As tabelas a seguir refletem as amostras planejadas na Fase 3:

| Estrato | Amostra prevista | Parâmetros fixados (Fase 3) | Executados em `1-coleta.md` | Inválidos ($\Delta t > 2\text{ s}$ ou prec. $> 10\text{ m}$) | Válidos ($P_t$) | Conformes ($P_s$, $d_i \le 30\text{ m}$) | Modo de obtenção de $d_i$ |
| :--- | :---: | :--- | :---: | :---: | :---: | :---: | :--- |
| **Paradas** | 5 paradas distintas | $\varepsilon = 30\text{ m}$; ref. GPSTest $\le 10\text{ m}$ | 0 | — | — | — | A registrar (Haversine ou escala no mapa) |
| **Veículos** | 10 eventos (veículo parado na parada) | $\varepsilon = 30\text{ m}$; $\Delta t_{\max} = 2\text{ s}$; ref. GPSTest $\le 10\text{ m}$ | 0 | — | — | — | A registrar (Haversine ou escala no mapa) |
| **Consolidado complementar** | 15 observações | Soma de acertos e totais válidos | 0 | — | — | — | Informativo (não substitui pior nota) |

<p class="legenda">Tabela A2. Situação da coleta de campo da métrica M5.2 — Correção de Dados do Mapa (Paradas e Veículos). Fonte: elaboração própria (2026), com base em Coleta de Dados (Fase 4) e Procedimentos de Execução (Fase 3).</p>

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota

* **Paradas ($P_t = 0$ de $5$ previstos):** **Não avaliado (sem dados)** — sem nota atribuída. Observação discreta (Tabela 5): para $5$ paradas válidas, $5/5$ resulta em **Nota 4**, $4/5 = 0{,}80$ em **Nota 2** e $0\text{–}3/5$ em **Nota 1**, não havendo nota 3 atingível.
* **Veículos ($P_t = 0$ de $10$ previstos):** **Não avaliado (sem dados)** — sem nota atribuída. Observação discreta (Tabela 5): para $10$ eventos válidos, $10/10$ resulta em **Nota 4**, $9/10 = 0{,}90$ em **Nota 3**, $7\text{–}8/10$ em **Nota 2** e $0\text{–}6/10$ em **Nota 1**.
* **Limiares de referência (Tabela 4):** $\ge 0{,}95$ (**Nota 4**); $\ge 0{,}85$ (**Nota 3**); $\ge 0{,}70$ (**Nota 2**); $< 0{,}70$ (**Nota 1**).
* **Grau/Nota atribuída a M5.2 (pior entre paradas e veículos):** **Não avaliado (sem dados)**.

##### 4. Confronto com a hipótese preditiva (`H5.2`)

* **Hipótese H5.2:** espera-se $M_{5.2} \ge 0{,}85$ para paradas e valor menor para veículos, pela defasagem de transmissão da posição.
* **Situação:** **Não verificada (aguardando coleta de campo).** Como não há observações publicadas em [Coleta de Dados](1-coleta.md), não é possível confirmar nem refutar **H5.2**. Ressalta-se que, pela limitação operacional registrada na Fase 3 (ausência do horário de transmissão da posição no aplicativo e restrição a veículos parados junto à parada), espera-se que parte da latência de atualização embarcada ainda se manifeste caso haja atraso no servidor mesmo com o veículo estacionado, o que será quantificado após a coleta de campo.

---

### Objetivo G6 — Completude e Pertinência Funcional (`Q6.1`, `Q6.2`)

#### M6.1 — Cobertura de Tarefas Essenciais (`Q6.1`)

##### 1. Definição matemática e variáveis medidas

A métrica **M6.1** avalia a proporção de tarefas essenciais do catálogo fixo concluídas de ponta a ponta com o resultado esperado no aplicativo, combinando completude e correção dos fluxos principais selecionados sob o critério transversal de Pertinência Funcional:

$$
M_{6.1} = 1 - \frac{F_f}{F_t}
$$

Onde:

* $F_f$: número de tarefas do catálogo essencial que falharam na execução ponta a ponta (`Defeito`);
* $F_t$: total de tarefas do catálogo essencial com avaliação completa válida (amostra planejada na Fase 3: $8$ tarefas, identificadas como **`TE01` a `TE08`**, executadas no aparelho principal com rede e localização ativas);
* **Escala, unidade e domínio:** razão, adimensional, $[0, 1]$ — maior é melhor.

O catálogo oficial fixado na Seção 3.2 de [Procedimentos de Execução](../fase3/2-procedimentos.md#32-tarefas-essenciais-m61-e-m12) abrange: busca por linha (`TE01`), consulta de quadro de horários (`TE02`), exibição de itinerário no mapa (`TE03`), consulta a parada (`TE04`), acompanhamento de veículo em trânsito (`TE05`) e gerenciamento de favoritos (`TE06`–`TE08`).

##### 2. Tabela de resultados dos ensaios

Ainda não há registros publicados para **M6.1** em [Coleta de Dados](1-coleta.md). A tabela abaixo consolida o catálogo completo de $8$ tarefas essenciais (`TE01`–`TE08`) aguardando registro:

| ID | Caso | Tarefa essencial (Fase 3, Tabela 2) | Resultado esperado | Estado em `1-coleta.md` | Valor medido | Evidência prevista |
| :--- | :---: | :--- | :--- | :---: | :---: | :--- |
| M6.1-01 | TE01 | Buscar `L01` pelo código | Linha encontrada, com identificação e sentido corretos | Aguardando coleta | — | Captura de tela |
| M6.1-02 | TE02 | Consultar horários de `L01` no dia de referência | Grade da linha, sentido e dia corretos | Aguardando coleta | — | Captura de tela |
| M6.1-03 | TE03 | Abrir o itinerário de `L01` | Traçado e paradas do sentido selecionado | Aguardando coleta | — | Captura de tela |
| M6.1-04 | TE04 | Consultar `P01` | Identificação da parada e linhas que a atendem | Aguardando coleta | — | Captura de tela |
| M6.1-05 | TE05 | Acompanhar um veículo de `L02` em operação | Veículo identificável e posição no mapa *(Não observável se `L02` sem operação)* | Aguardando coleta | — | Captura de tela |
| M6.1-06 | TE06 | Salvar `L01` nos favoritos e reabrir a lista | `L01` presente na lista | Aguardando coleta | — | Captura de tela |
| M6.1-07 | TE07 | Salvar `P01` nos favoritos e reabrir a lista | `P01` presente na lista | Aguardando coleta | — | Captura de tela |
| M6.1-08 | TE08 | Remover `L01` dos favoritos e reabrir a lista | `L01` ausente, outros favoritos mantidos | Aguardando coleta | — | Captura de tela |

<p class="legenda">Tabela A3. Catálogo de tarefas essenciais e situação da coleta da métrica M6.1. Fonte: elaboração própria (2026), com base em Procedimentos de Execução (Fase 3) e Coleta de Dados (Fase 4).</p>

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota

* **Amostra válida apurada:** $F_t = 0$ tarefas válidas (de $8$ previstas).
* **Valor calculado ($M_{6.1}$):** **Não calculável** (denominador zero).
* **Limiares de referência (Tabela 4):** $= 1{,}00$ (**Nota 4**); $\ge 0{,}95$ (**Nota 3**); $\ge 0{,}80$ (**Nota 2**); $< 0{,}80$ (**Nota 1**).
* **Mapeamento discreto de amostra pequena (Tabela 5):** com $F_t = 8$ tarefas válidas, cada falha altera o índice em $1/8 = 0{,}125$: $8/8 = 1{,}00$ (**Nota 4**), $7/8 = 0{,}875$ (**Nota 2**) e $0\text{–}6/8 \le 0{,}750$ (**Nota 1**), sendo a **Nota 3 inatingível**.
* **Grau/Nota atribuída:** **Não avaliado (sem dados)**.

##### 4. Confronto com a hipótese preditiva (`H6.1`)

* **Hipótese H6.1:** espera-se $M_{6.1} = 1{,}00$: as oito tarefas essenciais concluem com o resultado esperado.
* **Situação:** **Não verificada (aguardando coleta em laboratório).** A verificação depende da publicação dos $8$ registros (`TE01`–`TE08`) em [Coleta de Dados](1-coleta.md). Do ponto de vista analítico, como a amostra tem $F_t = 8$, a ocorrência de uma única tarefa com `Defeito` será suficiente para refutar **H6.1** e rebaixar a métrica diretamente para **Nota 2 (Insuficiente)**.

---

#### M6.2 — Completude do Banco (`Q6.2`)

##### 1. Definição matemática e variáveis medidas

A métrica **M6.2** avalia a sincronização e completude da base consultável de linhas e itinerários do aplicativo frente ao Relatório de Linhas oficial da Semob-DF:

$$
M_{6.2} = \frac{L_c}{L_t}
$$

Onde:

* $L_c$: número de linhas/itinerários da amostra oficial encontrados no aplicativo com código, denominação (origem/destino) e sentidos correspondentes (ida e volta quando aplicável, ou circular);
* $L_t$: total de linhas/itinerários oficiais auditados na amostra estratificada ($20$ itens sorteados com viagens em dia útil, sendo $4$ por bacia operacional de 01 a 05);
* **Escala, unidade e domínio:** razão, adimensional, $[0, 1]$ — maior é melhor.

##### 2. Tabela de resultados dos ensaios

Os dados completos dos $20$ casos (`A01` a `A20`, IDs `M6.2-01` a `M6.2-20`) constam integralmente na **Tabela 1 de [Coleta de Dados](1-coleta.md#m62-completude-do-banco)**, coletados pelo avaliador Pedro Ramos no ambiente `DISP01 · Android 13 · app 5.25.1(1149)` contra o Relatório de Linhas da Semob-DF (data de referência `17/11/2026`), com evidências visuais anexadas (`M6.2_A01_DISP01.jpg` a `M6.2_A20_DISP01.jpg`). A Tabela A4 sintetiza a apuração por bacia operacional:

| Bacia operacional | Itens auditados (`1-coleta.md`, Tabela 1) | Códigos sorteados | Tipologia observada | Conformes ($L_c$) | Defeitos | Não observáveis / Pendentes | Evidências vinculadas |
| :---: | :--- | :--- | :--- | :---: | :---: | :---: | :--- |
| **Bacia 01** | `M6.2-01` a `M6.2-04` (`A01`–`A04`) | `0.110`, `0.504`, `062.1`, `620.1` | 3 Circulares, 1 Duplo Sentido | 4 | 0 | 0 | `M6.2_A01_DISP01.jpg`–`A04` |
| **Bacia 02** | `M6.2-05` a `M6.2-08` (`A05`–`A08`) | `0.102`, `0.761`, `180.2`, `2201` | 1 Circular, 3 Duplo Sentido | 4 | 0 | 0 | `M6.2_A05_DISP01.jpg`–`A08` |
| **Bacia 03** | `M6.2-09` a `M6.2-12` (`A09`–`A12`) | `0.082`, `0.809`, `119.0`, `870.1` | 3 Circulares, 1 Duplo Sentido | 4 | 0 | 0 | `M6.2_A09_DISP01.jpg`–`A12` |
| **Bacia 04** | `M6.2-13` a `M6.2-16` (`A13`–`A16`) | `0.008`, `0.336`, `154.2`, `933.1` | 2 Circulares, 2 Duplo Sentido | 4 | 0 | 0 | `M6.2_A13_DISP01.jpg`–`A16` |
| **Bacia 05** | `M6.2-17` a `M6.2-20` (`A17`–`A20`) | `0.005`, `0.400`, `0.808`, `158.6` | 1 Circular, 3 Duplo Sentido | 4 | 0 | 0 | `M6.2_A17_DISP01.jpg`–`A20` |
| **Total** | **20 casos (`A01`–`A20`)** | **20 linhas (4 por bacia)** | **10 Circulares, 10 Duplo Sentido** | **20** | **0** | **0** | **20 capturas validadas** |

<p class="legenda">Tabela A4. Síntese por bacia da auditoria da métrica M6.2 — Completude do Banco, referenciada à Tabela 1 de Coleta de Dados (Fase 4). Fonte: elaboração própria (2026).</p>

##### 3. Cálculo do valor da métrica e atribuição do Grau/Nota

Com base nos $20$ registros válidos e zero exclusões da Tabela 1 de [Coleta de Dados](1-coleta.md):

$$
M_{6.2} = \frac{L_c}{L_t} = \frac{20}{20} = 1{,}00 \ (100{,}00\%)
$$

* **Contagem informada:** **$20$ de $20$** itens conformes ($0$ defeitos, $0$ não observáveis, $0$ pendentes).
* **Limiares de referência (Tabela 4):** $= 1{,}00$ (**Nota 4**); $\ge 0{,}95$ (**Nota 3**); $\ge 0{,}80$ (**Nota 2**); $< 0{,}80$ (**Nota 1**).
* **Grau/Nota atribuída:** **Nota 4 (Excelente)** — eficácia plena na amostra auditada, satisfazendo o limiar máximo ($1{,}00$) sem necessidade de arredondamento.

##### 4. Confronto com a hipótese preditiva (`H6.2`)

* **Hipótese H6.2:** espera-se $M_{6.2} \ge 0{,}95$ (no máximo um item oficial ausente ou divergente em $20$).
* **Situação:** **Confirmada.** O resultado observado ($M_{6.2} = 1{,}00$, $20/20$) supera o patamar mínimo previsto na hipótese ($0{,}95$), demonstrando que, para a versão `5.25.1(1149)` na data de referência `17/11/2026`, todas as $20$ linhas sorteadas nas cinco bacias operacionais (tanto linhas circulares quanto de duplo sentido) estão cadastradas no aplicativo com código, denominação e sentidos compatíveis com o Relatório de Linhas da Semob-DF.
* **Ressalva de escopo amostral:** conforme as limitações da Fase 3, o índice vale estritamente para a amostra estratificada de $20$ linhas com viagens em dia útil na data de `17/11/2026` e não constitui estimativa estatística da cobertura integral de toda a malha do STPC-DF.

---

### Veredito Parcial dos Objetivos G5 e G6 e Síntese de Adequação Funcional (`QN3` / `D3`)

Aplicando o **critério conservador da pior nota** estabelecido em [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos) e na Seção 4.3 deste documento (segundo o qual todas as métricas filhas obrigatórias devem estar avaliadas para que o objetivo receba veredito definitivo), consolida-se o quadro parcial abaixo:

| Objetivo / Característica | Métricas filhas | Valores e Notas individuais apurados | Veredito parcial (critério da pior nota) | Condição para fechamento definitivo |
| :--- | :--- | :--- | :--- | :--- |
| **G5 — Adequação Funcional (Correção)** | **M5.1** (Precisão de Tempo)<br>**M5.2** (Correção do Mapa: Paradas e Veículos) | • **M5.1:** *Não avaliado (sem dados)* ($0/10$)<br>• **M5.2 (Paradas):** *Não avaliado (sem dados)* ($0/5$)<br>• **M5.2 (Veículos):** *Não avaliado (sem dados)* ($0/10$) | **Não avaliado (dados incompletos)** | Publicar os $10$ pares válidos de campo de `M5.1` e os estratos válidos de `M5.2` ($5$ paradas e $10$ eventos de veículos) em `1-coleta.md`. |
| **G6 — Adequação Funcional (Completude e Pertinência)** | **M6.1** (Cobertura de Tarefas Essenciais)<br>**M6.2** (Completude do Banco) | • **M6.1:** *Não avaliado (sem dados)* ($0/8$)<br>• **M6.2:** **$1{,}00$ ($20/20$) — Nota 4 (Excelente)** | **Não avaliado (dados incompletos)** *(mantém-se visível Nota 4 em M6.2)* | Publicar a execução das $8$ tarefas (`TE01`–`TE08`) de `M6.1` em `1-coleta.md`. Pela regra discreta ($F_t = 8$), `G6` só será **Satisfeito** se `M6.1` atingir $8/8$ (Nota 4); uma única falha leva `M6.1` e `G6` para Nota 2 (**Satisfeito com Ressalvas**). |
| **Característica: Adequação Funcional (`QN3` / `D3`)** | **G5** e **G6** | **G5:** *Não avaliado* · **G6:** *Não avaliado* (com `M6.2` = Nota 4) | **Não avaliado (dados incompletos)** | Conclusão das coletas pendentes de `M5.1`, `M5.2` e `M6.1` em `1-coleta.md` para resposta definitiva a **QN3** e suporte à decisão **D3**. |

<p class="legenda">Tabela A5. Síntese dos resultados parciais e vereditos dos objetivos G5 e G6 pelo critério conservador. Fonte: elaboração própria (2026).</p>


---

## 8. Quadro Comparativo Global das 12 Métricas e Hipóteses Preditivas

Esta seção consolida, em uma visão unificada, todas as **12 métricas (`M1.1` a `M6.2`)**, seus respectivos objetivos de medição (`G1` a `G6`), características da norma **ISO/IEC 25010:2011**, amostras previstas na Fase 3, valores apurados a partir dos registros de [Coleta de Dados](1-coleta.md), notas na escala ordinal (`1` a `4`), confronto com as **12 hipóteses preditivas (`H1.1` a `H6.2`)** e vereditos parciais pelo critério conservador da pior nota.

> **Destaque de consolidação e conformidade com a ISO/IEC 25040:2011:** até o fechamento desta análise, apenas a métrica **M6.2 — Completude do Banco** possui coleta completa publicada e auditada em [Coleta de Dados](1-coleta.md), obtendo **$20/20 = 1{,}00$ ($100{,}00\%$)**, **Nota 4 (Excelente)** e **confirmação plena da hipótese preditiva `H6.2`** ($M_{6.2} \ge 0{,}95$). Para todas as demais métricas (**`M1.1` a `M6.1`**), cujas tabelas de execução ainda aguardam incorporação em `1-coleta.md`, registra-se rigorosamente o estado **Não avaliado (sem dados)** e a situação **Não verificada (aguardando coleta)**, sem simulação, extrapolação ou fabricação de valores empíricos, em estrita observância à **ISO/IEC 25040:2011** e às [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo).

| Código | Métrica | Característica / Objetivo | Amostra Prevista | Valor Medido | Nota (1 a 4) | Hipótese Preditiva | Veredito da Hipótese | Veredito do Objetivo |
| :---: | :--- | :--- | :---: | :---: | :---: | :--- | :--- | :--- |
| **M1.1** | Adaptabilidade de Hardware (Telas) | Portabilidade / **G1** (Adaptabilidade) | 20 casos (`T01`–`T05` × `C01`–`C04`) | Não avaliado (sem dados) | — *(Sem nota)* | **H1.1:** $M_{1.1} < 1{,}00$ (corte/sobreposição no mapa em tela compacta ou fonte 200%) | Não verificada (aguardando coleta) | **G1:** Não avaliado (dados incompletos) |
| **M1.2** | Adaptabilidade de SO | Portabilidade / **G1** (Adaptabilidade) | 3 versões (Android 9, 13 e aparelho físico) | Não avaliado (sem dados) | — *(Sem nota)* | **H1.2:** $M_{1.2} = 1{,}00$ (todos os fluxos críticos concluem nas versões testadas) | Não verificada (aguardando coleta) | **G1:** Não avaliado (dados incompletos) |
| **M2.1** | Sucesso de Instalação | Portabilidade / **G2** (Instalabilidade) | 10 ciclos (1ª tentativa via Play Store) | Não avaliado (sem dados) | — *(Sem nota)* | **H2.1:** $M_{2.1} = 1{,}00$ (todas as instalações concluem na 1ª tentativa) | Não verificada (aguardando coleta) | **G2:** Não avaliado (dados incompletos) |
| **M2.2** | Resíduo Pós-Desinstalação | Portabilidade / **G2** (Instalabilidade) | 10 ciclos (inspeção `adb` compartilhada) | Não avaliado (sem dados) | — *(Sem nota)* | **H2.2:** $M_{2.2} < 1{,}00$ (ao menos 1 ciclo deixa arquivo residual) | Não verificada (aguardando coleta) | **G2:** Não avaliado (dados incompletos) |
| **M3.1** | Sessões sem *Crashes* | Confiabilidade / **G3** (Maturidade) | 20 sessões (5 min cada) | Não avaliado (sem dados) | — *(Sem nota)* | **H3.1:** $M_{3.1} \ge 0{,}95$ (no máximo 1 sessão com *crash* em 20) | Não verificada (aguardando coleta) | **G3:** Não avaliado (dados incompletos) |
| **M3.2** | Sessões sem Congelamentos | Confiabilidade / **G3** (Maturidade) | 20 sessões (5 min cada) | Não avaliado (sem dados) | — *(Sem nota)* | **H3.2:** $M_{3.2} \ge 0{,}95$ (no máximo 1 sessão com congelamento $> 5\text{ s}$ em 20) | Não verificada (aguardando coleta) | **G3:** Não avaliado (dados incompletos) |
| **M4.1** | Mitigação de Perda de Conexão | Confiabilidade / **G4** (Tolerância a Falhas) | 10 ensaios (corte de rede 30 s) | Não avaliado (sem dados) | — *(Sem nota)* | **H4.1:** $M_{4.1} < 0{,}85$ (parte dos ensaios sem aviso no prazo por falta de modo *offline*) | Não verificada (aguardando coleta) | **G4:** Não avaliado (dados incompletos) |
| **M4.2** | Tratamento de Perda de GPS | Confiabilidade / **G4** (Tolerância a Falhas) | 10 ensaios (GPS desligado 30 s) | Não avaliado (sem dados) | — *(Sem nota)* | **H4.2:** $M_{4.2} \ge 0{,}85$ (avisa perda, mantém buscas independentes e retoma) | Não verificada (aguardando coleta) | **G4:** Não avaliado (dados incompletos) |
| **M5.1** | Precisão de Tempo | Adequação Funcional / **G5** (Correção) | 10 eventos de chegada (2 blocos de 5) | Não avaliado (sem dados) | — *(Sem nota)* | **H5.1:** $M_{5.1} \le 5\text{ min}$ (erro absoluto mediano até 5 min; Nota $\ge 3$) | Não verificada (aguardando coleta) | **G5:** Não avaliado (dados incompletos) |
| **M5.2** | Correção de Dados (Mapa) | Adequação Funcional / **G5** (Correção) | 5 paradas e 10 veículos ($\varepsilon = 30\text{ m}$, $\Delta t_{\max} = 2\text{ s}$) | Não avaliado (sem dados) | — *(Sem nota)* | **H5.2:** $M_{5.2} \ge 0{,}85$ para paradas e valor menor para veículos | Não verificada (aguardando coleta) | **G5:** Não avaliado (dados incompletos) |
| **M6.1** | Cobertura de Tarefas Essenciais | Adequação Funcional / **G6** (Completude e Pertinência) | 8 tarefas (`TE01`–`TE08`) | Não avaliado (sem dados) | — *(Sem nota)* | **H6.1:** $M_{6.1} = 1{,}00$ (as 8 tarefas essenciais concluem com o resultado esperado) | Não verificada (aguardando coleta) | **G6:** Não avaliado (dados incompletos) |
| **M6.2** | **Completude do Banco** | Adequação Funcional / **G6** (Completude e Pertinência) | **20 itens** (`A01`–`A20`, 4 por bacia) | **$20/20 = 1{,}00$ ($100{,}00\%$)** | **4 — Excelente** | **H6.2:** $M_{6.2} \ge 0{,}95$ (no máximo 1 item ausente ou divergente em 20) | **Confirmada** | **G6:** Não avaliado (dados incompletos)* *(aguarda `M6.1`)* |

<p class="legenda">Tabela 13. Quadro comparativo global das 12 métricas, notas, hipóteses preditivas e vereditos dos objetivos na Fase 4. *Nota: embora M6.2 tenha atingido Nota 4 (Excelente), o objetivo G6 permanece como "Não avaliado (dados incompletos)" até a coleta de M6.1, conforme o critério conservador de Julgamento dos Objetivos. Fonte: elaboração própria (2026).</p>

### 8.1. Síntese de Fechamento Parcial por Característica, Questão Norteadora e Decisão Apoiada

Aplicando a regra hierárquica de [Julgamento por Característica](../fase2/metricas-julgamento.md#julgamento-por-caracteristica-e-resposta-as-questoes-norteadoras) — na qual cada característica assume o pior veredito dentre seus dois objetivos —, o panorama consolidado para resposta às questões norteadoras (`QN1` a `QN3`) e suporte às decisões estratégicas (`D1` a `D3`) apresenta-se da seguinte forma:

1. **Portabilidade (`QN1` / `D1` — `G1` e `G2`):** **Não avaliada (dados incompletos)**. A ausência dos registros de `M1.1` (20 pares tela × configuração), `M1.2` (versões do Android), `M2.1` (10 ciclos de instalação) e `M2.2` (10 ciclos de desinstalação) em [Coleta de Dados](1-coleta.md) impede emissão de parecer conclusivo sobre adaptabilidade e instalabilidade.
2. **Confiabilidade (`QN2` / `D2` — `G3` e `G4`):** **Não avaliada (dados incompletos)**. Sem as 20 sessões padronizadas de `M3.1`/`M3.2` e os 20 ensaios de injeção de falha de `M4.1`/`M4.2`, a estabilidade sob uso contínuo e a tolerância a quedas de rede/GPS permanecem abertas.
3. **Adequação Funcional (`QN3` / `D3` — `G5` e `G6`):** **Não avaliada (dados incompletos)**, com **evidência positiva consolidada em `M6.2`**. A auditoria completa de `M6.2` ($20/20 = 1{,}00$, Nota 4 — Excelente) comprova plena sincronização cadastral da amostra de linhas com o Relatório de Linhas da Semob-DF de `17/11/2026`; todavia, o fechamento de `G6` depende de `M6.1` (`TE01`–`TE08`) e o fechamento de `G5` depende das medições de campo de `M5.1` e `M5.2`.

---

## 9. Documentação de Anomalias, Exclusões e Limitações Metodológicas

Esta seção registra formalmente as anomalias observadas nos dados publicados até o momento, os critérios de exclusão aplicáveis e as limitações metodológicas que condicionam a interpretação dos resultados desta avaliação, em conformidade com a transparência exigida pela **ISO/IEC 25040:2011** e com as ameaças à validade mapeadas no [Método de Avaliação](../fase3/1-metodo.md#6-limitacoes-do-metodo-e-ameacas-a-validade).

### 9.1. Anomalias Registradas nos Dados Coletados e na Consolidação

1. **Inconsistência de formatação de data em `1-coleta.md` (`M6.2-01` a `M6.2-20`):** durante a auditoria dos 20 registros publicados na Tabela 1 de [Coleta de Dados](1-coleta.md#m62-completude-do-banco), verificou-se que a coluna `Data/hora` de todas as linhas (`M6.2-01` a `M6.2-20`) está preenchida como `17/19/2026` (mês `19`), tratando-se de erro material de digitação referente à data `17/11/2026` (coerente com a data de referência oficial do Relatório de Linhas da Semob-DF e com o histórico da etapa). Essa anomalia editorial não compromete a validade técnica das capturas de tela (`M6.2_A01_DISP01.jpg` a `M6.2_A20_DISP01.jpg`) nem altera o índice $M_{6.2} = 1{,}00$, mas deve ser saneada no arquivo de coleta para manter a integridade cronológica dos logs.
2. **Incompletude da publicação das coletas (`M1.1` a `M6.1`):** até a consolidação deste documento, apenas `M6.2` teve sua tabela completa e evidências anexadas em [Coleta de Dados](1-coleta.md). Para preservar a rastreabilidade e evitar o viés de omissão, todas as 11 métricas restantes permanecem explicitamente declaradas como **Não avaliado (sem dados)**.
3. **Ausência de defeitos funcionais na amostra auditada de `M6.2`:** nas 20 linhas auditadas (`A01`–`A20`) em `DISP01` (`Android 13`, app `5.25.1(1149)`), não houve ocorrências de código inexistente, divergência de denominação ou ausência de sentido (ida/volta em linhas de duplo sentido), resultando em **0 defeitos**.

### 9.2. Registro de Exclusões (`Não observável` e `Pendente`)

- **Em `M6.2` (única métrica consolidada):** contabilizaram-se **0 exclusões** (`0` casos *Não observáveis* e `0` *Pendentes*), garantindo aproveitamento integral da amostra prevista ($L_t = 20/20$).
- **Critério formal para as métricas pendentes (`M1.1` a `M6.1`):** nenhuma falha atribuível ao aplicativo pode ser excluída da amostra válida. Exclusões são admitidas **exclusivamente** sob o estado **Não observável**, mediante justificativa e contagem à parte, nos casos de impedimento externo previstos na Seção 2.2 e na Fase 3:
  - Indisponibilidade externa da loja de aplicativos (`M2.1`) ou diretório inacessível por restrição do sistema (`M2.2`);
  - Queda de bateria ou erro operacional do avaliador durante sessões cronometradas (`M3.1`/`M3.2`);
  - Rede ou localização já previamente inativas antes do início do ensaio (`M4.1`/`M4.2`);
  - Previsão ausente no aplicativo, chegada sem identificação suficiente do veículo/linha ou ausência de operação da linha `L02` (`M5.1`, `M6.1-TE05`) — ressaltando que ausências em `M5.1` **nunca recebem erro zero** ($e_i = 0$);
  - Registros de posição com defasagem temporal $\Delta t > 2\text{ s}$ entre aplicativo e receptor de referência ou precisão horizontal informada pelo GPSTest $> 10\text{ m}$ (`M5.2`).

### 9.3. Limitações Metodológicas e Fatores que Afetam a Interpretação

1. **Limitação de amostragem e efeito de granularidade discreta:**
   - A avaliação adota **amostragem intencional reduzida** dimensionada à capacidade acadêmica da equipe; portanto, os índices obtidos **não estimam taxas populacionais** para todos os usuários do DF nem constituem certificação formal do produto.
   - Em amostras com $n < 20$, cada unidade altera o índice em $1/n$, criando degraus discretos nos quais faixas intermediárias da escala de notas tornam-se inatingíveis: em `M1.2` ($O_t = 3$), apenas as notas `4` e `1` são atingíveis; em `M2.1`, `M2.2` ($10$ ciclos), `M5.2` paradas ($5$ paradas) e `M6.1` ($8$ tarefas), a **Nota 3 é matematicamente inatingível**, fazendo com que um único defeito derrube a métrica diretamente da Nota 4 para a Nota 2.
   - Especificamente para **M6.2** ($M_{6.2} = 1{,}00$), embora a amostra de 20 itens seja estratificada nas 5 bacias operacionais (4 itens por bacia, sorteados entre linhas com viagens em dia útil), o resultado vale estritamente para a amostra auditada na data de referência `17/11/2026` e não garante cobertura integral de linhas operadas apenas aos finais de semana ou de alterações cadastrais posteriores.
2. **Cobertura de versões do Android e uso de emuladores:**
   - Na métrica `M1.2`, o plano cobre os extremos definidos (`Android 9` e `Android 13`) e o aparelho físico de referência (`DISP01`), deixando a **faixa intermediária (`Android 10`, `11` e `12`) sem verificação direta**. Falhas específicas de API ou permissões introduzidas nessas versões intermediárias não são capturadas pela amostra.
   - Os emuladores previstos para `M1.1` e `M1.2` oferecem controle preciso de resolução, densidade e escala de fonte, mas podem divergir de aparelhos físicos de entrada quanto à gestão térmica, consumo de memória RAM e latência de renderização de mapas.
3. **Dependência dos dados abertos e da infraestrutura da Semob-DF:**
   - Como o *DF no Ponto* exibe dados cadastrais, localização em tempo real e previsões alimentadas pela infraestrutura de dados abertos e sistemas de monitoramento da **Semob-DF**, eventuais atrasos de transmissão dos rastreadores embarcados, quedas temporárias da API governamental ou congestionamentos severos nas vias do Distrito Federal impactam diretamente as medições de `M3.2`, `M4.1`, `M5.1` e `M5.2`.
   - Em particular, como o aplicativo não exibe ao usuário o instante exato de transmissão do pacote de telemetria de cada ônibus, o protocolo de `M5.2` restringe a amostra de veículos a **veículos parados junto à parada** com $\Delta t_{\max} \le 2\text{ s}$, o que reduz o erro de movimento, mas não elimina eventual latência acumulada entre o rastreador embarcado e o servidor antes da captura.
4. **Restrições inerentes à abordagem de caixa preta, precisão GNSS e conformidade com a LGPD:**
   - Sem acesso ao código-fonte, *backend* ou permissões *root*, a auditoria de resíduos em `M2.2` limita-se aos diretórios de armazenamento compartilhado inspecionáveis via `adb` (`/sdcard/Android/data`, `obb`, `media`, `Download`, `Documents`), não observando áreas privadas internas removidas pelo próprio sistema Android.
   - A referência posicional de campo em `M5.2` depende de receptor GNSS de smartphone (validado no GPSTest com precisão $\le 10\text{ m}$ sob tolerância $\varepsilon = 30\text{ m}$), sujeito a atenuação por edificações, marquises de paradas e cobertura arbórea.
   - Todas as capturas e gravações em campo e laboratório devem obedecer à **LGPD (Lei nº 13.709/2018)**, utilizando apenas dados públicos do sistema de transporte e vedando o registro identificável de rostos, placas particulares ou documentos de terceiros, o que impõe cuidado de enquadramento durante a coleta de campo (`M5.1` e `M5.2`).

---

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*. Geneva: International Organization for Standardization, 2011.

[2] ISO. *ISO/IEC 25010:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — System and software quality models*. Geneva: International Organization for Standardization, 2011.

[3] ISO. *ISO/IEC 25023:2016 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*. Geneva: International Organization for Standardization, 2016.

[4] SEMOB-DF — Secretaria de Transporte e Mobilidade do Distrito Federal. *Dados do Sistema de Transporte Público do DF — Relatório de Linhas (DF no Ponto)*. Disponível em: <https://www.semob.df.gov.br/dados-do-sistema-de-transporte-publico-do-df>. Acesso em: 17 nov. 2026.

[5] BRASIL. *Lei nº 13.709, de 14 de agosto de 2018*. Lei Geral de Proteção de Dados Pessoais (LGPD). Diário Oficial da União: seção 1, Brasília, DF, 15 ago. 2018.

[6] SINNOTT, Roger W. Virtues of the Haversine. *Sky and Telescope*, v. 68, n. 2, p. 159, 1984.

[7] EQUIPE CAROL SHAW. [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md); [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md); [Procedimentos de Execução — Fase 3](../fase3/2-procedimentos.md); [Coleta de Dados — Fase 4](1-coleta.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Consolidação dos dados, cálculo das 12 métricas, avaliação de hipóteses e matriz comparativa da Fase 4 (#49) | [João Pedro Capozzi](https://github.com/jonas3688) | 18/11/2026 | — | — |
