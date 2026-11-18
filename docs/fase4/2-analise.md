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
