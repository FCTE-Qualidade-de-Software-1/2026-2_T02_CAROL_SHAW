# Gestão do Projeto

## 1. Introdução

A gestão interna do projeto é realizada com a ajuda do Framework de Medição PSM-CID (Practical Software and Systems Measurement - Continuous Iterative Development), que utiliza evidências do [repositório](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW) Git, como Milestones, Issues, Commits, Pull Requests e Projects (quadro Kanban), para auxiliar no monitoramento da equipe com o objetivo de melhorar o desenvolvimento do projeto.

O acompanhamento da equipe utiliza 3 (três) categorias de medição. Elas são:

- [Calendário e Progresso:](calendario.md) monitora se o escopo definido para o ciclo de desenvolvimento (Milestone) está sendo entregue no prazo estipulado.
- [Recursos e Custos:](recursos.md) monitora o esforço estimado investido no projeto por cada membro da equipe em horas trabalhadas.
- [Desempenho do Processo:](desempenho.md) mede o tempo com que a equipe consegue finalizar uma tarefa, identificando falhas no fluxo de trabalho.

## 2. Fluxo de Trabalho

Para a organização do fluxo de trabalho, utilizamos o GitHub Projects em formato Kanban, garantindo a rastreabilidade visual das tarefas. O ciclo de vida de uma atividade segue as seguintes regras:

1. Criação e Estimativa: Nenhuma tarefa é iniciada sem antes ser cadastrada como Issue, recebendo os devidos responsáveis (Assignees) e Labels descritivas.
2. Desenvolvimento (Kanban): Ao iniciar uma tarefa, o responsável deve obrigatoriamente mover o cartão da coluna `To Do` para `Em Progresso`.
3. Controle de Versão (Git Flow): O desenvolvimento do código ou artefato é feito em uma branch específica para a tarefa (ex: `docs/visão-geral`).
4. Revisão: A finalização ocorre por meio de um Pull Request para a branch main, que deve ser revisado antes de ser mesclado (merge), movendo o cartão para Done.

## Tabela de Contribuição

| Nome do Membro | Contribuição | Data | Commit |
| :--- | :--- | :--- | :--- |
| [Pedro Ramos](https://github.com/PedroRSR) | Criação da página de Visão Geral da Gestão do Projeto | 08/11/2026 | [8dccfce](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/commit/8dccfced583a70105ffb8a9a89e44cb7c1ff720b) |