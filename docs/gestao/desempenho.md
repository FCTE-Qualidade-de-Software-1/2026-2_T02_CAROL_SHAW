# Desempenho do Processo

## 1. Introdução

No âmbito do framework **PSM-CID** (*Practical Software and Systems Measurement - Continuous Iterative Development*), a dimensão de **Desempenho do Processo** avalia a eficiência, a fluidez e o ritmo de execução das atividades da equipe. Esta dimensão analisa o tempo de resposta das *Issues* no repositório e o esforço técnico dedicado para a conclusão de cada demanda.

O monitoramento contínuo destas métricas permite verificar se as atividades estão sendo entregues dentro do tempo previsto, comparar o tempo estimado com o tempo real de execução e detectar precocemente tarefas estagnadas no repositório que exijam suporte ou redistribuição.

---

## 2. Métricas e Fórmulas de Medição

A apuração do desempenho combina os registros temporais nativos do GitHub (datas de abertura e fechamento das tarefas) com a declaração direta de esforço nas *Issues*:

- **Lead Time (Tempo Total de Entrega - `TL`):** Mede o intervalo temporal total decorrido desde a data e hora de criação da *Issue* no repositório até a sua data e hora de fechamento definitivo após o *merge* na branch `main`.

  `TL = Data/Hora de Conclusão - Data/Hora de Criação`

- **Cycle Time (Tempo de Ciclo de Execução - `TC` / `Hr`):** Representa o tempo de trabalho efetivamente gasto para concluir a tarefa. A estimativa prévia (`He`) é atribuída no momento em que a *Issue* é criada e o tempo realizado (`Hr`) é declarado pelo responsável diretamente na própria *Issue* no momento da sua conclusão.

  `TC = Hr (Horas Realizadas Declaradas na Issue)`

- **Tempo sem Atividade (Tempo de Estagnação - `TSA`):** Mede o período contínuo em que uma *Issue* mantida aberta permanece sem nenhuma movimentação técnica registrada.
  `TSA = Data/Hora Atual - Data/Hora da Última Atividade Registrada`


- **Tempo Médio de Ciclo (`TMC`):** Indica a média aritmética das horas realizadas (`Hr`) de todas as *Issues* concluídas em uma determinada Milestone.

  `TMC = (Soma dos Hr das Issues Concluídas) / (Total de Issues Concluídas)`

---

## 3. Modelo de Informação do PSM

A especificação aplicada do modelo de informação do PSM (McGarry et al., 2001) para a avaliação do desempenho da equipe é apresentada a seguir:

| Elemento do Modelo PSM | Especificação Aplicada à Equipe Carol Shaw |
| :--- | :--- |
| **Necessidade de Informação** | As tarefas estão sendo concluídas dentro do tempo esperado e mantêm acompanhamento regular no repositório? |
| **Conceito Mensurável** | Tempo total de entrega das *Issues* (Lead Time), tempo real de execução técnica (Cycle Time) e nível de estagnação das tarefas em aberto (Tempo sem Atividade). |
| **Entidade e Atributo** | *Issues* registradas no [repositório](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW), considerando suas datas de criação, conclusão, última atividade e registros de `He` (Horas Estimadas) e `Hr` (Horas Reais). |
| **Medida Básica** | **Tcriação:** data/hora da criação da *Issue*.<br>**Tconclusão:** data/hora de fechamento da *Issue*.<br>**He:** horas estimadas declaradas na criação.<br>**Hr:** horas efetivamente trabalhadas declaradas na conclusão.<br>**Tatividade:** data/hora da interação técnica mais recente. |
| **Medidas Derivadas** | **Lead Time (`TL`):** `Tconclusão - Tcriação`.<br>**Cycle Time (`TC`):** valor de `Hr` registrado na *Issue*.<br>**Tempo sem Atividade (`TSA`):** `Data/Hora Atual - Tatividade`.<br>**Tempo Médio de Ciclo (`TMC`):** média dos `Hr` das *Issues* encerradas. |
| **Indicador e Visualização** | Tabela comparativa entre `TL`, `He` e `Hr` por *Issue* e lista de auditoria para *Issues* abertas com `TSA` superior a 3 dias. |
| **Critérios de Decisão** | **Meta do Grupo (`TMC`):** manter a média de esforço realizado (`Hr`) em até **2 (duas) horas** por *Issue*.<br>**Alerta de Estagnação (`TSA`):** *Issue* aberta há mais de **3 (três) dias** sem atividade gera alerta para verificação de impedimentos e reatribuição de responsável. |

---

## 4. Observações Metodológicas e Diagnóstico

### 4.1. Apontamento de Esforço ($H_e$ e $H_r$)
Toda *Issue* aberta no repositório deve iniciar com a indicação da estimativa de esforço (`Horas Estimadas: x`). À medida que o integrante realiza a tarefa e a finaliza, ele declara o tempo real gasto (`Horas Reais: x`) no cabeçalho da *Issue*. Essa declaração é o insumo principal para o cálculo do *Cycle Time* real do processo.

### 4.2. Monitoramento do Tempo sem Atividade (TSA)
- **Eventos Válidos:** Comentários com reportes de progresso, *commits* vinculados à *Issue*, abertura/revisão de *Pull Requests*, alteração de *Assignees* e inclusão em *Milestones*.
- **Eventos Desconsiderados:** Alterações automatizadas por *bots*, edições pontuais de título ou ajustes visuais de rótulos (*labels*).

### 4.3. Contextualização dos Dados e Evolução do Processo
Na **Entrega 1**, o cadastro e fechamento retroativo de *Issues* no mesmo dia gerou distorções temporais. Com a reestruturação da governança na **Correção da Entrega 1** (21/21 issues concluídas, `TMC = 1,82h` sobre as 20 issues com `Hr` declarado, dentro da meta de 2h) e na **Entrega 2** (29/30 issues concluídas até 24/11/2026, `TMC = 2,36h` sobre as 24 issues com `Hr` declarado), as *Issues* passaram a registrar a data real de criação (`Tcriação`) e as horas efetivamente trabalhadas (`Hr`). Na Entrega 2, o `TMC` ficou ligeiramente acima da meta de 2h por issue devido à complexidade das coletas de campo (M5.1/M5.2) e da consolidação do artigo LaTeX.

---

## 5. Registro das Issues

### 5.1. Entrega 1

| Issue | Nome | Status | Lead Time | Cycle Time |
| :---: | :--- | :--- | :--- | :--- |
| #3 | [Definir requisitos da avaliação e modelo de qualidade (Fase 1)](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/3) | Concluída | Praticamente 0 (aberta e fechada em 31/10/2026) | Aproximadamente 20-30 min; não representa o tempo real |
| #4 | [Especificação da Avaliação e Desdobramento GQM (Fase 2)](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/4) | Concluída | Praticamente 0 (aberta e fechada em 31/10/2026) | Aproximadamente 20-30 min registrados; não representa o tempo real |
| #5 | [Organização do relatório em LaTeX e criação da GitPage](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/5) | Concluída | Praticamente 0 (aberta e fechada em 31/10/2026) | Aproximadamente 20-30 min registrados; não representa o tempo real |
| #6 | [Análise de requisitos, metodologia e revisão técnica global](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/6) | Concluída | Praticamente 0 (aberta e fechada em 31/10/2026) | Aproximadamente 20-30 min registrados; não representa o tempo real |
| #7 | [Refinamentos e correções do artigo](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/7) | Concluída | 4 dias até o fechamento (31/10 a 04/11/2026) | Aproximadamente 20-30 min registrados; não representa o tempo real |

*Na milestone **Entrega 1**, os tempos refletem registros retroativos e não representam a duração real do desenvolvimento.*

### 5.2. Correção Entrega 1

<iframe src="https://grafana.cryptoskate.org/d-solo/advlzzz/psm?orgId=1&from=1794054790773&to=now&timezone=browser&var-sprint=Corre%C3%A7%C3%A3o%20Entrega%201&theme=light&panelId=panel-8" width="1000" height="650" frameborder="0"></iframe>

### 5.3. Entrega 2

<iframe src="https://grafana.cryptoskate.org/d-solo/advlzzz/psm?orgId=1&from=1794054790773&to=now&timezone=browser&var-sprint=Entrega%202&theme=light&panelId=panel-8" width="1000" height="550" frameborder="0"></iframe>

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação da estrutura inicial da página | [Cristiano Morais](https://github.com/CristianoMoraiss) | 10/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 |
| 02 | Criação das tabelas de registro das Issues | [Pedro Ramos Sousa Reis](https://github.com/PedroRSR) | 10/11/2026 | [Vitor Bessa](https://github.com/bessazs) | 24/11/2026 |
| 03 | Atualização da tabela de desempenho por issue pela tabela do Grafana | [Vitor Bessa](https://github.com/bessazs) | 11/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 |
| 04 | Revisão e correção do documento | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 | [Vitor Bessa](https://github.com/bessazs) | 24/11/2026 |
| 05 | Adição do conteúdo da Entrega 2 | [Vitor Bessa](https://github.com/bessazs) | 15/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 |
| 06 | Revisão textual, consolidação do TMC da Correção E1 e Entrega 2 e reposicionamento da nota da Entrega 1 (#54) | [João Guilherme Capozzi](https://github.com/jonas3688) | 24/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 |
| 07 | Substituição da tabela de contribuição por histórico de versões | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 | [Vitor Bessa](https://github.com/bessazs) | 24/11/2026 |