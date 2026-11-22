# Fase 4 — Resultados e Conclusões

## 1. Introdução e critério de julgamento

Este documento sintetiza os resultados da avaliação de qualidade do aplicativo móvel **DF no Ponto** (Android, versão `5.25.1(1149)`), avaliado em regime de caixa preta. No processo da **ISO/IEC 25040:2011**, ele reúne as atividades de *julgar os resultados* e *concluir a avaliação*: transforma as notas calculadas em [Análise de Dados](2-analise.md), a partir dos registros de [Coleta de Dados](1-coleta.md), em vereditos dos objetivos, respostas às questões e subsídios às decisões **D1**, **D2** e **D3**.

A Fase 4 preserva a arquitetura das fases anteriores: **3 características** da ISO/IEC 25010, **6 objetivos** (`G1` a `G6`), **12 questões** (`Q1.1` a `Q6.2`) e **12 métricas** (`M1.1` a `M6.2`), sem alterar fórmulas, limiares ou amostras.

### 1.1. Critério conservador da pior nota

As notas de 1 a 4 são **ordinais**, portanto não há média entre métricas. Cada objetivo recebe a **pior nota** de suas duas métricas filhas, como define [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos).

| Pior nota nas métricas do objetivo | Veredito | Ação recomendada |
| :--- | :--- | :--- |
| Apenas notas 3 e 4 | **Satisfeito** | Operação regular e estável. |
| Pelo menos uma nota 2 | **Satisfeito com Ressalvas** | Abrir *issue* corretiva; não inviabiliza o uso, mas exige melhoria. |
| Pelo menos uma nota 1 | **Não Satisfeito** | Funcionalidade comprometida; exige correção imediata. |
| Métrica filha sem dados ou com caso obrigatório pendente | **Não avaliado (dados incompletos)** | Concluir a coleta; as notas já obtidas ficam visíveis. |

<p class="legenda">Tabela 1. Critérios de veredito dos objetivos. Fonte: Métricas e Critérios de Julgamento (Fase 2, 2026).</p>

### 1.2. Panorama

- **11 das 12 métricas** têm dados; **`M5.1` não tem** nenhum registro e **`M1.2` tem amostra parcial** (1 versão do Android).
- **9 métricas** receberam **Nota 4**, **1** recebeu **Nota 3** (`M1.1`) e nenhuma recebeu nota 1 ou 2.
- Dos 6 objetivos, **4 ficaram Satisfeitos** (`G2`, `G3`, `G4` e `G6`) e **2 ficaram sem veredito definitivo** (`G1` e `G5`).
- Das 12 hipóteses, 6 foram confirmadas, 2 refutadas, 3 verificadas em parte e 1 não pôde ser verificada.
- Os resultados são **indicativos**: valem para a amostra, a versão, os aparelhos e o período observados, e não constituem certificação do aplicativo.

---

## 2. Julgamento dos objetivos GQM (G1 a G6)

| Objetivo | Característica | Métricas e notas | Regra | Veredito |
| :--- | :--- | :--- | :---: | :--- |
| **G1** — Adaptabilidade | Portabilidade | **M1.1:** 18/20 = 0,90 → **Nota 3**<br>**M1.2:** 1/1 = 1,00, parcial (Android 9 sem registro) | $\min$ | **Não avaliado (dados incompletos)** |
| **G2** — Instalabilidade | Portabilidade | **M2.1:** 10/10 → **Nota 4**<br>**M2.2:** 10/10 → **Nota 4** | $\min$ | **Satisfeito** |
| **G3** — Maturidade | Confiabilidade | **M3.1:** 20/20 → **Nota 4**<br>**M3.2:** 20/20 → **Nota 4** | $\min$ | **Satisfeito** *(exposição reduzida)* |
| **G4** — Tolerância a Falhas | Confiabilidade | **M4.1:** 10/10 → **Nota 4**<br>**M4.2:** 10/10 → **Nota 4** | $\min$ | **Satisfeito** |
| **G5** — Correção | Adequação Funcional | **M5.1:** sem dados ($n = 0$)<br>**M5.2:** 5/5 → **Nota 4** | $\min$ | **Não avaliado (dados incompletos)** |
| **G6** — Completude | Adequação Funcional | **M6.1:** 8/8 → **Nota 4**<br>**M6.2:** 20/20 → **Nota 4** | $\min$ | **Satisfeito** |

<p class="legenda">Tabela 2. Vereditos dos objetivos G1 a G6. Fonte: elaboração própria (2026), com base em Análise de Dados.</p>

### G1 — Adaptabilidade (Portabilidade)

`M1.1` ficou em $18/20 = 0{,}90$, **Nota 3**, exatamente no limite da faixa. Os dois defeitos (`T01-C03`, busca, e `T04-C03`, detalhes de parada) ocorreram com **fonte ampliada a 200%** em tela compacta; todos os casos em paisagem, na tela maior e na camada do mapa (`T03`) foram aprovados. Em `M1.2`, o app concluiu `TE01` a `TE08` no **Android 13**, mas o caso de Android 9 não tem registro, e o resultado de $1/1$ é provisório. O objetivo **não pode ser declarado satisfeito** até que a amostra seja fechada: se o caso for registrado como *Não observável*, $G_1 = \min(3, 4) = 3$ (**Satisfeito**, restrito ao Android 13); se for registrado como *Defeito*, `M1.2` cai para $0{,}50$ e $G_1$ fica **Não Satisfeito**.

### G2 — Instalabilidade (Portabilidade)

Nos 10 ciclos, a instalação pela Play Store concluiu na primeira tentativa e nenhuma desinstalação deixou arquivo ou pasta atribuível ao app nos locais inspecionados. **Satisfeito.** O resultado vale só para os diretórios observáveis, já que o armazenamento privado do app não é inspecionado.

### G3 — Maturidade (Confiabilidade)

Nas 20 sessões, não houve encerramento inesperado nem congelamento superior a 5 s. **Satisfeito**, com a declaração obrigatória de que as sessões duraram **2 min 30 s** (50 min no total, metade do plano original), o que reduz a exposição e tende a favorecer o resultado.

### G4 — Tolerância a Falhas (Confiabilidade)

Nos 10 ensaios de queda de rede e nos 10 de perda de localização, o app permaneceu aberto, avisou a indisponibilidade em até 5 s e retomou o serviço em até 30 s. **Satisfeito.** Os registros de `M4.2` têm inconsistências de horário e de ligações de evidência ([Análise de Dados](2-analise.md#7-anomalias-exclusoes-e-limitacoes-dos-registros)), a conferir na auditoria.

### G5 — Correção (Adequação Funcional)

As cinco paradas ficaram dentro da tolerância de 30 m (`M5.2` = $1{,}00$, **Nota 4**), mas `P02` ficou a 29 m e a medição foi visual, com auxílio de IA. Já `M5.1` **não tem dados**: a precisão das previsões de chegada não foi medida. O objetivo **não pode ser julgado**.

### G6 — Completude (Adequação Funcional)

As 8 tarefas essenciais foram concluídas e as 20 linhas sorteadas do Relatório de Linhas da Semob-DF (17/11/2026) foram encontradas no app. **Satisfeito**, dentro da amostra auditada.

---

## 3. Respostas às questões operacionais (Q1.1 a Q6.2)

| Questão | Resposta | Evidência |
| :--- | :--- | :--- |
| **Q1.1** — A interface se redimensiona sem sobreposições ou cortes em telas compactas, orientações e fontes ampliadas? | **Em grande parte, com exceções.** 18 de 20 casos conformes; as duas falhas ocorrem com fonte a 200% (busca e detalhes de parada). Mapa, paisagem e tela maior sem falhas. | $M_{1.1} = 0{,}90$ · Nota 3 |
| **Q1.2** — O app executa sem erros críticos de compatibilidade em diferentes versões do SO, incluindo legadas? | **Só para o Android 13.** Sem erros nessa versão; legado (Android 9) e faixa Android 10–12 não verificados. | $M_{1.2} = 1/1$ (parcial) |
| **Q2.1** — A instalação nas lojas oficiais ocorre na primeira tentativa sem erro? | **Sim.** 10 de 10 ciclos pela Play Store. | $M_{2.1} = 1{,}00$ · Nota 4 |
| **Q2.2** — O app evita arquivos residuais no armazenamento compartilhado após a desinstalação? | **Sim, nos locais inspecionados.** 0 de 10 desinstalações com resíduo atribuível ao app. | $M_{2.2} = 1{,}00$ · Nota 4 |
| **Q3.1** — O app evita *crashes* durante sessões ativas? | **Sim, na janela observada.** 0 de 20 sessões com encerramento inesperado (sessões de 2 min 30 s). | $M_{3.1} = 1{,}00$ · Nota 4 |
| **Q3.2** — O sistema previne congelamentos superiores a 5 s? | **Sim, na janela observada.** 0 de 20 sessões com congelamento. | $M_{3.2} = 1{,}00$ · Nota 4 |
| **Q4.1** — O app evita quebras, avisa e retoma após queda de conexão? | **Sim.** 10 de 10 ensaios com aviso em até 5 s e retomada em até 30 s, sem modo *offline* previsto. | $M_{4.1} = 1{,}00$ · Nota 4 |
| **Q4.2** — O sistema reage apropriadamente à perda de GPS? | **Sim.** 10 de 10 ensaios: aviso, `TE01` e `TE04` disponíveis e posição retomada. | $M_{4.2} = 1{,}00$ · Nota 4 |
| **Q5.1** — As previsões de chegada refletem a aproximação física? | **Não respondida.** Nenhum par previsão/chegada foi coletado. | $M_{5.1}$: sem dados |
| **Q5.2** — A posição das paradas no mapa coincide com a posição real? | **Sim, para as 5 paradas avaliadas** (3 a 29 m, tolerância de 30 m). A posição dos veículos não faz parte da métrica. | $M_{5.2} = 1{,}00$ · Nota 4 |
| **Q6.1** — O catálogo de tarefas essenciais executa de ponta a ponta? | **Sim.** 8 de 8 tarefas conformes. | $M_{6.1} = 1{,}00$ · Nota 4 |
| **Q6.2** — A base de linhas do app está sincronizada com a Semob-DF? | **Sim, na amostra.** 20 de 20 linhas sorteadas, com código, sentido e itinerário correspondentes. | $M_{6.2} = 1{,}00$ · Nota 4 |

<p class="legenda">Tabela 3. Respostas às 12 questões operacionais. Fonte: elaboração própria (2026), com base em Análise de Dados.</p>

---

## 4. Características e questões norteadoras (QN1 a QN3)

Cada característica recebe o **pior veredito** entre seus dois objetivos, e cada questão norteadora é respondida com o veredito da característica e as métricas que o determinaram. Não se calcula nota global do aplicativo.

| Questão norteadora | Característica (prioridade) | Objetivos | Veredito |
| :---: | :--- | :--- | :--- |
| **QN3** — Fidelidade da informação e utilidade pública | **Adequação Funcional** (1) · D3 | G5: dados incompletos<br>G6: Satisfeito | **Não avaliada (dados incompletos)** |
| **QN2** — Resiliência operacional sob condições reais | **Confiabilidade** (2) · D2 | G3: Satisfeito<br>G4: Satisfeito | **Satisfeita** |
| **QN1** — Universalidade e acesso equitativo | **Portabilidade** (3) · D1 | G1: dados incompletos<br>G2: Satisfeito | **Não avaliada (dados incompletos)** |

<p class="legenda">Tabela 4. Veredito por característica e questão norteadora. Fonte: elaboração própria (2026).</p>

### QN1 — Portabilidade

> *O DF no Ponto atende ao parque heterogêneo de dispositivos dos usuários do DF sem barreiras de hardware ou SO?*

**Resposta parcial.** A instalação é limpa (`M2.1` e `M2.2`, nota 4) e a interface se adapta bem a telas compactas, paisagem e telas maiores, com **duas falhas em fonte ampliada a 200%** (`M1.1` = 0,90). Em compatibilidade de SO só há evidência para o **Android 13**, de modo que a resposta fica aberta para versões legadas. Pela regra do pior veredito, a característica fica **Não avaliada (dados incompletos)** até o fechamento de `M1.2`.

### QN2 — Confiabilidade

> *O aplicativo se mantém estável, resiliente a quedas de rede e recuperável durante os deslocamentos urbanos?*

**Resposta positiva dentro da amostra.** Nenhum *crash* nem congelamento em 20 sessões, e tratamento adequado de queda de rede e de perda de GPS em 20 ensaios induzidos. Ressalvas: sessões de 2 min 30 s, um único aparelho de laboratório por métrica, Android 13, e inconsistências nos registros de `M4.2`. O resultado indica estabilidade na janela observada, sem generalizar para uso prolongado ou para outros aparelhos.

### QN3 — Adequação Funcional

> *O aplicativo entrega informações completas e fidedignas para planejar viagens com segurança?*

**Resposta parcial.** Há evidência favorável quanto à **completude** (tarefas essenciais 8/8 e linhas 20/20) e quanto à **posição das paradas** (5/5). Falta a medida da **precisão do tempo de chegada** (`M5.1`), que é a informação de que o passageiro mais depende para decidir entre esperar e buscar alternativa. A posição dos veículos não foi avaliada por restrição de método. Enquanto `M5.1` não for coletada, a característica de maior prioridade do projeto permanece **Não avaliada (dados incompletos)**.

---

## 5. Pareceres para as decisões apoiadas (D1 a D3)

### D1 — Acessibilidade tecnológica e homologação de dispositivos *(Portabilidade)*

- **Parecer:** **parcial; manter, com melhoria pontual e homologação de versões legadas em aberto.**
- **Evidência favorável:** instalação 10/10 sem resíduo observável (G2 *Satisfeito*); telas 18/20 e Android 13 sem erros.
- **Pontos de atenção:** dois defeitos de layout em fonte 200% (`T01-C03`, `T04-C03`), relevantes para usuários com baixa visão; nenhuma evidência para Android 9 ou para a faixa 10 a 12.
- **Decisão apoiada:** não há base para recomendar refatoração geral de interface nem para homologar versões legadas. Recomenda-se corrigir com prioridade o comportamento em fonte ampliada e **fechar `M1.2`** antes de qualquer parecer sobre dispositivos mais antigos.

### D2 — Resiliência operacional em ambiente urbano *(Confiabilidade)*

- **Parecer:** **favorável na amostra; manter, com confirmação em condições mais exigentes.**
- **Evidência favorável:** 0 *crashes* e 0 congelamentos em 20 sessões; 10/10 em queda de rede; 10/10 em perda de GPS (G3 e G4 *Satisfeitos*).
- **Pontos de atenção:** exposição reduzida a 50 min; um aparelho por ensaio; testes só em laboratório, sem rede móvel real em deslocamento; registros de `M4.2` a corrigir.
- **Decisão apoiada:** não se identificou necessidade de priorizar arquitetura de tolerância a falhas com base nestes dados. A hipótese pessimista **H4.1** (falta de modo *offline* prejudicando o aviso) **foi refutada** nos 10 ensaios.

### D3 — Confiabilidade e utilidade dos dados de mobilidade *(Adequação Funcional)*

- **Parecer:** **parcialmente favorável; parecer final suspenso até a medição da precisão do tempo.**
- **Evidência favorável:** catálogo de linhas sincronizado com a Semob-DF na amostra (20/20), tarefas essenciais completas (8/8) e paradas bem posicionadas (5/5).
- **Lacuna:** `M5.1` sem dados. Sem ela, não se pode afirmar que as previsões de chegada servem ao planejamento da viagem. A posição dos veículos exibida no app tem defasagem da ordem de um minuto e ficou fora da métrica.
- **Decisão apoiada:** manter o processo de sincronização do catálogo e **concluir a coleta de campo de `M5.1`** antes de emitir o parecer de D3. Se `P02` (29 m) fosse reclassificada, `M5.2` cairia para a Nota 2.

| Decisão | Parecer | Condição para fechamento |
| :---: | :--- | :--- |
| **D1** | Parcial: manter, com melhoria em fonte ampliada | Fechar `M1.2`; descrever e corrigir os defeitos de fonte 200% |
| **D2** | Favorável na amostra: manter | Corrigir registros de `M4.2`; ampliar exposição em ciclo futuro |
| **D3** | Parcialmente favorável: parecer final suspenso | Coletar `M5.1`; reforçar a evidência de `M5.2` |

<p class="legenda">Tabela 5. Síntese dos pareceres para D1, D2 e D3. Fonte: elaboração própria (2026).</p>

---

## 6. Recomendações priorizadas

**Critério:** prioridade **Alta** para o que impede um veredito ou afeta a decisão central do projeto; **Média** para correção de defeito observado ou de evidência; **Baixa** para ampliação de cobertura em ciclos futuros.

| ID | Prioridade | Responsável | Métrica / Objetivo | Diagnóstico | Ação recomendada |
| :---: | :---: | :--- | :--- | :--- | :--- |
| **REC-01** | **Alta** | Equipe de avaliação | `M5.1` · G5 · D3 | Nenhum par previsão/chegada coletado; pendências de campo (paradas, dias, janelas) na Fase 3. | Executar os 10 eventos em dois blocos e duas linhas, informando mediana, mínimo, máximo e $n$ válido. |
| **REC-02** | **Alta** | Equipe de avaliação | `M1.2` · G1 · D1 | Caso de Android 9 sem registro; redução de amostra não formalizada. | Registrar o caso como *Não observável* ou *Defeito*, com a evidência da recusa de instalação, atualizar a ficha de `M1.2` e a tabela de notas possíveis, e recalcular `G1`. |
| **REC-03** | **Média** | Equipe de desenvolvimento do app | `M1.1` · G1 · D1 | Defeitos em fonte 200% nas telas de busca e de detalhes de parada (`T01-C03`, `T04-C03`); índice no limite da Nota 3. | Descrever a causa a partir das capturas e corrigir o dimensionamento com escala de fonte ampliada (WCAG 2.1, critério 1.4.4), incluindo teste nessas telas. |
| **REC-04** | **Média** | Equipe de avaliação | `M5.2` · G5 · D3 | `P02` a 29 m do limite; distância por medição visual com IA; sem registro do GPSTest. | Anexar o registro do GPSTest, confirmar a distância por coordenadas ou escala conhecida e declarar o uso de IA. |
| **REC-05** | **Média** | Equipe de avaliação | Todas · auditoria | Datas inválidas (`M6.2`), ligações e horários de `M4.2`, valor “A definir” (`M2.1-01`), datas de `M2.2`, evidência de `M1.2` fora do padrão, gravações de `M3` não arquivadas. | Sanar os registros da Tabela 13 de [Análise de Dados](2-analise.md) e realizar a **auditoria de 10%** por segundo avaliador. |
| **REC-06** | **Média** | Equipe de avaliação | `M6.2` · G6 | Método do sorteio não registrado; texto de [Método de Avaliação](../fase3/1-metodo.md) fala em “20 primeiros itens”. | Registrar o método do sorteio, arquivar os PDFs do relatório e corrigir o texto do método. |
| **REC-07** | **Baixa** | Equipe de avaliação | `M3.1` / `M3.2` · G3 | Sessões de 2 min 30 s em um aparelho. | Em reavaliação futura, usar sessões de 5 min ou mais e aparelhos adicionais. |
| **REC-08** | **Baixa** | Equipe de avaliação / Semob-DF | `M1.2` · `M6.2` | Faixa Android 10–12 sem verificação; catálogo auditado só em dia útil e em uma data. | Ampliar versões de Android e incluir linhas de fim de semana e feriados em ciclo futuro. |

<p class="legenda">Tabela 6. Recomendações priorizadas. Fonte: elaboração própria (2026).</p>

As recomendações **REC-01 e REC-02** têm precedência porque fecham os dois objetivos sem veredito (`G5` e `G1`) e, com eles, as características Adequação Funcional e Portabilidade.

---

## 7. Ameaças à validade e limitações

Os resultados seguem as ameaças previstas em [Método de Avaliação](../fase3/1-metodo.md#6-limitacoes-do-metodo-e-ameacas-a-validade). A tabela destaca o que se observou na execução.

| Dimensão | Ameaça observada | Tratamento | Limitação residual |
| :--- | :--- | :--- | :--- |
| **Interna** | Registros com datas inválidas, horários repetidos, ligações quebradas e campos “A definir”; auditoria de 10% sem registro; uso de IA na medição de `M5.2`. | Estados formais por caso; inconsistências listadas na Tabela 13 de [Análise de Dados](2-analise.md); nenhum defeito excluído. | A correção de `M4.2` e a conferência das evidências dependem da auditoria. |
| **Externa** | Amostras pequenas e intencionais (2 a 20 casos); um único aparelho por ensaio; só Android 13; catálogo auditado em dia útil e uma data; veículos fora de `M5.2`. | Contagem junto de cada nota; resultados tratados como indicativos. | Não se estimam taxas da população de usuários, nem se generaliza para outras versões, aparelhos ou linhas. |
| **Construto** | `M2.2` só vê armazenamento compartilhado; `M6.2` mede presença no catálogo, não a qualidade da oferta de transporte; `M3` com exposição reduzida. | Limites declarados em cada ficha. | Resíduos em áreas privadas, qualidade da oferta e falhas raras em uso longo não são observáveis. |
| **Conclusão** | Notas muito sensíveis a um caso (`M1.1` no limite, `M5.2` com `P02` a 29 m, faixas sem Nota 3); predominância da Nota 4. | Limiares fixados antes da coleta, pior nota, sem médias, tabela de sensibilidade. | Os vereditos de `G1` e `G5` permanecem abertos até `M1.2` e `M5.1`. |

<p class="legenda">Tabela 7. Ameaças à validade e limitações. Fonte: elaboração própria (2026).</p>

---

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*. Geneva: ISO, 2011.

[2] ISO. *ISO/IEC 25010:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — System and software quality models*. Geneva: ISO, 2011.

[3] ISO. *ISO/IEC 25023:2016 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*. Geneva: ISO, 2016.

[4] W3C. *Web Content Accessibility Guidelines (WCAG) 2.1 — Success Criterion 1.4.4 Resize Text*. Disponível em: <https://www.w3.org/TR/WCAG21/#resize-text>.

[5] SEMOB-DF. *Dados do Sistema de Transporte Público do DF — Relatório de Linhas*. Disponível em: <https://www.semob.df.gov.br/dados-do-sistema-de-transporte-publico-do-df>.

[6] EQUIPE CAROL SHAW. [Propósito da Avaliação — Fase 1](../fase1/1-proposito.md); [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md); [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md); [Procedimentos de Execução — Fase 3](../fase3/2-procedimentos.md); [Coleta de Dados — Fase 4](1-coleta.md); [Análise de Dados — Fase 4](2-analise.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Emissão dos vereditos dos objetivos, respostas às questões norteadoras, pareceres das decisões D1-D3 e recomendações da Fase 4 (#50) | [João Guilherme Capozzi](https://github.com/jonas3688) | 18/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 21/11/2026 |
| 02 | Atualização com os dados coletados: vereditos de G1 a G6, respostas às questões, pareceres de D1 a D3, recomendações e ameaças à validade | [Pedro Ramos](https://github.com/PedroRSR) | 21/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 21/11/2026 |
