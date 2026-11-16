# Fase 3 — Cronograma de Execução

## 1. Objetivo e escopo

Este documento estabelece o **cronograma operacional das ações da avaliação** do aplicativo móvel **DF no Ponto** (versão `5.25.1(1149)`, plataforma Android), integrando o conjunto de entregáveis da atividade de **projetar a avaliação** (Fase 3) prevista na norma **ISO/IEC 25040:2011**.

Seu propósito é ordenar temporalmente as atividades da **Fase 4 (Execução e Conclusão da Avaliação)** — desde a preparação do ambiente e a obtenção dos catálogos até a coleta em laboratório, as medições em campo, a consolidação de evidências e o julgamento final — definindo dependências, durações estimadas, papéis responsáveis e folgas de contingência.

Este plano deriva diretamente da lógica de execução definida em [Método de Avaliação](1-metodo.md), das amostras e parâmetros fixados em [Procedimentos de Execução](2-procedimentos.md) e dos meios e papéis inventariados em [Recursos](3-recursos.md).

> **Escopo frente à gestão do projeto:** este cronograma disciplina exclusivamente a sequência técnica das atividades de medição e julgamento da avaliação do produto. O acompanhamento gerencial de *milestones*, *burndown* e fechamento de *issues* permanece centralizado em [Calendário e Progresso do Projeto](../gestao/calendario.md).

---

## 2. Alinhamento com as entregas e período de coleta

A elaboração dos artefatos de projeto da Fase 3 ([Introdução](introducao.md), [Método de Avaliação](1-metodo.md), [Procedimentos de Execução](2-procedimentos.md), [Recursos](3-recursos.md) e este cronograma) está alinhada à **Milestone: Entrega 2** do projeto, com prazo previsto para **21/11/2026**, conforme registrado em [Calendário e Progresso do Projeto](../gestao/calendario.md).

Como o início efetivo das medições depende da conclusão dos catálogos, roteiros detalhados e confirmação final dos aparelhos e locais de parada (pendências das *issues* #45, #46 e #47), as datas exatas da Fase 4 permanecem **a definir** e deverão ser fixadas antes da primeira coleta oficial:

- **Período de coleta (referência para [Descrição do Produto](../fase1/3-descricao.md)):** **A definir** (janela operacional prevista após o encerramento da Fase 3 em `21/11/2026` e anterior à consolidação final da Fase 4, a ser registrada com data de início e término antes do início da Etapa 1).

---

## 3. Dependências entre atividades

Para assegurar a validade interna e a reprodutibilidade descritas em [Método de Avaliação](1-metodo.md) e [Procedimentos de Execução](2-procedimentos.md), a execução obedece às seguintes restrições de precedência:

1. **Fechamento dos parâmetros e instrumentos (Pré-condição):** nenhum ensaio oficial pode iniciar antes da fixação dos catálogos (`T01`–`T05`, `C01`–`C04`, `TE01`–`TE08`), das regras de pareamento, dos roteiros passo a passo e dos formulários de registro definidos em [Procedimentos de Execução](2-procedimentos.md).
2. **Captura prévia da base oficial da Semob-DF:** a extração e o arquivamento dos 20 primeiros itens distintos (`L01` a `L20`) da [Pesquisa por Linhas da Semob-DF](https://dfnoponto.semob.df.gov.br/pesquisa-por-linhas/), com data e hora de acesso, devem ocorrer **antes** da consulta no aplicativo para `M6.2` e **antes** da definição das entradas `L01`, `L02` e `P01` usadas em `M6.1`, `M1.1` e `M1.2`.
3. **Preparação do ambiente e teste-piloto:** a configuração dos aparelhos (`DISP-01`, `DISP-02`) e emuladores (`EMU-01`), a verificação da versão `5.25.1(1149)` e a realização de um **teste-piloto dos roteiros** (validando gravação de tela, cronometragem, bloqueio de rede/GPS e coleta no **GPSTest**) precedem todas as medições oficiais.
4. **Sequenciamento interno do laboratório:** a execução das tarefas essenciais no aparelho principal (`M6.1`) precede os testes multiplataforma de sistema operacional (`M1.2`), servindo como linha de base funcional para diferenciar defeitos funcionais gerais de falhas específicas de versão do Android.
5. **Laboratório antes do campo:** os ensaios em ambiente controlado (especialmente estabilidade em `M3.1`/`M3.2` e resiliência de rede/GPS em `M4.1`/`M4.2`) devem ser concluídos antes das saídas de campo (`M5.1` e `M5.2`), evitando deslocamentos presenciais com problemas operacionais nos instrumentos de registro.
6. **Consolidação antes do julgamento:** o cálculo dos indicadores e a atribuição de notas em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md) ocorrem somente após a conferência integral dos formulários, a classificação dos casos não observáveis e a vinculação das evidências por exceção.

```text
[Pré-condição: Parâmetros, Roteiros e Recursos (#45, #46, #47)]
                               │
                               ▼
    [Etapa 1: Preparação, Base Semob-DF (L01–L20) e Teste-Piloto]
                               │
          ┌────────────────────┼────────────────────┐
          ▼                    ▼                    ▼
 [2.1 Portabilidade    [2.2 Sessões de     [2.3 Injeção de     [2.4 Auditoria
  e Tarefas: M6.1 →     Uso Contínuo:       Falhas: M4.1,       Comparativa:
  M1.1, M1.2, M2.x]     M3.1, M3.2]         M4.2]               M6.2]
          └────────────────────┼────────────────────┘
                               │
                               ▼
         [Etapa 3: Execução em Campo (M5.2 Paradas → M5.1 e M5.2 Veículos)]
                               │
                               ▼
         [Etapa 4: Consolidação das Evidências e Formulários]
                               │
                               ▼
         [Etapa 5: Cálculo e Julgamento na Fase 4]
```

---

## 4. Cronograma detalhado das atividades de avaliação

Os papéis atribuídos na tabela seguem a definição da Seção 6 de [Recursos](3-recursos.md) (**Responsável pela execução**, **Responsável pelos registros**, **Responsável pela coleta de campo** e **Revisor dos procedimentos**), cujos integrantes nominais encontram-se **a definir** naquele documento.

| Etapa / ID | Atividade de execução | Métricas / Entregáveis | Dependências | Início | Término | Duração estimada | Folga prevista | Papel responsável (Integrante) |
| :--- | :--- | :--- | :--- | :---: | :---: | :---: | :---: | :--- |
| **0.1** | Fechamento dos parâmetros, catálogos, roteiros e inventário de recursos | Conclusão de [Procedimentos](2-procedimentos.md) e [Recursos](3-recursos.md) (#45, #46, #47) | Fase 2 concluída | Em andamento | 21/11/2026 | — | — | Revisor dos procedimentos *(A definir)* |
| **1.1** | Preparação do ambiente de laboratório, dispositivos (`DISP-01`, `DISP-02`), emuladores (`EMU-01`) e instalação da versão `5.25.1(1149)` | Ambiente configurado e ferramentas (`adb`, `logcat`, gravação, GPSTest) validadas | **0.1** | A definir | A definir | 3 h | 2 h | Responsável pela execução *(A definir)* |
| **1.2** | Coleta, ordenação e arquivamento da amostra oficial da Semob-DF (`L01`–`L20`) e seleção de `L01`, `L02` e `P01` | Base de referência oficial preservada com data/hora | **0.1** | A definir | A definir | 2 h | 2 h | Responsável pelos registros *(A definir)* |
| **1.3** | Execução do teste-piloto dos roteiros e validação dos formulários de coleta | Roteiros e planilhas calibrados sem ambiguidade | **1.1**, **1.2** | A definir | A definir | 3 h | 2 h | Revisor dos procedimentos e Responsável pela execução *(A definir)* |
| **2.1a** | **Laboratório — Tarefas essenciais e adaptabilidade de tela:** execução de `TE01`–`TE08` no aparelho principal e avaliação de 20 casos tela × configuração (`T01`–`T05` × `C01`–`C04`) | **M6.1** (8 tarefas) e **M1.1** (20 casos) | **1.3** | A definir | A definir | 3 h | 2 h | Responsável pela execução *(A definir)* |
| **2.1b** | **Laboratório — Compatibilidade de SO e instalabilidade:** execução de `TE01`–`TE08` em até 6 versões do Android (9 a 13 + atual) e 10 ciclos de instalação limpa e remoção com inspeção de diretórios | **M1.2** (até 6 versões), **M2.1** (10 ciclos) e **M2.2** (10 ciclos) | **2.1a** | A definir | A definir | 5 h | 4 h | Responsável pela execução *(A definir)* |
| **2.2** | **Laboratório — Sessão padronizada de uso contínuo:** execução de 20 sessões cronometradas de 5 minutos (100 min ativos) com gravação e monitoramento de logs | **M3.1** e **M3.2** (20 sessões) | **1.3** | A definir | A definir | 3 h 30 min | 2 h | Responsável pela execução *(A definir)* |
| **2.3** | **Laboratório — Ensaio com injeção de falhas:** execução de 20 interrupções de rede (30 s) e 20 desativações de localização/GPS (30 s) com medição temporal em vídeo | **M4.1** (20 ensaios) e **M4.2** (20 ensaios) | **1.3** | A definir | A definir | 3 h | 2 h | Responsável pela execução *(A definir)* |
| **2.4** | **Laboratório — Auditoria comparativa de catálogo:** confronto dos 20 itens oficiais (`L01`–`L20`) da Semob-DF com os registros do aplicativo | **M6.2** (20 itens) | **1.2**, **1.3** | A definir | A definir | 2 h | 1 h | Responsável pelos registros *(A definir)* |
| **3.1** | **Campo — Medição estática de paradas:** levantamento de coordenadas de referência via GPSTest nas 10 paradas selecionadas e comparação com o mapa do app | **M5.2 — paradas** (10 paradas) | **1.3**, **2.1a** | A definir | A definir | 3 h | 1 janela (3 h) | Responsável pela coleta de campo *(A definir)* |
| **3.2** | **Campo — Observação de previsões e veículos:** registro de 20 eventos de chegada (2 blocos de 10, ≥ 2 linhas) e 20 eventos de veículo parado junto à parada | **M5.1** (20 eventos) e **M5.2 — veículos** (20 eventos) | **2.2**, **2.3**, **3.1** | A definir | A definir | 6 h (2 blocos de 3 h) | 2 janelas (6 h) | Responsável pela coleta de campo *(A definir)* |
| **4.1** | **Consolidação das evidências e formulários:** auditoria de preenchimento, classificação de pendências/exclusões, vinculação de capturas/logs/vídeos por exceção e versionamento em `docs/fase3/` | Tabelas de contagem revisadas e evidências organizadas | **2.1b**, **2.2**, **2.3**, **2.4**, **3.2** | A definir | A definir | 4 h | 2 h | Responsável pelos registros *(A definir)* |
| **5.1** | **Cálculo e julgamento na Fase 4:** apuração das 12 métricas, atribuição das notas (1 a 4), julgamento dos objetivos `G1`–`G6` e elaboração do relatório da Fase 4 | Resultados consolidados e relatório final da avaliação | **4.1** | A definir | A definir | 4 h | 2 h | Toda a equipe / Revisor dos procedimentos *(A definir)* |

> **Nota sobre paralelismo:** após a conclusão da **Etapa 1** (`1.1` a `1.3`), as atividades de laboratório (`2.1a`/`2.1b`, `2.2`, `2.3` e `2.4`) podem ser executadas em paralelo caso haja mais de um dispositivo ou avaliador disponível, respeitando a precedência entre `2.1a` e `2.1b`.

---

## 5. Gestão de folgas e contingências

As folgas previstas na Seção 4 foram dimensionadas para absorver reexecuções previstas nas regras de [Procedimentos de Execução](2-procedimentos.md) e mitigar os riscos mapeados na Seção 7 de [Recursos](3-recursos.md):

| Fator de risco (conforme [Recursos](3-recursos.md)) | Atividades afetadas | Estratégia de folga e contingência aplicada |
| :--- | :--- | :--- |
| **Disponibilidade de aparelhos e emuladores** (`DISP-01`, `DISP-02`, `EMU-01`) | `1.1`, `2.1a`, `2.1b` | Reserva de **+4 h** em `2.1b` e **+2 h** em `1.1`/`2.1a` para configuração de perfis alternativos ou substituição entre dispositivo físico e emulador Android caso alguma versão de SO ou resolução apresente impedimento técnico. |
| **Falha em ferramentas de gravação, log ou rede/GPS** | `2.2`, `2.3` | Folga de **+2 h** por bloco de ensaio para repetição imediata de sessões ou interrupções em que a gravação de tela ou a marcação temporal falhar, preservando o registro original de defeitos observados. |
| **Indisponibilidade ou instabilidade da fonte oficial da Semob-DF** | `1.2`, `2.4` | Folga de **+2 h** na captura inicial (`1.2`) para extração e arquivamento local de *backup* (captura datada) da lista `L01`–`L20`, evitando bloqueio posterior da auditoria `M6.2`. |
| **Condições climáticas (chuva) e segurança nos pontos de parada** | `3.1`, `3.2` | Reserva de **3 janelas completas de contingência** (+3 h para `3.1` e +6 h para `3.2`) em dias/turnos alternativos previamente registrados, permitindo reagendamento sem comprometer o prazo da Fase 4. |
| **Horário das paradas, intervalos de frota e operação das linhas** | `2.1a` (`TE05`), `3.2` | Dimensionamento de blocos de **3 h** por sessão de campo (para capturar 10 chegadas elegíveis) somado à folga de **2 janelas extras**, cobrindo horários de menor frequência de ônibus ou ausência temporária de operação da linha `L02`. |
| **Conectividade móvel instável em campo** | `3.1`, `3.2` | Margem de tempo dentro das janelas de contingência para repetição de observações apenas nos casos de perda de rede externa previstos nas regras de não observabilidade de [Procedimentos de Execução](2-procedimentos.md). |

---

## 6. Referências

- Equipe Carol Shaw. [Introdução da Fase 3](introducao.md).
- Equipe Carol Shaw. [Método de Avaliação — Fase 3](1-metodo.md).
- Equipe Carol Shaw. [Parâmetros, Catálogos e Amostragem — Fase 3](2-procedimentos.md).
- Equipe Carol Shaw. [Recursos — Fase 3](3-recursos.md).
- Equipe Carol Shaw. [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md).
- Equipe Carol Shaw. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md).
- Equipe Carol Shaw. [Calendário e Progresso do Projeto](../gestao/calendario.md).
- ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação inicial do cronograma de execução da avaliação (Fase 3), definindo sequência de atividades, dependências, durações, folgas e papéis responsáveis | [Cristiano](https://github.com/CristianoMoraiss) | 16/11/2026 | — | — |