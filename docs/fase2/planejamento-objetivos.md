---
sidebar_position: 1
title: Método GQM e Objetivos de Medição
description: Aplicação do paradigma Goal-Question-Metric na especificação da avaliação do aplicativo DF no Ponto a partir das premissas da Fase 1
---

# Abordagem GQM e Metas de Avaliação

A validação de qualidade do aplicativo móvel **DF no Ponto** fundamenta-se nas diretrizes da norma ISO/IEC 25040, que divide o ciclo de avaliação em quatro etapas centrais: estabelecimento de requisitos, especificação, projeto e execução. Na Fase 1, determinou-se a relevância do sistema para a mobilidade urbana do Distrito Federal, identificando os principais *stakeholders* e selecionando as características de qualidade prioritárias.

Esta seção consolida a Fase 2, detalhando a especificação da avaliação. O intuito é traduzir as subcaracterísticas de **Portabilidade**, **Confiabilidade** e **Adequação Funcional** em métricas concretas e mensuráveis, assegurando que o procedimento seja padronizado e passível de replicação por terceiros.

Para estruturar esse desdobramento analítico, emprega-se o framework *Goal–Question–Metric* (GQM), combinado com as definições da **ISO/IEC 25023** para métricas de qualidade de produto de software. A seguir, detalha-se o funcionamento do método, sua adaptação para o escopo do transporte público e os objetivos centrais que guiam esta etapa.

---

## 1. Fundamentos do GQM

Proposto inicialmente por Victor Basili, o modelo GQM parte da premissa fundamental de que a medição de software deve possuir um propósito estratégico claramente definido. Em vez de coletar dados de forma aleatória, o processo inicia-se com metas bem estabelecidas, desdobrando-as operacionalmente até alcançar os indicadores quantitativos. Sua arquitetura divide-se em três camadas hierárquicas:

| Camada | Componente | Aplicação Prática nesta Avaliação |
| :--- | :--- | :--- |
| Conceitual | **Objetivo** (*Goal*) | O que se pretende analisar no DF no Ponto, sob qual atributo de qualidade e sob a ótica de qual parte interessada. |
| Operacional | **Questão** (*Question*) | Interrogações analíticas cujas respostas validam o cumprimento do objetivo. Cada questão vem acompanhada de uma hipótese preditiva. |
| Quantitativo | **Métrica** (*Metric*) | Dados e índices coletados de maneira objetiva para responder diretamente às questões operacionais. |

O fluxo de análise opera de forma bidirecional: a definição desce conceitualmente até as métricas, enquanto a interpretação na Fase 4 ascende dos dados brutos para verificar o alcance dos objetivos estabelecidos. 

---

## 2. Visão Geral do Planejamento GQM

Para abranger a complexidade operacional do **DF no Ponto**, o escopo foi desdobrado em **6 objetivos de medição** (*Goals*), estruturados em conformidade com as decisões apoiadas e a norma ISO/IEC 25010:

| Objetivo | Característica ISO/IEC 25010 | Decisão Apoiada | Questões | Métricas |
| :--- | :--- | :---: | :---: | :---: |
| **G1** | Portabilidade (Adaptabilidade) | D1 | Q1.1, Q1.2 | M1.1, M1.2 |
| **G2** | Portabilidade (Instalabilidade) | D1 | Q2.1, Q2.2 | M2.1, M2.2 |
| **G3** | Confiabilidade (Maturidade) | D2 | Q3.1, Q3.2 | M3.1, M3.2 |
| **G4** | Confiabilidade (Tolerância a falhas) | D2 | Q4.1, Q4.2 | M4.1, M4.2 |
| **G5** | Adequação funcional (Correção) | D3 | Q5.1, Q5.2 | M5.1, M5.2 |
| **G6** | Adequação funcional (Completude) | D3 | Q6.1, Q6.2 | M6.1, M6.2 |
| **Total** | **3 características** | **3 decisões** | **12 questões** | **12 métricas** |

---

## 3. Metas de Medição (Objetivos GQM)

Os objetivos de medição foram redigidos com base nos templates formais da literatura da área, refletindo diretamente as prioridades mapeadas na Fase 1 para o ecossistema do DF no Ponto:

### G1 — Portabilidade (Adaptabilidade)
| Parâmetro do Template | Especificação do Alvo |
| :--- | :--- |
| **Analisar** | o aplicativo móvel DF no Ponto em diferentes arquiteturas de hardware e resoluções de tela |
| **com a finalidade de** | compreender o comportamento adaptativo da interface gráfica |
| **no que se refere à** | Portabilidade (subcaracterística de Adaptabilidade) |
| **do ponto de vista de** | usuários finais e cidadãos que utilizam variados modelos de smartphones |
| **no contexto de** | testes executados em múltiplos dispositivos físicos e simuladores de ambiente móvel |

### G2 — Portabilidade (Instalabilidade)
| Parâmetro do Template | Especificação do Alvo |
| :--- | :--- |
| **Analisar** | o processo de empacotamento, instalação e remoção do DF no Ponto |
| **com a finalidade de** | avaliar a eficiência dos arquivos de distribuição nas lojas oficiais |
| **no que se refere à** | Portabilidade (subcaracterística de Instalabilidade) |
| **do ponto de vista de** | usuários finais e equipes de suporte técnico |
| **no contexto de** | ciclos limpos de instalação e desinstalação em dispositivos de teste |

### G3 — Confiabilidade (Maturidade)
| Parâmetro do Template | Especificação do Alvo |
| :--- | :--- |
| **Analisar** | a estabilidade de execução e a frequência de travamentos do DF no Ponto |
| **com a finalidade de** | compreender o nível de robustez contra falhas abruptas de software |
| **no que se refere à** | Confiabilidade (subcaracterística de Maturidade) |
| **do ponto de vista de** | passageiros em trânsito diário |
| **no contexto de** | sessões de uso contínuo e navegação ativa pelas funcionalidades do app |

### G4 — Confiabilidade (Tolerância a Falhas)
| Parâmetro do Template | Especificação do Alvo |
| :--- | :--- |
| **Analisar** | a resiliência operacional do DF no Ponto perante instabilidades externas |
| **com a finalidade de** | avaliar o comportamento do sistema diante de interrupções de conectividade |
| **no que se refere à** | Confiabilidade (subcaracterística de Tolerância a Falhas) |
| **do ponto de vista de** | passageiros sujeitos a áreas de sombra e sinal de rede deficiente |
| **no contexto de** | simulações controladas de queda de internet e ausência de sinal GPS |

### G5 — Adequação Funcional (Correção)
| Parâmetro do Template | Especificação do Alvo |
| :--- | :--- |
| **Analisar** | a exatidão das previsões de horários e geolocalização da frota |
| **com a finalidade de** | verificar a precisão dos dados entregues aos passageiros |
| **no que se refere à** | Adequação Funcional (subcaracterística de Correção) |
| **do ponto de vista de** | cidadãos do Distrito Federal que dependem de pontualidade |
| **no contexto de** | validação cruzada entre as informações do app e a operação real nas ruas |

### G6 — Adequação Funcional (Completude)
| Parâmetro do Template | Especificação do Alvo |
| :--- | :--- |
| **Analisar** | a cobertura de rotas, linhas e ferramentas de busca do DF no Ponto |
| **com a finalidade de** | certificar se o conjunto de funções atende integralmente às demandas de mobilidade |
| **no que se refere à** | Adequação Funcional (subcaracterística de Completude) |
| **do ponto de vista de** | cidadãos do Distrito Federal planejando trajetos complexos pela capital |
| **no contexto de** | execução integral do catálogo de tarefas essenciais mapeadas na Fase 1 |

---

## 4. Formulação Operacional das Questões, Hipóteses e *Abstraction Sheets*

O desdobramento das metas conceituais gerou questionamentos específicos focados nas subcaracterísticas mapeadas pela ISO/IEC 25010. Abaixo, cada questão operacional é apresentada em conjunto com sua respectiva hipótese preditiva. Na sequência, as *Abstraction Sheets* registram o *baseline* e os fatores externos capazes de influenciar as medições na Fase 4.

### Matriz de Questões e Hipóteses Operacionais

| Objetivo / Eixo | ID | Questão Operacional (*Question*) | Hipótese Preditiva (*Hypothesis*) |
| :--- | :--- | :--- | :--- |
| **G1 — Portabilidade (Adaptabilidade)** | **Q1.1** | A interface gráfica se redimensiona sem sobreposições em telas compactas? | **H1.1:** Espera-se que telas abaixo de 5 polegadas apresentem sobreposições pontuais de elementos na camada do mapa. |
| | **Q1.2** | O aplicativo executa sem erros críticos de compatibilidade em sistemas legados? | **H1.2:** Espera-se pleno funcionamento nas versões testadas do Android, sem falhas que impeçam o uso. |
| **G2 — Portabilidade (Instalabilidade)** | **Q2.1** | O processo de instalação nas lojas oficiais ocorre sem fricção ou corrompimento? | **H2.1:** Espera-se sucesso de 100% nas instalações limpas a partir dos pacotes de distribuição oficiais. |
| | **Q2.2** | O aplicativo remove totalmente seus dados temporários após a desinstalação? | **H2.2:** Espera-se que o sistema deixe vestígios menores de arquivos em cache no armazenamento interno. |
| **G3 — Confiabilidade (Maturidade)** | **Q3.1** | O aplicativo evita encerramentos forçados (*crashes*) durante sessões ativas? | **H3.1:** Espera-se alta estabilidade geral, com eventuais falhas concentradas em picos de requisição de dados. |
| | **Q3.2** | O sistema previne congelamentos prolongados de tela (*ANRs*)? | **H3.2:** Espera-se ocorrência pontual de travamentos leves ao sincronizar grandes bases geográficas de linhas. |
| **G4 — Confiabilidade (Tolerância a Falhas)** | **Q4.1** | O aplicativo trata de forma adequada quedas momentâneas de conexão com a internet? | **H4.1:** Espera-se que o app apresente telas de carregamento infinito ou falhe ao carecer de um modo *offline* robusto. |
| | **Q4.2** | O sistema reage apropriadamente à ausência ou desativação de sinal de GPS? | **H4.2:** Espera-se que o software emita alertas visuais claros orientando o usuário a reativar os serviços de localização. |
| **G5 — Adequação Funcional (Correção)** | **Q5.1** | As previsões de horários de chegada dos ônibus refletem com precisão a realidade? | **H5.1:** Espera-se uma margem de divergência tolerável de poucos minutos entre a previsão virtual e a chegada física. |
| | **Q5.2** | A geolocalização dos veículos exibida no mapa coincide com a posição espacial real? | **H5.2:** Espera-se exatidão satisfatória, sujeita a limitações externas de atualização de hardware embarcado. |
| **G6 — Adequação Funcional (Completude)** | **Q6.1** | O catálogo de fluxos e tarefas essenciais executa de ponta a ponta sem barreiras? | **H6.1:** Espera-se que os módulos principais de busca de rotas e salvamento de favoritos operem sem falhas estruturais em todos os cenários de teste. |
| | **Q6.2** | A base de dados de linhas e itinerários está plenamente sincronizada com a Semob? | **H6.2:** Espera-se cobertura integral e correta das principais linhas troncais de ônibus cadastradas no sistema do Distrito Federal. |

---

### *Abstraction Sheets* por Agrupamento de Qualidade

#### A. Portabilidade (G1 e G2)
| Foco de Qualidade (*Baseline* Esperada) | Fatores de Variação e Impacto |
| :--- | :--- |
| Telas abaixo de 5 polegadas podem sofrer sobreposição de elementos no mapa · A instalação via loja oficial ocorre sem fricção, mas podem persistir arquivos residuais de cache após a remoção. | • **Modos de acessibilidade do SO** (ex: fontes ampliadas) alteram o dimensionamento visual da UI.<br>• **Permissões de hardware negadas** no primeiro uso podem ser interpretadas erroneamente como barreiras de instalação. |

#### B. Confiabilidade (G3 e G4)
| Foco de Qualidade (*Baseline* Esperada) | Fatores de Variação e Impacto |
| :--- | :--- |
| Estima-se que picos de acesso sobrecarreguem requisições, gerando índices pontuais de ANR · O aplicativo carece de um modo *offline* robusto, resultando em tempos de espera excessivos sob redes móveis instáveis. | • **Indisponibilidade temporária da API da Semob** paralisa o front-end, gerando falsos positivos de falha interna no cliente.<br>• **Modos de economia de energia** ativados no dispositivo podem suspender serviços de localização em segundo plano. |

#### C. Adequação Funcional (G5 e G6)
| Foco de Qualidade (*Baseline* Esperada) | Fatores de Variação e Impacto |
| :--- | :--- |
| Espera-se uma margem de divergência tolerável entre as previsões e a chegada física dos coletivos · Os módulos principais de busca e salvamento de favoritos operam sem falhas estruturais em 100% dos testes. | • **Variáveis operacionais urbanas** (congestionamentos severos ou falhas físicas em rastreadores embarcados nos ônibus) distorcem a precisão do tempo estimado, refletindo limitações de infraestrutura externa e não de código. |

---

## 5. Referências Bibliográficas

- BASILI, Victor R.; CALDIERA, Gianluigi; ROMBACH, H. Dieter. *The Goal Question Metric Approach*. Encyclopedia of Software Engineering, 1994.
- ISO/IEC 25010:2023. *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*.
- ISO/IEC 25023. *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*.
- ISO/IEC 25040. *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.
- Material Didático da Disciplina de Qualidade de Software 1. FCTE/Universidade de Brasília (UnB), 2026.

---

## Histórico de Versões

| ID  | Descrição                    | Autor                               | Data       | Revisor                              | Data     |
| :-: | :--------------------------- | :---------------------------------- | :--------- | :----------------------------------- | :------- |
| 01  | Criação inicial do documento | [Cristiano](https://github.com/CristianoMoraiss) | 31/10/2026 | [Bessa](https://github.com/bessazs) | 31/10/2026 |