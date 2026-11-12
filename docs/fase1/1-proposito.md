# Fase 1 - Propósito da Avaliação

## 1. Introdução

Este documento apresenta o propósito da avaliação de qualidade do aplicativo **DF no Ponto**, tomando como base o modelo de qualidade da norma **ISO/IEC 25010** e o processo de avaliação estabelecido pela **ISO/IEC 25040**. A investigação concentra-se nas características mais críticas para um aplicativo móvel de utilidade pública: **Portabilidade**, **Confiabilidade** e **Adequação Funcional**, desdobradas em suas subcaracterísticas prioritárias.

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
  - *Pertinência Funcional:* Atua de forma transversal delimitando os fluxos e tarefas que compõem o catálogo essencial avaliado.

---

## 5. Limites da Avaliação

Os resultados obtidos refletem exclusivamente o comportamento observado na versão de produção do aplicativo **DF no Ponto** disponível durante o período de coleta de dados definido no projeto.

Alterações posteriores na base de dados da Semob-DF, manutenções em servidores de API externos, atualizações de versão do aplicativo ou modificações na frota operante poderão alterar ou invalidar parcialmente as conclusões empíricas desta avaliação.

---

## 6. Alinhamento com os Objetivos de Desenvolvimento Sustentável (ODS)

A avaliação alinha-se diretamente à agenda global das Nações Unidas (ONU) para 2030, apoiando as seguintes metas:

### ODS 11 — Cidades e Comunidades Sustentáveis
O DF no Ponto atua como elemento central de acesso à mobilidade urbana no Distrito Federal.
- **Meta 11.2:** *Até 2030, proporcionar o acesso a sistemas de transporte seguros, acessíveis, sustentáveis e a preço acessível para todos, melhorando a segurança rodoviária por meio da expansão dos transportes públicos.*  
  *Conexão com a Avaliação:* Ao validar a correção dos horários e itinerários (D3 / QN3) e garantir a acessibilidade em dispositivos de baixo custo (D1 / QN1), a avaliação incentiva a utilização confiável do transporte coletivo.

### ODS 9 — Indústria, Inovação e Infraestrutura
O aplicativo representa o componente de tecnologia da informação na infraestrutura de serviços urbanos de Brasília.
- **Meta 9.1:** *Desenvolver infraestrutura de qualidade, confiável, sustentável e resiliente, para apoiar o desenvolvimento econômico e o bem-estar humano, com foco no acesso equitativo para todos.*  
  *Conexão com a Avaliação:* A investigação da resiliência perante falhas de conexão e tolerância a quedas de GPS (D2 / QN2) garante uma infraestrutura digital robusta e confiável para a população.

---

## 7. Referências Bibliográficas

- **ISO/IEC 25010:2023.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*.
- **ISO/IEC 25040:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.
- **ORGANIZAÇÃO DAS NAÇÕES UNIDAS (ONU).** *Objetivos de Desenvolvimento Sustentável (ODS)*. Disponível em: <https://brasil.un.org/pt-br/sdgs>. Acesso em: 17 out. 2026.
- **INSTITUTO DE PESQUISA ECONÔMICA APLICADA (IPEA).** *ODS 9 e ODS 11*. Disponível em: <https://www.ipea.gov.br/ods/>. Acesso em: 17 out. 2026.

---

## Histórico de Versões

| ID  | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação inicial do documento | [Bessa](https://github.com/bessazs) | 17/10/2026 | — | — |
| 02 | Atualização e alinhamento com ODS | Equipe Carol Shaw | 26/10/2026 | — | — |
| 03 | Formalização das Decisões Apoiadas (D1, D2, D3), Questões Norteadoras Transversais (QN1, QN2, QN3) e harmonização de escopo com a Fase 2 | [João Guilherme Fonseca](https://github.com/JoaoGuilherme14) | 11/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 11/11/2026 |
