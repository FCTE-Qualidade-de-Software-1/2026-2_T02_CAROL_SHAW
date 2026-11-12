# Fase 1 - Modelo de Qualidade e Escopo

## 1. Introdução

O modelo de qualidade do projeto fundamenta-se na norma internacional **ISO/IEC 25010** (da família SQuaRE - *Software Product Quality Requirements and Evaluation*). A definição do escopo prioriza as três características mais críticas para a usabilidade e eficácia social do **DF no Ponto**: **Portabilidade**, **Confiabilidade** e **Adequação Funcional**.

---

## 2. Adaptação do Modelo e Justificativa de Escopo

Em consonância com as diretrizes da **ISO/IEC 25040**, o modelo foi adaptado para concentrar esforços nos atributos técnicos diretamente relacionados aos riscos urbanos e às **Decisões Apoiadas (D1, D2 e D3)**.

### 2.1. Portabilidade (Decisão D1 / Questão Norteadora QN1)

Refere-se à capacidade do software de ser transferido e executado com eficácia em diferentes ambientes de hardware e software móvel.

| Subcaracterística | Impacto | Risco | Justificativa Técnica de Inclusão no Escopo |
| :--- | :---: | :---: | :--- |
| **Adaptabilidade** | Alto | Alto | **Incluída no escopo.** O aplicativo deve se adaptar eficientemente a telas compactas (abaixo de 5 polegadas) e a diferentes versões do sistema operacional Android/iOS, evitando sobreposição de elementos na camada do mapa e falhas de compatibilidade. |
| **Instalabilidade** | Alto | Médio | **Incluída no escopo.** Aparelhos de entrada comumente possuem armazenamento interno reduzido. É imperativo garantir que o aplicativo seja instalado sem corrompimento a partir das lojas oficiais e que a desinstalação não deixe arquivos órfãos em cache ocupando espaço indevido. |

> **Decisão de Escopo:** Ambas as subcaracterísticas (**Adaptabilidade e Instalabilidade**) integram o escopo da avaliação, subsidiando a Decisão **D1** e desdobrando-se diretamente nos objetivos **G1** e **G2** do ciclo GQM da Fase 2.

---

### 2.2. Confiabilidade (Decisão D2 / Questão Norteadora QN2)

Refere-se à capacidade do DF no Ponto de manter um nível especificado de desempenho quando operado sob as condições reais e adversas da infraestrutura urbana de telecomunicações do Distrito Federal.

| Subcaracterística | Impacto | Risco | Justificativa Técnica de Inclusão no Escopo |
| :--- | :---: | :---: | :--- |
| **Maturidade** | Alto | Alto | **Incluída no escopo.** Avalia a prevenção de encerramentos inesperados (*crashes*) e congelamentos de tela (*ANRs*) durante o uso contínuo dos módulos de mapa e pesquisa de itinerários. |
| **Tolerância a Falhas** | Alto | Alto | **Incluída no escopo.** Avalia a resiliência do aplicativo perante quedas abruptas de conexão à internet móvel (3G/4G) e desativação ou perda do sinal de localização GPS, exigindo recuperação graciosa sem perda da sessão. |

> **Decisão de Escopo:** **Maturidade e Tolerância a Falhas** foram selecionadas integralmente, subsidiando a Decisão **D2** e originando os objetivos **G3** e **G4** na Fase 2.

---

### 2.3. Adequação Funcional (Decisão D3 / Questão Norteadora QN3)

Refere-se ao grau em que as funcionalidades providas pelo DF no Ponto atendem às necessidades declaradas e implícitas dos passageiros de transporte público.

| Subcaracterística | Impacto | Risco | Justificativa Técnica de Inclusão no Escopo |
| :--- | :---: | :---: | :--- |
| **Correção Funcional** | Alto | Alto | **Incluída no escopo.** Avalia a exatidão quantitativa dos resultados: precisão do erro temporal nas previsões de chegada dos coletivos e precisão métrica da localização dos ônibus e paradas no mapa. |
| **Completude Funcional** | Alto | Alto | **Incluída no escopo.** Avalia o grau em que o aplicativo disponibiliza todas as linhas e itinerários oficiais da malha da Semob-DF e permite a execução bem-sucedida das tarefas essenciais. |
| **Pertinência Funcional** | Alto | Médio | **Articulação Transversal.** Garante que as funções avaliadas auxiliam concretamente o usuário na mobilidade diária. Na modelagem GQM, a pertinência atua como critério de seleção do *Catálogo de Tarefas Essenciais* (avaliado em G6). |

> **Decisão de Escopo:** A **Correção Funcional** origina o objetivo **G5**, enquanto a **Completude Funcional** (guiada pela **Pertinência**) desdobra-se no objetivo **G6** da Fase 2.

---

## 3. Síntese do Escopo e Conexão com o GQM

A tabela a seguir resume a correspondência formal entre o modelo de qualidade adotado nesta Fase 1 e a estrutura metodológica do GQM na Fase 2:

| Característica ISO/IEC 25010 | Subcaracterística Selecionada | Questão Norteadora | Decisão Apoiada | Meta GQM (Fase 2) |
| :--- | :--- | :---: | :---: | :---: |
| **Portabilidade** | Adaptabilidade | **QN1** | **D1** | **G1** |
| **Portabilidade** | Instalabilidade | **QN1** | **D1** | **G2** |
| **Confiabilidade** | Maturidade | **QN2** | **D2** | **G3** |
| **Confiabilidade** | Tolerância a Falhas | **QN2** | **D2** | **G4** |
| **Adequação Funcional** | Correção Funcional | **QN3** | **D3** | **G5** |
| **Adequação Funcional** | Completude Funcional (e Pertinência) | **QN3** | **D3** | **G6** |

---

## 4. Referências Bibliográficas

- **ISO/IEC 25010:2023.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*.
- **ISO/IEC 25040:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.

---

## Histórico de Versões

| ID  | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação inicial do documento | [Bessa](https://github.com/bessazs) | 17/10/2026 | — | — |
| 02 | Correção da seleção de Instalabilidade, detalhamento da Pertinência e alinhamento com GQM e Decisões D1-D3 | [João Guilherme Fonseca](https://github.com/JoaoGuilherme14) | 11/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 11/11/2026 |
