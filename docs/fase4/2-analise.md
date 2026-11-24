# Fase 4 — Análise de Dados

## 1. Introdução

Este documento registra o **cálculo das métricas**, a **atribuição das notas** de 1 a 4, o **confronto com as hipóteses** e o **veredito de cada objetivo de medição** (`G1` a `G6`) da avaliação do aplicativo móvel **DF no Ponto** (Android, versão de referência `5.25.1(1149)`). No processo da **ISO/IEC 25040:2011**, ele faz parte da atividade *executar a avaliação* e liga os registros de [Coleta de Dados](1-coleta.md) à síntese de [Resultados e Conclusões](3-resultados.md).

A Fase 4 **não redefine** fórmulas, escalas, limiares nem amostras. Tudo o que é aplicado aqui vem das regras fixadas antes da coleta em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md) (Fase 2) e em [Procedimentos de Execução](../fase3/2-procedimentos.md) (Fase 3). A análise parte dos **estados e valores registrados** em `1-coleta.md` (versão 1.5, de 20/11/2026); o conteúdo das capturas de tela e das gravações não foi reexaminado aqui, e sua conferência cabe à auditoria de 10% prevista na regra 7 dos procedimentos.

---

## 2. Regras aplicadas

1. **Contagem.** Numerador e denominador são inteiros na mesma unidade. Casos em estado **Defeito** ficam no denominador e nunca são excluídos para melhorar o resultado; só o estado **Não observável**, com justificativa, sai do denominador.
2. **Ausência de dados.** Denominador zero ou amostra temporal vazia resulta em **Não avaliado (sem dados)**, sem nota (regra 3 de [Regras Gerais de Cálculo](../fase2/metricas-julgamento.md#regras-gerais-de-calculo)).
3. **Coleta parcial.** Informam-se as quantidades previstas, executadas e válidas. Casos obrigatórios pendentes impedem declarar o objetivo satisfeito (regra 4).
4. **Notas ordinais.** Atribui-se a maior nota cuja condição seja satisfeita pelo valor **sem arredondamento**, e não se calcula média entre notas. Os limiares estão na Tabela 1.
5. **Veredito do objetivo.** O objetivo recebe a **pior nota** entre suas duas métricas filhas: só notas 3 e 4 resultam em **Satisfeito**; pelo menos uma nota 2, em **Satisfeito com Ressalvas**; pelo menos uma nota 1, em **Não Satisfeito**. Se uma métrica filha não estiver avaliada, o objetivo fica **Não avaliado (dados incompletos)**, mantendo visíveis as notas já obtidas.
6. **Amostras pequenas.** Com $n < 20$, cada caso muda o índice em $1/n$ e algumas notas não são atingíveis (Fase 3, [Amostras e limitação](../fase3/2-procedimentos.md#5-amostras-e-limitacao)). A contagem acompanha sempre a nota, e os resultados são **indicativos** para a amostra, a versão e o período observados.

| Métrica | Nota 4 (Excelente) | Nota 3 (Bom) | Nota 2 (Insuficiente) | Nota 1 (Crítico) |
| :--- | :---: | :---: | :---: | :---: |
| **M1.1 / M1.2** | $= 1{,}00$ | $\ge 0{,}90$ | $\ge 0{,}75$ | $< 0{,}75$ |
| **M2.1 / M2.2** | $= 1{,}00$ | $\ge 0{,}95$ | $\ge 0{,}85$ | $< 0{,}85$ |
| **M3.1 / M3.2** | $\ge 0{,}99$ | $\ge 0{,}95$ | $\ge 0{,}90$ | $< 0{,}90$ |
| **M4.1 / M4.2** | $= 1{,}00$ | $\ge 0{,}85$ | $\ge 0{,}70$ | $< 0{,}70$ |
| **M5.1** (mediana do erro) | $\le 2$ min | $\le 5$ min | $\le 10$ min | $> 10$ min |
| **M5.2** | $\ge 0{,}95$ | $\ge 0{,}85$ | $\ge 0{,}70$ | $< 0{,}70$ |
| **M6.1 / M6.2** | $= 1{,}00$ | $\ge 0{,}95$ | $\ge 0{,}80$ | $< 0{,}80$ |

<p class="legenda">Tabela 1. Limiares de pontuação fixados na Fase 2. Fonte: Métricas e Critérios de Julgamento (2026).</p>

---

## 3. Situação da amostra por métrica

A Tabela 2 compara o previsto na Fase 3 com o que consta em [Coleta de Dados](1-coleta.md).

| Métrica | Ambiente registrado | Previstos | Executados | Conformes | Defeitos | Não observáveis / inválidos | Amostra válida | Situação |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| **M1.1** | `DISP-02` · Android 13 | 20 casos | 20 | 15 | 5 | 0 | 20 | Completa |
| **M1.2** | `DISP-02` · Android 13 e `EMU-01` a `EMU-03` · Android 9, 10 e 17 | 2 versões distintas (Android 9 e 13) | 4 | 1 | 0 | 3 não observáveis | 1 | **Parcial** (só Android 13 validado) |
| **M2.1** | `DISP-02` · Android 13 | 10 ciclos | 10 | 10 | 0 | 0 | 10 | Completa |
| **M2.2** | `DISP-02` · Android 13 | 10 ciclos | 10 | 10 | 0 | 0 | 10 | Completa |
| **M3.1** | `DISP-02` · Android 13 | 20 sessões | 20 | 20 | 0 | 0 | 20 | Completa |
| **M3.2** | `DISP-02` · Android 13 | 20 sessões | 20 | 20 | 0 | 0 | 20 | Completa |
| **M4.1** | `DISP-01` · Android 13 | 10 ensaios | 10 | 10 | 0 | 0 | 10 | Completa |
| **M4.2** | `DISP-01` · Android 13 | 10 ensaios | 10 | 10 | 0 | 0 | 10 | Completa |
| **M5.1** | `DISP-02` · Android 13 | 10 eventos | 11 | — (mediana) | — | 1 inválido (`X01`) | 10 | Completa |
| **M5.2** (paradas) | `DISP-01` · Android 13 | 5 paradas | 5 | 5 | 0 | 0 | 5 | Completa |
| **M6.1** | `DISP-02` · Android 13 | 8 tarefas | 8 | 8 | 0 | 0 | 8 | Completa |
| **M6.2** | `DISP-01` · Android 13 | 20 itens | 20 | 20 | 0 | 0 | 20 | Completa |

<p class="legenda">Tabela 2. Amostras previstas, executadas e válidas. Fonte: elaboração própria (2026), com base em Coleta de Dados e Procedimentos de Execução.</p>

A versão do aplicativo avaliada foi `5.25.1(1149)`. Em `M1.2`, três tentativas em emulador foram classificadas como **Não observáveis**. Elas constam entre as quatro tentativas registradas e ficam fora da amostra válida.

---

## 4. Cálculo e análise por objetivo

### 4.1. G1 — Portabilidade (Adaptabilidade)

#### M1.1 — Adaptabilidade de Hardware (Telas)

$$
M_{1.1} = \frac{T_s}{T_t} = \frac{15}{20} = 0{,}75
$$

- **Amostra:** 20 casos `T01`–`T05` × `C01`–`C04`, avaliados em 18/11/2026 (10:43 a 10:54) por Vitor Bessa no `DISP-02`, com a configuração aplicada por `adb`.
- **Defeitos (5):** de `T01-C03` a `T05-C03` (`DEF-01` a `DEF-05` na [Coleta de Dados](1-coleta.md)). Todos ocorreram em retrato, `640 × 1136 px`, `320 dpi`, **fonte a 200%**.
- **Distribuição:** por configuração, `C01` 5/5, `C02` 5/5, **`C03` 0/5** e `C04` 5/5. Cada tela teve três casos conformes em quatro.
- **Nota:** **Nota 2 (Insuficiente)**, faixa de 15 a 17 casos conformes em 20. O valor está no limite inferior da faixa. Mais um defeito levaria a $14/20 = 0{,}70$ e à Nota 1.
- **Hipótese H1.1** ($M_{1.1} < 1{,}00$, com corte ou sobreposição na camada do mapa): **confirmada.** O índice ficou abaixo de 1,00. Em `T03-C03`, o código e o título da linha foram cortados, e o cabeçalho ampliado reduziu a área útil do mapa.

#### M1.2 — Adaptabilidade de Sistema Operacional

$$
M_{1.2} = \frac{O_s}{O_t} = \frac{1}{1} = 1{,}00 \quad \text{(resultado parcial)}
$$

- **Amostra prevista:** Android 9 e 13, além da versão do aparelho físico se distinta, conforme [Procedimentos de Execução](../fase3/2-procedimentos.md#5-amostras-e-limitacao). Com Android 13 no `DISP-02`, o roteiro previa duas versões distintas.
- **Tentativas registradas:** no Android 13 (API 33, `DISP-02`), as tarefas `TE01` a `TE08` foram concluídas sem erro de compatibilidade em 20/11/2026 às 20:35. Em 21/11, a equipe registrou recusas de instalação na Play Store nos emuladores de Android 9, 10 e 17. A [Coleta de Dados](1-coleta.md#m12-adaptabilidade-de-sistema-operacional) registra as três tentativas como **Não observáveis** e descreve a arquitetura dos emuladores como possível causa.
- **Resultado parcial:** o denominador inclui apenas a versão válida. O valor $1{,}00$ descreve o Android 13 e a métrica fica sem nota definitiva para a cobertura planejada.
- **Hipótese H1.2** ($M_{1.2} = 1{,}00$ nas versões testadas): **parcialmente verificada.** O resultado sustenta apenas a compatibilidade no Android 13.

#### Veredito de G1

| Métrica | Valor | Nota | Hipótese | Situação |
| :--- | :---: | :---: | :--- | :--- |
| **M1.1** | $15/20 = 0{,}75$ | **2** | H1.1 confirmada | Avaliada |
| **M1.2** | $1/1 = 1{,}00$ (4 tentativas) | — | H1.2 parcialmente verificada | Amostra parcial (só Android 13) |
| **G1** | — | — | — | **Não avaliado (dados incompletos)** |

<p class="legenda">Tabela 3. Síntese de G1. Fonte: elaboração própria (2026).</p>

A Nota 2 de `M1.1` registra o problema de acessibilidade nas telas. O veredito formal de `G1` fica **Não avaliado (dados incompletos)** porque só o Android 13 foi validado e o roteiro também previa o Android 9.

---

### 4.2. G2 — Portabilidade (Instalabilidade)

#### M2.1 — Sucesso de Instalação

$$
M_{2.1} = \frac{I_s}{I_t} = \frac{10}{10} = 1{,}00
$$

- **Amostra:** 10 ciclos de instalação limpa pela Google Play Store no `DISP-02`, em 19/11/2026 (16:41 a 17:25), todos concluídos na primeira tentativa.
- **Nota:** $1{,}00$ → **Nota 4 (Excelente)**. Nesta amostra a Nota 3 era inatingível ($9/10 = 0{,}90 < 0{,}95$), de modo que um único defeito já levaria à Nota 2.
- **Hipótese H2.1** ($M_{2.1} = 1{,}00$): **confirmada.**

#### M2.2 — Resíduo Pós-Desinstalação

$$
M_{2.2} = 1 - \frac{D_r}{D_t} = 1 - \frac{0}{10} = 1{,}00
$$

- **Amostra:** 10 ciclos de instalação, uso e desinstalação, com listagem por `adb` antes e depois e comparação por `diff` em `Android/data`, `Android/obb`, `Android/media`, `Download`, `Documents` e pastas com o nome do app. Em nenhum ciclo restou arquivo ou pasta atribuível ao aplicativo (`D_r = 0`).
- **Nota:** $1{,}00$ → **Nota 4 (Excelente)**. Também aqui a Nota 3 era inatingível.
- **Limite:** o resultado vale só para os locais observáveis. O armazenamento privado do app não é inspecionado na abordagem de caixa preta.
- **Hipótese H2.2** ($M_{2.2} < 1{,}00$): **refutada.** Não houve resíduo nos locais inspecionados.

#### Veredito de G2

| Métrica | Valor | Nota | Hipótese | Situação |
| :--- | :---: | :---: | :--- | :--- |
| **M2.1** | $10/10 = 1{,}00$ | **4** | H2.1 confirmada | Avaliada |
| **M2.2** | $10/10 = 1{,}00$ | **4** | H2.2 refutada | Avaliada |
| **G2** | — | $\min(4, 4) = 4$ | — | **Satisfeito** |

<p class="legenda">Tabela 4. Síntese de G2. Fonte: elaboração própria (2026).</p>

---

### 4.3. G3 — Confiabilidade (Maturidade)

#### M3.1 e M3.2 — Sessões sem *crashes* e sem congelamentos

$$
M_{3.1} = 1 - \frac{S_c}{S_t} = 1 - \frac{0}{20} = 1{,}00
\qquad
M_{3.2} = 1 - \frac{S_a}{S_t} = 1 - \frac{0}{20} = 1{,}00
$$

- **Amostra:** 20 sessões no `DISP-02`, em 20/11/2026 (de 15:18 a 18:00), sem indução de falhas. Cada sessão dedica 30 s a cinco atividades: busca, horários, itinerário no mapa, parada e veículo, e favoritos. Nenhuma sessão teve encerramento inesperado ($S_c = 0$) nem congelamento superior a 5 s ($S_a = 0$).
- **Notas:** ambas $1{,}00 \ge 0{,}99$ → **Nota 4 (Excelente)**, tanto em `M3.1` quanto em `M3.2`.
- **Declaração obrigatória de limite:** as sessões duraram **2 min 30 s** (50 min no total), e não os 5 min (100 min) do plano original. A Fase 3 já registrou a redução, que diminui a exposição e **tende a favorecer o resultado**. A nota vale só para a janela observada, em um único aparelho e uma única versão do Android.
- **Hipóteses H3.1 e H3.2** ($\ge 0{,}95$): **confirmadas.**

#### Veredito de G3

| Métrica | Valor | Nota | Hipótese | Situação |
| :--- | :---: | :---: | :--- | :--- |
| **M3.1** | $20/20 = 1{,}00$ | **4** | H3.1 confirmada | Avaliada |
| **M3.2** | $20/20 = 1{,}00$ | **4** | H3.2 confirmada | Avaliada |
| **G3** | — | $\min(4, 4) = 4$ | — | **Satisfeito** *(com a ressalva de exposição reduzida)* |

<p class="legenda">Tabela 5. Síntese de G3. Fonte: elaboração própria (2026).</p>

---

### 4.4. G4 — Confiabilidade (Tolerância a Falhas)

#### M4.1 — Mitigação de Perda de Conexão

$$
M_{4.1} = \frac{R_s}{R_t} = \frac{10}{10} = 1{,}00
$$

- **Amostra:** 10 ensaios no `DISP-01`, em 18/11/2026 (20:41 a 21:15), com **dados móveis e Wi-Fi desativados** e consulta dependente de dados. Em todos, o app ficou aberto e responsivo, informou a indisponibilidade em até 5 s e retomou a consulta em até 30 s após a reconexão.
- **Nota:** $1{,}00$ → **Nota 4 (Excelente)**.
- **Hipótese H4.1** ($M_{4.1} < 0{,}85$, por falta de modo *offline*): **refutada.** A expectativa pessimista da Fase 2 não se confirmou nos 10 ensaios.

#### M4.2 — Tratamento de Perda de GPS

$$
M_{4.2} = \frac{G_s}{G_t} = \frac{10}{10} = 1{,}00
$$

- **Amostra:** 10 ensaios no `DISP-01`, em 19/11/2026, das 18h08 às 18h16, com o serviço de localização desativado por 30 s. A [Coleta de Dados](1-coleta.md#m42-perda-de-localizacao) vincula um vídeo a cada ensaio. Em todos, o app informou a perda em até 5 s, manteve `TE01` e `TE04` disponíveis e recuperou a posição no mapa em até 30 s.
- **Nota:** $1{,}00$ → **Nota 4 (Excelente)**.
- **Hipótese H4.2** ($M_{4.2} \ge 0{,}85$): **confirmada.**

#### Veredito de G4

| Métrica | Valor | Nota | Hipótese | Situação |
| :--- | :---: | :---: | :--- | :--- |
| **M4.1** | $10/10 = 1{,}00$ | **4** | H4.1 refutada | Avaliada |
| **M4.2** | $10/10 = 1{,}00$ | **4** | H4.2 confirmada | Avaliada |
| **G4** | — | $\min(4, 4) = 4$ | — | **Satisfeito** |

<p class="legenda">Tabela 6. Síntese de G4. Fonte: elaboração própria (2026).</p>

---

### 4.5. G5 — Adequação Funcional (Correção)

#### M5.1 — Precisão de Tempo

$$
M_{5.1} = \operatorname{mediana}(e_1, \ldots, e_{10}) = 3{,}34\text{ min}
$$

- **Amostra e medição:** 11 eventos registrados em campo em 21/11/2026 no `DISP-02` (parada `P01`, Ceilândia Norte). Dos dez pares válidos, seis vieram do primeiro bloco e quatro do segundo. Foram sete pares da linha `933.4` e três da linha `0.089`. O evento `X01`, da linha `0.089`, foi excluído porque a chegada ficou sem registro.
- **Distribuição dos erros absolutos (minutos):** $[0{,}53;\ 0{,}65;\ 0{,}67;\ 0{,}95;\ 2{,}05;\ 4{,}63;\ 5{,}62;\ 13{,}32;\ 13{,}97;\ 38{,}97]$.
  - Erro mínimo: $0{,}53\text{ min}$ (32 s)
  - Erro máximo: $38{,}97\text{ min}$ (atraso severo na linha 0.089)
  - Mediana: $\frac{2{,}05 + 4{,}63}{2} = 3{,}34\text{ min}$ (3 min 20 s)
- **Nota:** $3{,}34\text{ min} \le 5\text{ min}$ (e $> 2\text{ min}$) $\rightarrow$ **Nota 3 (Bom)**, conforme escala da Fase 2 ($[0, 2] \rightarrow 4$, $(2, 5] \rightarrow 3$, $(5, 10] \rightarrow 2$, $> 10 \rightarrow 1$).
- **Hipótese H5.1** (mediana $\le 5$ min): **confirmada.**

#### M5.2 — Correção de Dados do Mapa (paradas)

$$
M_{5.2} = \frac{P_s}{P_t} = \frac{5}{5} = 1{,}00
$$

- **Escopo:** a métrica é apurada **só com paradas**, por restrição da Fase 3: a posição dos veículos tem defasagem da ordem de um minuto e mediria o deslocamento do ônibus, não o erro do app. Tolerância $\varepsilon = 30$ m.
- **Amostra:** 5 paradas (`P01` a `P05`) em 20/11/2026 no `DISP-01`.

| Caso | Distância $d_i$ | Limite $\varepsilon$ | Estado |
| :---: | :---: | :---: | :---: |
| P01 | 4 m | 30 m | Conforme |
| P02 | **29 m** | 30 m | Conforme |
| P03 | 4,5 m | 30 m | Conforme |
| P04 | 3 m | 30 m | Conforme |
| P05 | 5 m | 30 m | Conforme |

<p class="legenda">Tabela 7. Distâncias medidas em M5.2. Fonte: Coleta de Dados (2026).</p>

- **Nota:** $1{,}00 \ge 0{,}95$ → **Nota 4 (Excelente)**. Para $n = 5$, só são atingíveis as notas 4 (`5/5`), 2 (`4/5`) e 1 (`0–3/5`).
- **Sensibilidade:** `P02` está a 1 m do limite. As distâncias vieram de **medição direta nas capturas, convertida pela escala do mapa e feita com auxílio de IA**, e a referência de campo (GPSTest) tem erro de até 10 m. Se `P02` fosse reclassificada, $M_{5.2} = 4/5 = 0{,}80$ e a nota cairia para 2. A nota 4 é, portanto, sensível a um único caso.
- **Hipótese H5.2** ($M_{5.2} \ge 0{,}85$ para paradas e valor menor para veículos): **confirmada para paradas.** A parte sobre veículos **não foi testada**, por decisão da Fase 3.

#### Veredito de G5

| Métrica | Valor | Nota | Hipótese | Situação |
| :--- | :---: | :---: | :--- | :--- |
| **M5.1** | $\text{Mediana } 3{,}34\text{ min}$ | **3** | H5.1 confirmada ($\le 5\text{ min}$) | Avaliada |
| **M5.2** | $5/5 = 1{,}00$ | **4** | H5.2 confirmada (paradas) | Avaliada |
| **G5** | — | $\min(3,\ 4) = 3$ | — | **Satisfeito** |

<p class="legenda">Tabela 8. Síntese de G5. Fonte: elaboração própria (2026).</p>

---

### 4.6. G6 — Adequação Funcional (Completude)

#### M6.1 — Cobertura de Tarefas Essenciais

$$
M_{6.1} = 1 - \frac{F_f}{F_t} = 1 - \frac{0}{8} = 1{,}00
$$

- **Amostra:** as 8 tarefas `TE01` a `TE08`, executadas uma vez cada no `DISP-02` em 19/11/2026 (15:57 a 16:05), com rede e localização ativas. Todas atingiram o resultado esperado, inclusive `TE05` (acompanhar veículo de `L02` em operação), que não precisou ser tratada como não observável.
- **Nota:** $1{,}00$ → **Nota 4 (Excelente)**. Nesta amostra a Nota 3 era inatingível ($7/8 = 0{,}875$), e uma única falha levaria à Nota 2.
- **Hipótese H6.1** ($M_{6.1} = 1{,}00$): **confirmada.**

#### M6.2 — Completude do Banco

$$
M_{6.2} = \frac{L_c}{L_t} = \frac{20}{20} = 1{,}00
$$

- **Amostra:** 20 linhas do Relatório de Linhas da Semob-DF (referência 17/11/2026), 4 por bacia (01 a 05), das quais 10 circulares e 10 de duplo sentido, auditadas no `DISP-01`. Todas foram encontradas no app com código, sentido e itinerário correspondentes, sem defeitos, exclusões ou pendências.
- **Nota:** $1{,}00$ → **Nota 4 (Excelente)**.
- **Limite:** o índice vale para a amostra estratificada de linhas com viagens em dia útil na data de referência. Não estima a cobertura de toda a malha, nem de linhas exclusivas de fim de semana.
- **Hipótese H6.2** ($M_{6.2} \ge 0{,}95$): **confirmada.**

#### Veredito de G6

| Métrica | Valor | Nota | Hipótese | Situação |
| :--- | :---: | :---: | :--- | :--- |
| **M6.1** | $8/8 = 1{,}00$ | **4** | H6.1 confirmada | Avaliada |
| **M6.2** | $20/20 = 1{,}00$ | **4** | H6.2 confirmada | Avaliada |
| **G6** | — | $\min(4, 4) = 4$ | — | **Satisfeito** |

<p class="legenda">Tabela 9. Síntese de G6. Fonte: elaboração própria (2026).</p>

---

## 5. Quadro global das 12 métricas e das hipóteses

| Código | Métrica | Objetivo | Contagem | Valor | Nota | Hipótese | Veredito da hipótese |
| :---: | :--- | :---: | :---: | :---: | :---: | :--- | :--- |
| **M1.1** | Adaptabilidade de hardware | G1 | 15 / 20 | 0,75 | **2** | $M_{1.1} < 1{,}00$ (falha no mapa) | Confirmada |
| **M1.2** | Adaptabilidade de SO | G1 | 1 / 1 *(4 tentativas)* | 1,00 *(parcial)* | — | $M_{1.2} = 1{,}00$ | Parcialmente verificada |
| **M2.1** | Sucesso de instalação | G2 | 10 / 10 | 1,00 | **4** | $M_{2.1} = 1{,}00$ | Confirmada |
| **M2.2** | Resíduo pós-desinstalação | G2 | 10 / 10 | 1,00 | **4** | $M_{2.2} < 1{,}00$ | Refutada |
| **M3.1** | Sessões sem *crashes* | G3 | 20 / 20 | 1,00 | **4** | $M_{3.1} \ge 0{,}95$ | Confirmada |
| **M3.2** | Sessões sem congelamentos | G3 | 20 / 20 | 1,00 | **4** | $M_{3.2} \ge 0{,}95$ | Confirmada |
| **M4.1** | Mitigação de perda de conexão | G4 | 10 / 10 | 1,00 | **4** | $M_{4.1} < 0{,}85$ | Refutada |
| **M4.2** | Tratamento de perda de GPS | G4 | 10 / 10 | 1,00 | **4** | $M_{4.2} \ge 0{,}85$ | Confirmada |
| **M5.1** | Precisão de tempo | G5 | 10 pares válidos | Mediana 3,34 min | **3** | mediana $\le 5$ min | Confirmada |
| **M5.2** | Correção do mapa (paradas) | G5 | 5 / 5 | 1,00 | **4** | $M_{5.2} \ge 0{,}85$ (paradas) | Confirmada (paradas) |
| **M6.1** | Cobertura de tarefas essenciais | G6 | 8 / 8 | 1,00 | **4** | $M_{6.1} = 1{,}00$ | Confirmada |
| **M6.2** | Completude do banco | G6 | 20 / 20 | 1,00 | **4** | $M_{6.2} \ge 0{,}95$ | Confirmada |

<p class="legenda">Tabela 10. Quadro comparativo das 12 métricas, notas e hipóteses. Fonte: elaboração própria (2026).</p>

Das 12 hipóteses, **8 foram confirmadas** (H1.1, H2.1, H3.1, H3.2, H4.2, H5.1, H6.1, H6.2), **2 refutadas** (H2.2 e H4.1, ambas de expectativa pessimista) e **2 verificadas em parte** (H1.2 e H5.2).

### 5.1. Vereditos dos objetivos

| Objetivo | Característica | Notas das métricas | Veredito |
| :---: | :--- | :--- | :--- |
| **G1** | Portabilidade — Adaptabilidade | M1.1 = 2 e M1.2 parcial | **Não avaliado (dados incompletos)** |
| **G2** | Portabilidade — Instalabilidade | M2.1 = 4; M2.2 = 4 | **Satisfeito** |
| **G3** | Confiabilidade — Maturidade | M3.1 = 4; M3.2 = 4 | **Satisfeito** *(exposição reduzida)* |
| **G4** | Confiabilidade — Tolerância a falhas | M4.1 = 4; M4.2 = 4 | **Satisfeito** |
| **G5** | Adequação Funcional — Correção | M5.1 = 3; M5.2 = 4 | **Satisfeito** |
| **G6** | Adequação Funcional — Completude | M6.1 = 4; M6.2 = 4 | **Satisfeito** |

<p class="legenda">Tabela 11. Vereditos dos objetivos G1 a G6 pelo critério da pior nota. Fonte: elaboração própria (2026).</p>

---

## 6. Pontos de sensibilidade

Com amostras pequenas, um único caso pode mudar uma nota e o veredito do objetivo. Os pontos abaixo mostram onde o resultado depende de poucos casos.

| Métrica | Situação observada | O que mudaria a nota | Efeito no objetivo |
| :--- | :--- | :--- | :--- |
| **M1.1** | $15/20 = 0{,}75$, no limite da Nota 2 | Mais 1 defeito: $14/20 = 0{,}70$ → Nota 1 | A pior nota seria 1. O veredito formal de G1 depende da cobertura de M1.2. |
| **M1.2** | $1/1$ no Android 13, com 3 tentativas não observáveis | Em um teste adicional válido, uma versão com defeito reduziria o índice a $1/2 = 0{,}50$, faixa da Nota 1 | O veredito de G1 depende da cobertura planejada de M1.2. |
| **M2.1 / M2.2** | $10/10$, sem Nota 3 possível | 1 defeito → Nota 2 | G2 passaria a *Satisfeito com Ressalvas* |
| **M3.1 / M3.2** | $20/20$ em sessões de 2 min 30 s | 1 sessão afetada: $19/20 = 0{,}95$ → Nota 3. 2: $18/20 = 0{,}90$ → Nota 2. 3: $17/20 = 0{,}85$ → Nota 1. | Pela pior nota, G3 fica *Satisfeito* com Nota 3, *Satisfeito com Ressalvas* com Nota 2 e *Não Satisfeito* com Nota 1. |
| **M5.1** | Mediana $3{,}34$ min (Nota 3) | Mediana $> 5$ e $\le 10$ min → Nota 2. Mediana $> 10$ min → Nota 1. | G5 passaria a *Satisfeito com Ressalvas* com Nota 2 ou *Não Satisfeito* com Nota 1. |
| **M5.2** | $5/5$, com `P02` a 29 m do limite de 30 m | `P02` fora da tolerância: $4/5 = 0{,}80$ → Nota 2 | G5 passaria a *Satisfeito com Ressalvas* (pior nota = 2) |
| **M6.1** | $8/8$, sem Nota 3 possível | 1 tarefa com defeito → Nota 2 | G6 passaria a *Satisfeito com Ressalvas* |

<p class="legenda">Tabela 12. Sensibilidade das notas ao tamanho da amostra. Fonte: elaboração própria (2026).</p>

A predominância de notas altas reflete amostras pequenas, critérios binários por caso e um único aparelho por ensaio. Não indica ausência de defeitos fora do que foi observado.

---

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*. Geneva: ISO, 2011.

[2] ISO. *ISO/IEC 25010:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — System and software quality models*. Geneva: ISO, 2011.

[3] ISO. *ISO/IEC 25023:2016 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*. Geneva: ISO, 2016.

[4] EQUIPE CAROL SHAW. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md); [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md); [Procedimentos de Execução — Fase 3](../fase3/2-procedimentos.md); [Recursos — Fase 3](../fase3/3-recursos.md); [Coleta de Dados — Fase 4](1-coleta.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Consolidação dos dados, cálculo das 12 métricas, avaliação de hipóteses e matriz comparativa da Fase 4 (#49) | [João Guilherme Capozzi](https://github.com/jonas3688) | 18/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 21/11/2026 |
| 02 | Atualização com os registros de coleta de M1.1 a M6.2 (exceto M5.1): cálculo, notas, hipóteses, vereditos de G1 a G6, sensibilidade e anomalias | [Pedro Ramos](https://github.com/PedroRSR)| 21/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 21/11/2026 |
| 03 | Sincronização dos cálculos da métrica M5.1 (mediana 3,34 min, Nota 3), consolidação do veredito de G5 (Satisfeito) e script de cálculo (#49) | [João Guilherme Capozzi](https://github.com/jonas3688) | 22/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 22/11/2026 |
