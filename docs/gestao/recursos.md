# Gestão de Recursos e Custos (PSM)

## 1. Introdução

No âmbito do framework PSM-CID (Practical Software and Systems Measurement, McGarry et al., 2001), a categoria de informação Recursos e Custos desempenha um papel central na governança e sustentabilidade do projeto. Essa dimensão é responsável por monitorar de forma contínua o alocamento e o consumo de esforço humano (mensurado em horas de trabalho), traduzindo esse investimento operacional em termos econômicos e financeiros equivalentes.

Em projetos de engenharia de software, o tempo da equipe representa o recurso mais crítico e valioso. A medição sistemática do esforço — confrontando as horas inicialmente planejadas com as horas efetivamente realizadas em cada tarefa — permite avaliar a acurácia das estimativas da equipe, identificar precocemente sobrecargas ou ociosidades e manter o projeto dentro das margens operacionais esperadas.

Além disso, ao associar as horas trabalhadas a um valor de referência por hora profissional, o framework fornece visibilidade sobre o valor econômico gerado, transformando a dinâmica de execução em métricas quantitativas de custo que fundamentam decisões gerenciais e refinam a capacidade produtiva do grupo ao longo das iterações.

Para a equipe **Carol Shaw**, essa medição cumpre três funções centrais:

1. **Controle Financeiro Didático:** Avaliar a viabilidade e a valoração hipotética das horas investidas.
2. **Acompanhamento de Desvios:** Identificar discrepâncias entre a capacidade de trabalho estimada e a execução real.
3. **Equilíbrio Operacional:** Evitar a sobrecarga de integrantes e dar transparência às contribuições individuais no repositório.

---

## 2. Estrutura das Métricas e Fórmulas

Para garantir que o acompanhamento seja preciso e com completa clareza matemática, a modelagem reescreve a especificação dos cálculos de esforço e custo do projeto em expressões diretas:

### 2.1. Esforço Total Estimado (`Ee`)
Representa o somatório de todas as horas previstas nas Issues associadas a um Milestone no momento do planejamento inicial:

> `Esforço Estimado (Ee) = ∑ (Horas Estimadas por Issue)`

### 2.2. Esforço Total Realizado (`Et`)
Quantifica a soma das horas efetivamente dedicadas pela equipe para a conclusão das tarefas do Milestone:

> `Esforço Realizado (Et) = ∑ (Horas Reais Trabalhadas por Issue)`

### 2.3. Taxa de Variação de Esforço (`Ve`)
Mede o desvio percentual entre o tempo planejado e o tempo executado. É aplicada apenas a tarefas concluídas:

> `Variação do Esforço (%) = (|Esforço Realizado - Esforço Estimado| / Esforço Estimado) * 100`

*Nota: Se o esforço estimado for igual a 0, a variação é classificada como **Não Aplicável (N/A)**.*

### 2.4. Custo Financeiro Equivalente (`Custo`)
Calcula a valoração econômica do projeto tomando como base uma taxa didática de referência de **R$ 50,00 / hora**:

> `Custo Financeiro Equivalente = Esforço Realizado (Et) * R$ 50,00`

---

## 3. Matriz do Modelo de Informação (PSM)

A tabela abaixo sintetiza como a categoria de Recursos e Custos é operacionalizada no projeto:

| Dimensão PSM | Definição no Projeto Carol Shaw |
| :--- | :--- |
| **Necessidade de Informação** | O investimento em horas e o valor financeiro equivalente do Milestone estão aderentes ao planejamento inicial? |
| **Conceito Mensurável** | Volume de esforço de pessoal (em horas) e equivalência econômica por ciclo de entrega (*Milestone*). |
| **Entidade Auditada** | Issues cadastradas no repositório GitHub (`2026-2_T02_CAROL_SHAW`), considerando tempo previsto e tempo investido. |
| **Métricas Básicas** | • `He`: Esforço estimado (horas/issue)<br>• `Hr`: Esforço realizado (horas/issue ou membro)<br>• `Vh`: Valor hora de referência (R$ 50,00/h) |
| **Métricas Derivadas** | Esforço Total Estimado (`Ee`), Esforço Total Realizado (`Et`), Variação Percentual (`Ve`) e Custo Equivalente (`Custo`). |
| **Painel de Exibição** | Tabela comparativa por tarefa/Milestone com apuração de desvio e valor total no repositório. |

---

## 4. Regras de Decisão e Limiares de Acompanhamento

A equipe estabeleceu faixas de controle para classificar os desvios de esforço e orientar tomadas de decisão imediatas:

- **Faixa Verde (Adequado - até 10% de variação):** O planejamento foi preciso. O ritmo de trabalho da equipe está alinhado com a capacidade produtiva.
- **Faixa Amarela (Atenção - entre 10% e 20%):** Desvio moderado. A equipe realiza acompanhamento no Kanban para entender se houve subestimativa de complexidade.
- **Faixa Vermelha (Alerta de Revisão - acima de 20%):** Desvio crítico. Exige revisão imediata do escopo, redistribuição de tarefas e reavaliação das estimativas para os próximos Milestones.

---

## 5. Diretrizes Metodológicas da Equipe

1. **Adesão ao Plano de Ação:** A partir da Entrega 2, nenhuma tarefa é executada sem a definição prévia da estimativa de esforço (`Horas Estimadas: x`) na abertura da Issue no GitHub.
2. **Auditoria por Dados Reais:** A apuração individual não se baseia em estimativas teóricas fixas (ex: 16,6%), mas sim nos dados de commits, deleções, adições e registros de horas reais vinculados às Issues.
3. **Escopo de Cálculo:** A variação de esforço é computada apenas sobre Issues com status `Done` (concluídas e mescladas na branch `main`), evitando distorções provocadas por tarefas ainda em andamento.
4. **Caráter Didático:** O valor de R$ 50,00/h é um parâmetro simulado para fins de aprendizagem acadêmica sobre governança e custos de projetos de software, não configurando transação financeira real.

---

## 6. Entrega 1

Durante a **Entrega 1**, a equipe enfrentou limitações de governança e organização que impediram a aplicação estrita do rigor metodológico necessário para a coleta precisa de métricas de esforço. Como os registros operacionais no repositório ocorreram de forma retroativa (com as *Issues* sendo cadastradas e encerradas no mesmo dia apenas para cumprir os rituais formais da entrega), não houve o acompanhamento em tempo real nem o planejamento prévio do tempo exigido para cada atividade.

Essa ausência de estimativas iniciais registradas e o preenchimento tardio das tarefas inviabilizaram a aferição individual e coletiva das horas efetivamente dedicadas por cada membro ao longo do desenvolvimento. Como consequência, o cálculo da variação de esforço e a apuração do custo financeiro equivalente para esse ciclo inicial restaram prejudicados, mascarando a real distribuição de trabalho e a capacidade produtiva da equipe. 

Para corrigir essa deficiência, os dados da Entrega 1 serviram como diagnóstico para a reestruturação do fluxo de trabalho, estabelecendo que, a partir da fase de correção e para as entregas subsequentes, nenhuma tarefa seja iniciada sem a prévia atribuição de estimativa de horas e acompanhamento contínuo no quadro Kanban.

---

## 7. Correção da Entrega 1

Seguindo o fluxo de trabalho reestruturado, o acompanhamento da Milestone de Correção utiliza os dados extraídos diretamente das *Issues* e do quadro no GitHub Projects.

### 7.1. Apuração de Esforço por Issue

| Nº Issue | Descrição da Tarefa | Responsável | Status | `He` (Estimado) | `Hr` (Realizado) | Variação (%) | Custo Equivalente |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| [#8](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/8) | Criar página de Visão Geral | [Pedro Reis](https://github.com/PedroRSR) | Concluída | 2h | 1h | -50% | R$ 50 |
| [#9](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/9) | Criar página de Calendário e Progresso | [João Guilherme](https://github.com/JoaoGuilherme14) | Concluída | 2h | 1.5h | -25% | R$ 75 |
| [#10](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/10) | Criar página de Recursos e Custos | [Cristiano Morais](https://github.com/CristianoMoraiss) | Concluída | 2h | 2h | 0% | R$ 100 |
| [#11](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/11) | Criar página de Desempenho do Processo | [Cristiano Morais](https://github.com/CristianoMoraiss) <br> [Pedro Reis](https://github.com/PedroRSR)| Concluída  | 2h | 2h | 0% | R$ 100|
| [#12](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/12) | Criar página de Acompanhamento do Projeto | [João Guilherme Capozzi](https://github.com/jonas3688) | Concluída | 2h | 1h | -50% | R$ 50 |
| [#16](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/16) | Embasamento Teórico e Justificativa das Métricas GQM | [Pedro Reis](https://github.com/PedroRSR) | Em Andamento | 2h | - | - | - |
| [#17](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/17) | Reestruturação e Alinhamento das Questões aos Objetivos | [Cristiano Morais](https://github.com/CristianoMoraiss) | Em Andamento | 2h | - | - | - |
| [#18](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/18) | Padronização das Escalas de Medição e Formalização dos Métodos de Cálculo | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | Em Andamento | 2h | - | - | - |
| [#19](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/19) | Definição de Limiares ("Thresholds") e Ajuste de Rastreabilidade no Diagrama GQM | [João Guilherme Capozzi](https://github.com/jonas3688) | Em Andamento | 2h | - | - | - |
| [#20](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/20) | Alinhamento Estrutural e Coesão entre Fases 1 e 2 com Questões Norteadoras | [João Guilherme](https://github.com/JoaoGuilherme14) | Em Andamento | 2h | - | - | - |
| [#21](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/21) | Revisão da Seleção e Utilização dos Objetivos de Desenvolvimento Sustentável (ODS) | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | Em Andamento | 2h | - | - | - |
| [#22](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/22) | Revisão Conceitual e Metodológica do Artigo | Por definir | Parada | 2h | - | - | - |
| [#23](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/23) | Revisão Textual, Normatização em LaTeX e Rastreabilidade de Artefatos | Por definir | Parada | 2h | - | - | - |
| [#25](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/25) | Revisão das páginas do PSM|[Cristiano Morais](https://github.com/CristianoMoraiss) <br> [Pedro Reis](https://github.com/PedroRSR)| Concluída | 2h | 3h | 50% | R$ 150 |
| [#26](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/issues/26) | ​[Documentação/Infra] Modelagem do Banco de Dados e Configuração do Grafana|[Vitor Bessa](https://github.com/Bessazs) | Concluída | 3h | 5h | 67% | R$ 250 |

Total até o momento: R$ 775

### 7.2. Consolidação dos Dados da Milestone

<iframe src="https://grafana.cryptoskate.org/d-solo/advlzzz/psm?orgId=1&from=1794096000000&to=1794268800000&timezone=browser&var-sprint=Corre%C3%A7%C3%A3o%20Entrega%201&theme=dark&panelId=panel-6" width="450" height="300" frameborder="0"></iframe>

<iframe src="https://grafana.cryptoskate.org/d-solo/advlzzz/psm?orgId=1&from=1794139252872&to=1794149598462&timezone=browser&var-sprint=Corre%C3%A7%C3%A3o%20Entrega%201&panelId=panel-5" width="450" height="300" frameborder="0"></iframe>

- **Esforço Estimado do Escopo Concluído :** {Soma dos He das issues concluídas}h
- **Esforço Realizado Acumulado :** {Soma dos Hr das issues concluídas}h
- **Variação Global do Esforço :** {Resultado da fórmula}%
- **Custo Financeiro Equivalente Acumulado:** R$ Et * 50,00


### 7.3. Avaliação dos Critérios de Decisão

Com base na variação apurada de **{Resultado do Ve}%**:

- **Abaixo ou igual a 10%:** Acurácia adequada nas estimativas da equipe. O planejamento inicial reflete a capacidade real de execução.
- **Entre 10,1% e 20%:** Faixa de atenção. A equipe acompanha o desvio para entender os motivos da divergência e avaliar ajustes nas próximas milestones.
- **Acima de 20%:** Alerta para revisão imediata das estimativas e readequação do planejamento do projeto.

## Tabela de Contribuição

| Nome do Membro | Contribuição | Data | Commit |
| :--- | :--- | :---: | :---: |
| [Cristiano Morais](https://github.com/CristianoMoraiss) | Adição da página de recursos e custos | 10/11/2026 | [Commit](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/commit/exemplo) |
| [Pedro Ramos](https://github.com/PedroRSR) | Revisão e correção do documento | 11/11/2026 | [](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/commit/) |