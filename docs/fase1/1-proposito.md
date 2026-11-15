# Fase 1 - Propósito da Avaliação

## 1. Introdução

Este documento apresenta o propósito da avaliação de qualidade do aplicativo **DF no Ponto**, tomando como base o modelo de qualidade da norma **ISO/IEC 25010** e o processo de avaliação estabelecido pela **ISO/IEC 25040**. A investigação concentra-se nas características mais críticas para um aplicativo móvel de utilidade pública: **Portabilidade**, **Confiabilidade** e **Adequação Funcional**, desdobradas em suas subcaracterísticas prioritárias.

Na terminologia da ISO/IEC 25040, a Fase 1 corresponde à atividade de **estabelecer os requisitos da avaliação** (propósito, partes interessadas, produto avaliado e modelo de qualidade) e a Fase 2, à atividade de **especificar a avaliação** (medidas e critérios de decisão). A Fase 3 (planejamento) corresponde a **projetar a avaliação**, e a Fase 4 (execução e julgamento), a **executar e concluir a avaliação**.

O objetivo fundamental não é cobrir exaustivamente todos os atributos do padrão SQuaRE de maneira superficial, mas estabelecer um diagnóstico técnico rigoroso e acionável sobre o comportamento do sistema diante das condições reais vivenciadas diariamente pelos passageiros do Distrito Federal.

---

## 2. Propósito da Avaliação e Decisões Apoiadas

A avaliação tem como finalidade primordial subsidiar a tomada de decisões técnicas e gerenciais acerca da viabilidade, usabilidade operacional e eficácia do DF no Ponto como ferramenta pública oficial. Conforme preconizado pelo ciclo de vida de medição, os resultados obtidos fundamentarão três decisões estratégicas centrais:

| Código | Decisão Estratégica Apoiada | Escopo de Decisão e Ação |
| :---: | :--- | :--- |
| **D1** | **Acessibilidade Tecnológica e Homologação de Dispositivos** | Decidir sobre a necessidade de refatoração de interface para dispositivos de entrada com telas compactas, homologação de versões legadas do sistema operacional Android e otimização do tamanho do pacote de instalação/desinstalação limpa. |
| **D2** | **Resiliência Operacional em Ambiente Urbano** | Decidir sobre a estabilidade de execução em sessões contínuas e priorização de arquiteturas de tolerância a falhas (exibição de mensagens amigáveis e recuperação graciosa) diante da interrupção de conectividade móvel (3G/4G) e perda de sinal de GPS. |
| **D3** | **Confiabilidade e Utilidade dos Dados de Mobilidade** | Decidir sobre a exatidão das previsões de horários de chegada, fidelidade da localização geográfica dos veículos nos mapas e completude do banco de linhas e itinerários do aplicativo em relação à frota oficial da Semob-DF. |

---

## 3. Questões Norteadoras Transversais

Para garantir a coesão narrativa e conceitual entre os requisitos de alto nível desta Fase 1 e a modelagem matemática do ciclo *Goal-Question-Metric* (GQM) na Fase 2, formularam-se três **Questões Norteadoras Transversais**. Elas sintetizam as maiores preocupações dos cidadãos e stakeholders:

> **QN1 (Universalidade e Acesso Equitativo):** *O aplicativo é utilizável por qualquer cidadão do Distrito Federal, independentemente da sua faixa de renda, tamanho da tela ou limitações técnicas do smartphone utilizado?*  
> *(Orientadora de D1, da característica de Portabilidade e das metas G1 e G2).*

> **QN2 (Resiliência Operacional sob Condições Reais de Uso):** *O aplicativo mantém sua integridade de funcionamento e orienta adequadamente o passageiro quando submetido às oscilações severas da infraestrutura urbana (quedas de rede móvel, ausência de sinal GPS e horários de pico)?*  
> *(Orientadora de D2, da característica de Confiabilidade e das metas G3 e G4).*

> **QN3 (Fidelidade da Informação e Utilidade Pública):** *As informações de rotas, itinerários, horários e geolocalização apresentadas pelo aplicativo correspondem à realidade da operação das linhas nas ruas com precisão suficiente para que o usuário planeje seus deslocamentos com segurança?*  
> *(Orientadora de D3, da característica de Adequação Funcional e das metas G5 e G6).*

---

## 4. Escopo da Avaliação

O escopo da avaliação foi delimitado às características e subcaracterísticas da ISO/IEC 25010 que exercem impacto direto na jornada do passageiro e nas decisões D1, D2 e D3:

- **Portabilidade:**
  - *Adaptabilidade:* Avaliação da adaptação visual da interface em diferentes resoluções de tela e da compatibilidade com versões de sistemas operacionais móveis.
  - *Instalabilidade:* Avaliação da facilidade de instalação nas lojas oficiais e da ausência de arquivos residuais no armazenamento pós-desinstalação.
- **Confiabilidade:**
  - *Maturidade:* Avaliação da taxa de sessões sem encerramentos inesperados (*crashes*) e sem congelamentos da interface (*ANRs*).
  - *Tolerância a Falhas:* Avaliação do comportamento do aplicativo perante a indisponibilidade de conexão à internet e ausência de sinal GPS.
- **Adequação Funcional:**
  - *Correção Funcional:* Avaliação do erro de tempo das previsões de chegada e da precisão posicional dos veículos e paradas no mapa.
  - *Completude Funcional:* Avaliação da cobertura de execução das tarefas essenciais e da integralidade do catálogo de linhas e itinerários frente aos dados oficiais da Semob-DF.
  - *Pertinência Funcional:* Selecionada como **critério transversal, sem métrica própria**: delimita os fluxos e tarefas que compõem o catálogo essencial avaliado (G6 / M6.1). Não é medida diretamente, pois julgar a adequação de uma função ao uso do passageiro exige avaliação subjetiva em uso contínuo, o que foge da avaliação técnica de caixa preta adotada na Fase 2.

---

## 5. Limites da Avaliação

Os resultados obtidos refletem exclusivamente o comportamento observado na versão de produção do aplicativo **DF no Ponto** disponível durante o período de coleta de dados definido no projeto.

Alterações posteriores na base de dados da Semob-DF, manutenções em servidores de API externos, atualizações de versão do aplicativo ou modificações na frota operante poderão alterar ou invalidar parcialmente as conclusões empíricas desta avaliação.

A identificação da versão avaliada e as fronteiras do escopo (o que está dentro e fora da avaliação) estão em [Descrição do Produto](3-descricao.md#4-alvo-da-avaliacao).

---

## 6. Alinhamento com os Objetivos de Desenvolvimento Sustentável (ODS)

### 6.1. Seleção e Delimitação

A seleção considera a função do **aplicativo Android** e o que as métricas conseguem observar. Adota-se o **ODS 11 — Cidades e Comunidades Sustentáveis**, especificamente a **meta 11.2**, por sua relação com o acesso de todos ao transporte público e a atenção às necessidades de grupos vulneráveis, conforme a [ONU Brasil](https://brasil.un.org/pt-br/sdgs/11).

### 6.2. Contribuição Técnica para a Meta 11.2

O DF no Ponto apoia o planejamento das viagens por meio da consulta de linhas, horários e paradas. A avaliação verifica as condições técnicas desse apoio: **D1 / QN1** trata do acesso ao aplicativo; **D2 / QN2**, da estabilidade e do tratamento de falhas; e **D3 / QN3**, da correção e da completude das informações.

O vínculo com a meta 11.2 é de **apoio informacional ao transporte público**. Os ensaios não demonstram aumento de passageiros, redução de emissões, melhoria da segurança viária ou atendimento integral dos grupos vulneráveis. Compatibilidade com aparelhos também não equivale a uma avaliação de acessibilidade para pessoas com deficiência.

O [mapeamento das 12 métricas GQM para a meta 11.2](../fase2/rastreabilidade-diagrama%20GQM.md#21-relacao-das-metricas-com-a-meta-112) explicita a evidência técnica de cada grupo e distingue essas medidas do indicador oficial da ONU.

---

## 7. Referências Bibliográficas

- **ISO/IEC 25010:2023.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*.
- **ISO/IEC 25040:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.
- **ORGANIZAÇÃO DAS NAÇÕES UNIDAS (ONU BRASIL).** *Objetivo 11 — Cidades e comunidades sustentáveis*, meta 11.2. Disponível em: <https://brasil.un.org/pt-br/sdgs/11>. Acesso em: 15 nov. 2026.

---

## Histórico de Versões

| ID  | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação inicial do documento | [Bessa](https://github.com/bessazs) | 17/10/2026 | — | — |
| 02 | Atualização e alinhamento com ODS | Equipe Carol Shaw | 26/10/2026 | — | — |
| 03 | Formalização das Decisões Apoiadas (D1, D2, D3), Questões Norteadoras Transversais (QN1, QN2, QN3) e harmonização de escopo com a Fase 2 | [João Guilherme Fonseca](https://github.com/JoaoGuilherme14) | 11/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
| 04 | Esclarecimento do papel da Pertinência Funcional, correspondência Fase 1/Fase 2 com as atividades da ISO/IEC 25040 e vínculo com as fronteiras de escopo | [Pedro Ramos](https://github.com/PedroRSR) | 14/11/2026 | — | — |
| 05 | Seleção da meta 11.2 e vínculo com as métricas GQM | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 15/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 |
