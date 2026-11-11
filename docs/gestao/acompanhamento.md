# Acompanhamento do Projeto

## 1. Introdução

Esta página funciona como o painel de controle e acompanhamento gerencial da equipe Carol Shaw, reunindo os registros de governança, o acesso aos quadros de trabalho e os direcionamentos de melhoria contínua baseados no framework PSM-CID.

## 2. Links Rápidos

Para acesso direto aos instrumentos de gestão e acompanhamento do repositório:

- [Quadro Kanban da Equipe (GitHub Projects #44)](https://github.com/orgs/FCTE-Qualidade-de-Software-1/projects/44)
- [Lista de Milestones](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/milestones)
- [Repositório do Projeto](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW)

## 3. Retrospectiva da Entrega 1

A partir dos feedbacks recebidos e da análise crítica do processo de trabalho, a equipe mapeou os acertos e as falhas da Entrega 1:

| O que funcionou bem | O que precisa melhorar |
| :--- | :--- |
| **Cumprimento do prazo final:** A entrega foi enviada dentro do limite estipulado no calendário da disciplina. | **Qualidade inconsistente dos artefatos:** Prazos foram obedecidos, mas o conteúdo entregue foi deficiente e desconexo, exigindo retrabalho profundo na Entrega 1. |
| **Ambiente e ferramentas:** Estruturação inicial do repositório Git e da plataforma de documentação (MkDocs). | **Comunicação falha e excesso de assincronismo:** Dependência exclusiva de mensagens em texto sem reuniões síncronas de alinhamento, gerando desencontros e tarefas desassistidas. |
| **Disposição para correção:** Aceitação transparente dos erros apontados pela professora para reestruturação com dados reais. | **Distribuição injusta de trabalho mascarando ociosidade:** A métrica teórica de 16,6% foi fictícia e camuflou integrantes que pouco ou nada produziram, sobrecarregando poucos membros. Prevalecerão os dados reais do Git. |
| — | **Falha de rastreabilidade e issues retroativas:** Issues abertas após o trabalho pronto apenas para constar, gerando Lead/Cycle Time zerados e anulando a gestão visual no Kanban. |

## 4. Planos de Ação

Com base nos apontamentos da retrospectiva e na necessidade de comprovação factual exigida pela disciplina, a equipe estabeleceu três planos de ação imediatos:

### 4.1. Uso Estrito do Quadro Kanban
Nenhuma atividade de desenvolvimento ou documentação pode ser iniciada sem uma issue correspondente previamente cadastrada e associada à sua respectiva milestone. Mais do que controle de prazos, o Kanban passa a ser a ferramenta central de **organização e alinhamento da equipe**: ao visualizar o quadro, qualquer integrante sabe exatamente em qual frente cada colega está trabalhando no momento, evitando sobreposição de tarefas, retrabalho ou demandas esquecidas.

O responsável deve obrigatoriamente movimentar o cartão para a coluna `In progress` ao iniciar o trabalho, `In review` ao abrir o Pull Request e `Done` apenas após a revisão e mesclagem na branch `main`, garantindo rastreabilidade contínua.

### 4.2. Distribuição Justa Baseada no Histórico de Contribuição
A participação da equipe passará a ser apurada pelos dados reais do repositório, extraídos da aba *Insights > Contributors* do GitHub (volume de commits, adições e deleções). Essa transparência servirá para identificar sobrecargas, evitar ociosidade e equilibrar a distribuição de demandas entre todos os integrantes nas próximas entregas.

### 4.3. Uso de Estimativas de Esforço nas Issues
Cada issue aberta deve registrar obrigatoriamente em seu descritivo uma estimativa inicial de esforço em horas. Esse dado permitirá confrontar o tempo previsto com o tempo real consumido, calibrando a capacidade produtiva da equipe e servindo de insumo para os cálculos de custo e investimento da metodologia PSM-CID.

## 5. Integração da Gestão do Projeto (PSM-CID)

O acompanhamento detalhado dos dados e evidências que suportam este dashboard gerencial está distribuído nas demais subabas de gestão:

- [Visão Geral](visao-geral.md): Apresenta o framework PSM-CID e as diretrizes do fluxo de trabalho Git Flow/Kanban.
- [Calendário e Progresso](calendario.md): Reúne as métricas de cumprimento de prazos, escopo e burndown das milestones.
- [Recursos e Custos](recursos.md): Detalha a medição de esforço individual e coletivo a partir de horas estimadas e métricas reais de contribuição (commits, adições e deleções).
- [Desempenho do Processo](desempenho.md): Analisa a fluidez operacional, identificando gargalos, *Lead Time* e *Cycle Time*.

## Tabela de Contribuição

| Nome do Membro | Contribuição | Data | Commit |
| :--- | :--- | :--- | :--- |
| [João Capozzi](https://github.com/jonas3688) | Criação da página de Acompanhamento do Projeto | 09/11/2026 | [c8bfc1b](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/commit/c8bfc1b) |
| [Pedro Ramos](https://github.com/PedroRSR) | Revisão e correção do documento | 11/11/2026 | [a3d7186](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/commit/a3d7186) |