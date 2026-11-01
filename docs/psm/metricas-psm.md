# Métricas de Gestão de Projeto (PSM/CID)

<!-- version-badge -->

<img alt="Versão" src="https://img.shields.io/badge/versão-v1.0--E1-pink"/> <img alt="Fase" src="https://img.shields.io/badge/fase-Gestão%20PSM-pink"/> <img alt="Atualização" src="https://img.shields.io/badge/atualizado-31%2F10%2F2026-pink"/>

Esta página registra as métricas de gerenciamento de projeto coletadas durante a **Entrega 1**, com base no modelo **PSM (Practical Software Measurement)** e nas categorias do **CID (Calendário e Progresso, Investimento e Custos, Desempenho dos Processos)**, conforme orientação da disciplina.

> As métricas PSM/CID **não constam no artigo científico** (arquivo LaTeX/PDF). Elas são documentadas exclusivamente neste GitPage, de acordo com a orientação da professora.

---

## 1. Calendário e Progresso (CID – C)

Esta categoria acompanha o progresso das atividades em relação ao cronograma planejado para a Entrega 1.

| ID Issue | Título                                          | Responsável(is)              | Data Planejada | Data Real  | Status      |
|:--------:|-------------------------------------------------|------------------------------|:--------------:|:----------:|:-----------:|
| #1       | Definição do escopo e partes interessadas       | Vitor Bessa                  | 15/10/2026     | 15/10/2026 | ✅ Concluída |
| #2       | Referencial teórico (ISO 25010 / GQM)           | Cristiano Morais              | 17/10/2026     | 17/10/2026 | ✅ Concluída |
| #3       | Fase 1 – Requisitos da avaliação                | João Guilherme C. / Rodrigo  | 20/10/2026     | 20/10/2026 | ✅ Concluída |
| #4       | Fase 2 – Desdobramento GQM e métricas           | João G. Veras / Rodrigo      | 24/10/2026     | 25/10/2026 | ✅ Concluída |
| #5       | Configuração do GitPage (MkDocs)                | Pedro Reis                   | 20/10/2026     | 20/10/2026 | ✅ Concluída |
| #7       | Revisão geral, redução do artigo e correções GQM| Equipe                       | 31/10/2026     | 31/10/2026 | ✅ Concluída |

**Resumo:**

| Métrica                              | Valor   |
|--------------------------------------|---------|
| Total de issues planejadas (E1)      | 6       |
| Issues concluídas no prazo           | 5       |
| Issues concluídas com atraso (≤1 dia)| 1       |
| Issues em aberto                     | 0       |
| **Taxa de conclusão no prazo**       | **83%** |
| **Taxa de conclusão geral**          | **100%**|

> **Análise:** A issue #4 foi concluída com 1 dia de atraso em relação ao planejado, sem impacto na release. Todas as issues do milestone E1 foram encerradas antes da entrega.

---

## 2. Recursos e Custos (CID – I)

Esta categoria registra a distribuição de esforço entre os membros da equipe.

| Membro                          | Tarefas Principais                                             | Esforço Estimado |
|---------------------------------|----------------------------------------------------------------|:----------------:|
| Cristiano Borges de Morais      | Referencial teórico, modelo ISO 25010 (Fase 1)                 | 16,6%            |
| João Guilherme Capozzi Gonçalves| Escopo, justificativas técnicas                                | 16,6%            |
| João Guilherme Lima Veras Fonseca| Métricas quantitativas GQM (Fase 2)                           | 16,7%            |
| Pedro Ramos Sousa Reis          | Relatório LaTeX, GitPage                                       | 16,7%            |
| Rodrigo Braz Ferreira Gontijo   | Objetivos, questões e hipóteses GQM (Fase 2)                  | 16,7%            |
| Vitor Pereira Bessa             | Análise de requisitos, metodologia e revisão técnica global    | 16,7%            |
| **Total**                       |                                                                | **100%**         |

**Resumo:**

| Métrica                                   | Valor  |
|-------------------------------------------|--------|
| Nº de membros ativos                      | 6      |
| Distribuição de esforço (desvio-padrão)   | ≈ 0,05%|
| Equilíbrio de contribuição                | ✅ Alto |

> **Análise:** A distribuição de responsabilidades foi praticamente equânime (≈16,6% por membro), evidenciando ausência de gargalos individuais. O baixo desvio-padrão confirma o equilíbrio da equipe.

---

## 3. Desempenho dos Processos (CID – D)

Esta categoria avalia a qualidade e eficiência do processo de desenvolvimento adotado.

### 3.1 Uso do GitHub como ferramenta de gestão

| Prática                               | Adotada? | Observação                                                        |
|---------------------------------------|:--------:|-------------------------------------------------------------------|
| Issues vinculadas a milestone (E1)    | ✅ Sim   | 6 issues abertas e fechadas no milestone "Entrega 1"              |
| Atribuição de responsável por issue   | ✅ Sim   | Cada issue teve pelo menos 1 assignee                             |
| Pull Requests com revisão             | ✅ Sim   | PRs revisados antes do merge na branch main                       |
| Release oficial gerada                | ✅ Sim   | Tag `v1.0-E1` criada após validação final                        |
| Uso de labels por categoria           | ⚠️ Parcial | Labels utilizadas em algumas issues; padronização pendente       |

### 3.2 Indicadores de qualidade do processo

| Métrica                                    | Valor         |
|--------------------------------------------|---------------|
| Commits na branch `main` (E1)              | Consultar repo |
| Nº de Pull Requests abertos (E1)           | Consultar repo |
| Nº de Pull Requests mergeados (E1)         | Consultar repo |
| Issues reabertas (retrabalho)              | 0              |
| Issues de revisão/correção abertas         | 1 (Issue #7)   |

### 3.3 Decisão de gestão baseada nas métricas

> **Decisão registrada:** Com base no desempenho do processo, a equipe optou por agrupar os refinamentos metodológicos e a redução do artigo em uma **issue central de revisão (Issue #7)**, garantindo a validação das correções do GQM antes da geração da Release oficial `v1.0-E1`. Essa decisão evitou múltiplos commits de correção na main e reduziu o risco de inconsistências no artefato final.

---

## Histórico de Versão

| ID  | Descrição                              | Autor             | Data       |
|:---:|----------------------------------------|-------------------|:----------:|
| 01  | Criação da página de métricas PSM/CID  | Equipe Carol Shaw | 31/10/2026 |
