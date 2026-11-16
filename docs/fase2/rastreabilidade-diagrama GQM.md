# Fase 2: Rastreabilidade e Diagrama GQM

## 1. Introdução e Propósito da Rastreabilidade

Este documento estabelece a cadeia de **rastreabilidade bidirecional** entre os requisitos conceituais definidos na Fase 1 e a modelagem formal do paradigma *Goal–Question–Metric* (GQM) na Fase 2. A rastreabilidade garante que nenhum indicador tenha sido formulado de maneira arbitrária: cada métrica deriva estritamente de uma necessidade real de um *stakeholder*, responde a uma **Questão Norteadora Transversal** e fundamenta uma **Decisão Estratégica Apoiada (D1, D2 ou D3)**.

---

## 2. Matriz de Rastreabilidade Transversal (Fase 1 $\leftrightarrow$ Fase 2)

A tabela abaixo explicita como as necessidades das partes interessadas da Fase 1 foram convertidas nas metas e indicadores mensuráveis da Fase 2:

| Necessidade da Parte Interessada (Fase 1) | Questão Norteadora Transversal | Decisão Apoiada | Característica / Subcaracterística (ISO 25010) | Meta GQM | Questões Operacionais | Métricas (ISO 25023) |
| :--- | :---: | :---: | :--- | :---: | :---: | :---: |
| **Cidadão:** Acessar o app com interface íntegra, independente do modelo ou resolução de tela do celular. | **QN1** *(Acesso Universal)* | **D1** | Portabilidade / Adaptabilidade | **G1** | Q1.1, Q1.2 | M1.1, M1.2 |
| **Cidadão:** Não sobrecarregar a memória interna do celular ao instalar e desinstalar o aplicativo. | **QN1** *(Acesso Universal)* | **D1** | Portabilidade / Instalabilidade | **G2** | Q2.1, Q2.2 | M2.1, M2.2 |
| **Passageiro / Semob:** O aplicativo não pode fechar sozinho (*crash*) nem travar no momento da aproximação do ônibus. | **QN2** *(Resiliência Operacional)* | **D2** | Confiabilidade / Maturidade | **G3** | Q3.1, Q3.2 | M3.1, M3.2 |
| **Passageiro:** Funcionar com orientação amigável em paradas com sinal ruim de 3G/4G ou sem GPS. | **QN2** *(Resiliência Operacional)* | **D2** | Confiabilidade / Tolerância a Falhas | **G4** | Q4.1, Q4.2 | M4.1, M4.2 |
| **Passageiro:** Confiar na precisão dos horários de chegada e na posição do ônibus no mapa para não perder a viagem. | **QN3** *(Fidelidade da Informação)* | **D3** | Adequação Funcional / Correção | **G5** | Q5.1, Q5.2 | M5.1, M5.2 |
| **Semob / Cidadão:** Encontrar todas as linhas oficiais da malha urbana e executar tarefas essenciais com sucesso. | **QN3** *(Fidelidade da Informação)* | **D3** | Adequação Funcional / Completude (e Pertinência) | **G6** | Q6.1, Q6.2 | M6.1, M6.2 |

<p class="legenda">Tabela 1. Matriz de Rastreabilidade Transversal entre Requisitos da Fase 1 e o Ciclo GQM da Fase 2. Fonte: elaboração própria (2026).</p>

### 2.1. Relação das Métricas com a Meta 11.2

Conforme a [seleção de ODS da Fase 1](../fase1/1-proposito.md#6-alinhamento-com-os-objetivos-de-desenvolvimento-sustentavel-ods), adota-se o **ODS 11, meta 11.2**. A contribuição do aplicativo consiste em apoiar o acesso à informação necessária ao uso do transporte público. A tabela relaciona as [métricas de qualidade](metricas-julgamento.md#detalhamento-das-metricas) às condições técnicas desse apoio.

| Objetivo e decisão | Métricas GQM | Evidência técnica e vínculo com a meta 11.2 |
| :--- | :--- | :--- |
| **G1 · QN1 / D1** | **M1.1** — Adaptabilidade de Hardware (Telas)<br>**M1.2** — Adaptabilidade de SO | As proporções de casos de tela e versões de SO aprovados identificam barreiras à consulta de linhas, horários e mapas nos dispositivos avaliados. Subsidiam decisões de compatibilidade, sem medir a inclusão da população. |
| **G2 · QN1 / D1** | **M2.1** — Sucesso de Instalação<br>**M2.2** — Resíduo Pós-Desinstalação | Instalar sem erro na primeira tentativa viabiliza o acesso ao aplicativo. M2.2 verifica desinstalações sem resíduos observados nos locais inspecionados; seu vínculo com a meta é apenas indireto, como condição de instalabilidade no aparelho. |
| **G3 · QN2 / D2** | **M3.1** — Sessões sem Crashes<br>**M3.2** — Sessões sem Congelamentos | As proporções de sessões sem interrupções indicam a estabilidade da consulta durante o planejamento do deslocamento e a espera pelo ônibus. Falhas observadas orientam correções para preservar essa consulta. |
| **G4 · QN2 / D2** | **M4.1** — Mitigação de Perda de Conexão<br>**M4.2** — Tratamento de Perda de GPS | Os ensaios verificam orientação ao passageiro, continuidade das funções independentes da localização e retomada após reconexão ou reativação do GPS. Avaliam o tratamento da falha pelo aplicativo, sem medir a cobertura da rede móvel. |
| **G5 · QN3 / D3** | **M5.1** — Precisão de Tempo<br>**M5.2** — Correção de Dados (Mapa) | O erro temporal mediano e a proporção de posições dentro da tolerância verificam a informação usada para decidir quando e onde embarcar. Identificam imprecisões na amostra, sem demonstrar redução efetiva do tempo de espera. |
| **G6 · QN3 / D3** | **M6.1** — Cobertura de Tarefas Essenciais<br>**M6.2** — Completude do Banco | A conclusão das tarefas e a presença de linhas/itinerários da amostra oficial verificam se o passageiro consegue consultar as opções de viagem previstas no catálogo. Cobertura de dados no aplicativo não equivale à cobertura territorial do transporte. |

<p class="legenda">Tabela 2. Relação entre as métricas GQM e a meta 11.2 do ODS 11. Fonte: elaboração própria (2026).</p>

Essas métricas produzem evidências de qualidade do software para orientar melhorias. O **indicador oficial 11.2.1 da ONU** mede a proporção da população com acesso adequado ao transporte público, desagregada por sexo, idade e deficiência; seu cálculo exige dados que não são coletados nestes ensaios. Portanto, as notas GQM não representam o valor desse indicador nem comprovam o cumprimento da meta. A descrição está na [página do Ipea sobre o ODS 11](https://www.ipea.gov.br/ods/ods11.html).

---

## 3. Verificação de Conformidade e Critérios SQuaRE

| Requisito Metodológico de Conformidade | Atendido? | Justificativa Técnica |
| :--- | :---: | :--- |
| **As métricas correspondem à norma ISO/IEC 25023?** | **Sim** | Derivadas diretamente de medidas internacionais padronizadas para adaptabilidade, instalabilidade, sessões sem crashes/congelamentos, tolerância a falhas e exatidão de dados. |
| **Foram evitadas métricas puras de "Usabilidade subjetiva"?** | **Sim** | O foco da avaliação concentrou-se na mecânica de software, resiliência perante falhas e precisão métrica/temporal objetiva. |
| **Todos os dados podem ser obtidos via Testes de Caixa Preta?** | **Sim** | Por meio de ensaios e simulações no aplicativo em produção em aparelhos físicos, emuladores Android Studio e coleta de campo nas paradas do DF. |
| **A rastreabilidade entre Fases 1 e 2 é contínua e sem lacunas?** | **Sim** | Todas as decisões (D1-D3) e questões norteadoras (QN1-QN3) possuem desdobramento operacional completo até a camada quantitativa. |

<p class="legenda">Tabela 3. Verificação de conformidade da especificação. Fonte: elaboração própria (2026).</p>

---

## 4. Representação Gráfica da Hierarquia GQM

As Figuras 1, 2 e 3 apresentam a hierarquia completa dos seis objetivos, com os três níveis do GQM identificados (conceitual, operacional e quantitativo) e os mesmos nomes usados em [Métricas e Julgamento](metricas-julgamento.md):

### 4.1. Característica: Portabilidade (Orientada por QN1 e Decisão D1)

```mermaid
flowchart TD
    subgraph NC["Nível conceitual — objetivos"]
        G1["G1 — Portabilidade<br>(Adaptabilidade) · QN1 / D1"]
        G2["G2 — Portabilidade<br>(Instalabilidade) · QN1 / D1"]
    end
    subgraph NO["Nível operacional — questões"]
        Q11["Q1.1 — A interface se redimensiona<br>sem sobreposições ou cortes?"]
        Q12["Q1.2 — O app executa sem erros de<br>compatibilidade entre versões de SO?"]
        Q21["Q2.1 — A instalação ocorre na<br>primeira tentativa, sem erro?"]
        Q22["Q2.2 — O app evita arquivos<br>residuais após a desinstalação?"]
    end
    subgraph NQ["Nível quantitativo — métricas"]
        M11["M1.1 — Adaptabilidade de<br>Hardware (Telas)"]
        M12["M1.2 — Adaptabilidade de<br>Sistema Operacional"]
        M21["M2.1 — Sucesso de<br>Instalação"]
        M22["M2.2 — Resíduo<br>Pós-Desinstalação"]
    end
    G1 --> Q11
    G1 --> Q12
    G2 --> Q21
    G2 --> Q22
    Q11 --> M11
    Q12 --> M12
    Q21 --> M21
    Q22 --> M22
```

<p class="legenda">Figura 1. Diagrama GQM da característica de Portabilidade (Adaptabilidade e Instalabilidade). Fonte: elaboração própria (2026).</p>

---

### 4.2. Característica: Confiabilidade (Orientada por QN2 e Decisão D2)

```mermaid
flowchart TD
    subgraph NC["Nível conceitual — objetivos"]
        G3["G3 — Confiabilidade<br>(Maturidade) · QN2 / D2"]
        G4["G4 — Confiabilidade<br>(Tolerância a Falhas) · QN2 / D2"]
    end
    subgraph NO["Nível operacional — questões"]
        Q31["Q3.1 — O app evita encerramentos<br>forçados durante sessões ativas?"]
        Q32["Q3.2 — O app previne congelamentos<br>superiores a 5 segundos?"]
        Q41["Q4.1 — O app trata quedas de conexão<br>e retoma a operação?"]
        Q42["Q4.2 — O app reage adequadamente<br>à ausência de GPS?"]
    end
    subgraph NQ["Nível quantitativo — métricas"]
        M31["M3.1 — Sessões sem<br>Crashes"]
        M32["M3.2 — Sessões sem<br>Congelamentos"]
        M41["M4.1 — Mitigação de Perda<br>de Conexão"]
        M42["M4.2 — Tratamento de<br>Perda de GPS"]
    end
    G3 --> Q31
    G3 --> Q32
    G4 --> Q41
    G4 --> Q42
    Q31 --> M31
    Q32 --> M32
    Q41 --> M41
    Q42 --> M42
```

<p class="legenda">Figura 2. Diagrama GQM da característica de Confiabilidade (Maturidade e Tolerância a Falhas). Fonte: elaboração própria (2026).</p>

---

### 4.3. Característica: Adequação Funcional (Orientada por QN3 e Decisão D3)

```mermaid
flowchart TD
    subgraph NC["Nível conceitual — objetivos"]
        G5["G5 — Adequação Funcional<br>(Correção) · QN3 / D3"]
        G6["G6 — Adequação Funcional<br>(Completude e Pertinência) · QN3 / D3"]
    end
    subgraph NO["Nível operacional — questões"]
        Q51["Q5.1 — As previsões de chegada<br>refletem a aproximação física?"]
        Q52["Q5.2 — A posição de ônibus e paradas<br>no mapa coincide com a real?"]
        Q61["Q6.1 — As tarefas essenciais executam<br>de ponta a ponta com sucesso?"]
        Q62["Q6.2 — A base de linhas e itinerários<br>corresponde à da Semob-DF?"]
    end
    subgraph NQ["Nível quantitativo — métricas"]
        M51["M5.1 — Precisão<br>de Tempo"]
        M52["M5.2 — Correção de<br>Dados (Mapa)"]
        M61["M6.1 — Cobertura de<br>Tarefas Essenciais"]
        M62["M6.2 — Completude<br>do Banco"]
    end
    G5 --> Q51
    G5 --> Q52
    G6 --> Q61
    G6 --> Q62
    Q51 --> M51
    Q52 --> M52
    Q61 --> M61
    Q62 --> M62
```

<p class="legenda">Figura 3. Diagrama GQM da característica de Adequação Funcional (Correção e Completude/Pertinência). Fonte: elaboração própria (2026).</p>

---

## 5. Referências Bibliográficas 

- **BASILI, Victor R.; CALDIERA, Gianluigi; ROMBACH, H. Dieter.** *The Goal Question Metric Approach*. Encyclopedia of Software Engineering, 1994.   
- **ISO/IEC 25010:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — System and software quality models*.
- **ISO/IEC 25023:2016.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*.
- **ISO/IEC 25040:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.
- **INSTITUTO DE PESQUISA ECONÔMICA APLICADA (IPEA).** *ODS 11 — Cidades e Comunidades Sustentáveis*, meta 11.2 e indicador 11.2.1. Disponível em: <https://www.ipea.gov.br/ods/ods11.html>. Acesso em: 15 nov. 2026.

---

## Histórico de Versões

| ID  | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação inicial do documento | [Cristiano](https://github.com/CristianoMoraiss) | 31/10/2026 | [Bessa](https://github.com/bessazs) | 31/10/2026 |
| 02 | Refatoração dos diagramas para Mermaid nativo | [João Capozzi](https://github.com/jonas3688) | 11/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
| 03 | Inclusão das Questões Norteadoras (QN1-QN3), Decisões (D1-D3) na matriz de rastreabilidade e harmonização das nomenclaturas com a ISO/IEC 25023 | [João Guilherme Fonseca](https://github.com/JoaoGuilherme14) | 11/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
| 04 | Mapeamento das 12 métricas GQM para a meta 11.2 | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 15/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 |
| 05 | Diagramas GQM refeitos em Mermaid, com os três níveis identificados, fontes nas legendas e nome único de M4.1 | [Bessa](https://github.com/bessazs) | 16/11/2026 | — | — |
