# Gestão do Projeto

## 1. Introdução

A gestão interna do projeto é realizada com a ajuda do Framework de Medição PSM-CID (Practical Software and Systems Measurement - Continuous Iterative Development), que utiliza evidências do [repositório](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW) Git, como Milestones, Issues, Commits, Pull Requests e Projects (quadro Kanban), para auxiliar no monitoramento da equipe com o objetivo de melhorar o desenvolvimento do projeto.

O acompanhamento da equipe utiliza 4 (quatro) áreas de medição e controle. Elas são:

- [Calendário e Progresso:](calendario.md) monitora se o escopo definido para o ciclo de desenvolvimento (Milestone) está sendo entregue no prazo estipulado.
- [Recursos e Custos:](recursos.md) monitora o esforço investido no projeto por cada membro da equipe em horas trabalhadas e a valoração econômica correspondente.
- [Desempenho do Processo:](desempenho.md) mede o tempo com que a equipe consegue finalizar uma tarefa, identificando falhas no fluxo de trabalho.
- [Acompanhamento do Projeto:](acompanhamento.md) consolida a visão integrada das entregas, status das atividades e registro dos riscos e melhorias do ciclo.

## 2. Fluxo de Trabalho

Para a organização do fluxo de trabalho, utilizamos o GitHub Projects em formato Kanban, garantindo a rastreabilidade visual das tarefas. O ciclo de vida de uma atividade segue as seguintes regras:

1. Criação e Estimativa: Nenhuma tarefa é iniciada sem antes ser cadastrada como Issue, recebendo os devidos responsáveis (Assignees) e Labels descritivas.
2. Desenvolvimento (Kanban): Ao iniciar uma tarefa, o responsável deve obrigatoriamente mover o cartão da coluna `To Do` para `In Progress` (exibida como `In progress` no quadro).
3. Controle de Versão (Git Flow): O desenvolvimento do código ou artefato é feito em uma branch específica para a tarefa (ex: `docs/visão-geral`).
4. Revisão: A finalização ocorre por meio de um Pull Request para a branch `main` (movendo o cartão para `In Review`), que deve ser revisado antes de ser mesclado (*merge*), movendo o cartão para `Done`.

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação da página de Visão Geral da Gestão do Projeto | [Pedro Ramos](https://github.com/PedroRSR) | 08/11/2026 | [Vitor Bessa](https://github.com/bessazs) | 24/11/2026 |
| 02 | Atualização e alinhamento das 4 áreas de medição do PSM-CID | [João Guilherme Capozzi](https://github.com/jonas3688) | 22/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 |
| 03 | Revisão textual e padronização do fluxo Kanban na aba de gestão (#54) | [João Guilherme Capozzi](https://github.com/jonas3688) | 24/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 |
| 04 | Substituição da tabela de contribuição por histórico de versões | [Pedro Ramos](https://github.com/PedroRSR) | 24/11/2026 | [Vitor Bessa](https://github.com/bessazs) | 24/11/2026 |