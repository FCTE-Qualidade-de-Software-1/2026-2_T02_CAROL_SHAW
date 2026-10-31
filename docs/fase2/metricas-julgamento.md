---
sidebar_position: 2
title: Métricas e Julgamento
description: Detalhamento das métricas baseadas na ISO/IEC 25023 e critérios de julgamento para a avaliação do aplicativo DF no Ponto
---

# Métricas e Critérios de Julgamento

Cada métrica especificada responde diretamente a uma questão da hierarquia GQM, fundamentando-se nas medidas padronizadas pela **ISO/IEC 25023**. Com exceção das métricas baseadas em tempo ou desvio absoluto, a maioria utiliza razões de contagem normalizadas entre 0 e 1, onde valores mais próximos de 1 indicam melhor desempenho.

## Detalhamento das Métricas

A tabela a seguir consolida a especificação técnica de cada métrica utilizada no projeto, detalhando sua definição, fórmula, fonte dos dados, procedimento de coleta e forma de interpretação.

| Métrica | Definição e cálculo | Fonte dos dados | Procedimento de coleta | Interpretação |
| :--- | :--- | :--- | :--- | :--- |
| **M1.1 - Adaptabilidade de Hardware (Telas)** *(Q1.1)* | M1.1 = $Ts / Tt$<br>*(Telas executadas sem sobreposição ou distorção impeditiva / Total de telas testadas em diferentes resoluções)* | Telas do aplicativo executadas em emuladores e dispositivos físicos de diferentes dimensões (4", 5", 6", tablets) | Inspeção visual da interface em múltiplos fatores de forma de hardware | Maior é melhor (escala de 0 a 1 ou %) |
| **M1.2 - Adaptabilidade de SO** *(Q1.2)* | M1.2 = $Os / Ot$<br>*(Versões de SO em que o app funciona sem erros de compatibilidade / Total de versões de Android/iOS testadas)* | Relatório de testes de compatibilidade em sistemas operacionais móveis | Execução de fluxos críticos em diferentes versões suportadas de SO (ex: Android 9 a 13) | Maior é melhor (escala de 0 a 1 ou %) |
| **M2.1 - Sucesso de Instalação** *(Q2.1)* | M2.1 = $Is / It$<br>*(Instalações concluídas na primeira tentativa sem erro / Total de tentativas de instalação)* | Logs de download e instalação nas lojas oficiais ou pacotes binários | Execução de ciclos controlados de instalação e registro de falhas de empacotamento | Maior é melhor (escala de 0 a 1 ou %) |
| **M2.2 - Resíduo Pós-Desinstalação** *(Q2.2)* | M2.2 = $1 - (Dr / Dt)$<br>*(1 - Tentativas que deixaram arquivos órfãos de cache/dados no armazenamento / Total de desinstalações)* | Gerenciamento de arquivos e armazenamento interno do sistema operacional pós-remoção | Inspeção do diretório de dados do app após a desinstalação limpa em ambiente de teste | Maior é melhor (escala de 0 a 1 ou %) |
| **M3.1 - Densidade de Falhas (Crashes)** *(Q3.1)* | M3.1 = $1 - (Fc / Et)$<br>*(1 - Número de encerramentos forçados / Número total de sessões de teste executadas)* | Relatórios de execução, logs de sistema e ferramentas de monitoramento de crash | Contagem de interrupções abruptas do app durante sessões padronizadas de navegação | Maior é melhor (escala de 0 a 1 ou %) |
| **M3.2 - Densidade de ANRs (Congelamentos)** *(Q3.2)* | M3.2 = $1 - (Fa / Et)$<br>*(1 - Número de ocorrências de tela travada por mais de 5 segundos / Total de sessões executadas)* | Logs de desempenho e interações de interface travada | Monitoramento de respostas da UI durante testes de carga e uso contínuo | Maior é melhor (escala de 0 a 1 ou %) |
| **M4.1 - Evitação de Quebra (Conexão)** *(Q4.1)* | M4.1 = $Te / Tf$<br>*(Tratamentos de exceção corretos exibindo aviso amigável / Total de falhas de rede induzidas)* | Comportamento visual da interface sob cortes de conectividade | Desligamento simulado de 4G/Wi-Fi durante consultas de itinerário e observação do feedback ao usuário | Maior é melhor (escala de 0 a 1 ou %) |
| **M4.2 - Tratamento de Perda de GPS** *(Q4.2)* | M4.2 = $Gs / Gt$<br>*(Vezes que o app reagiu apropriadamente à desativação do sinal de localização / Total de desativações induzidas)* | Mensagens de alerta e comportamento de fallback do mapa | Desativação induzida do GPS do aparelho durante o rastreamento em tempo real | Maior é melhor (escala de 0 a 1 ou %) |
| **M5.1 - Precisão de Tempo** *(Q5.1)* | M5.1 = $\text{mediana}(\lvert \text{Horário Observado} - \text{Horário Previsto} \rvert)$<br>*(Mediana do erro absoluto em minutos)* | Registros comparativos de tempo real coletados em campo versus dados fornecidos pelo app | Cronometragem da chegada física dos ônibus em paradas de teste confrontada com a estimativa da API | Menor é melhor (unidade em minutos de desvio) |
| **M5.2 - Correção de Dados (Mapa)** *(Q5.2)* | M5.2 = $Ps / Pt$<br>*(Paradas/veículos verificados no mapa na posição exata / Total verificado em amostra)* | Inspeção cartográfica cruzada com a realidade física das vias do DF | Validação *in loco* da posição dos pontos de parada e geolocalização dos ônibus exibidos | Maior é melhor (escala de 0 a 1 ou %) |
| **M6.1 - Cobertura de Tarefas Essenciais** *(Q6.1)* | M6.1 = $1 - (Tf / Tt)$<br>*(1 - Tarefas essenciais que falham ao ser executadas / Total de tarefas do catálogo essencial)* | Relatórios de execução do catálogo de testes de usabilidade funcional | Execução pontual do conjunto de fluxos vitais do passageiro (busca de linha, rotas, favoritos) | Maior é melhor (escala de 0 a 1 ou %) |
| **M6.2 - Completude do Banco** *(Q6.2)* | M6.2 = $Lc / Lt$<br>*(Linhas e itinerários reais da Semob encontrados com sucesso no banco de dados do app / Amostra testada)* | Documentação oficial da Semob-DF comparada ao catálogo de linhas do sistema | Auditoria cruzada de uma amostra representativa de linhas de ônibus urbanas | Maior é melhor (escala de 0 a 1 ou %) |

---

## Níveis de pontuação e critérios de julgamento

Para assegurar a objetividade da avaliação, os patamares de pontuação (de 1 a 4) são definidos estritamente antes da coleta de dados em campo.

### Escala de Notas

| Nota | Nível | Significado para o Projeto DF no Ponto |
| :---: | :--- | :--- |
| **4** | Excelente | Eficácia plena; o aplicativo atende perfeitamente às expectativas do cidadão. |
| **3** | Bom | Presença de desvios menores (como pequenos atrasos toleráveis), aceitáveis no contexto de transporte público. |
| **2** | Insuficiente | O desvio afeta consideravelmente a utilidade prática; demanda plano corretivo de urgência. |
| **1** | Crítico | Inviabiliza o uso da funcionalidade; alto risco de rejeição ou abandono pelo usuário. |

### Limites de Pontuação por Métrica

| Métrica | Nota 4 (Excelente) | Nota 3 (Bom) | Nota 2 (Insuficiente) | Nota 1 (Crítico) |
| :--- | :---: | :---: | :---: | :---: |
| **M1.1 / M1.2** (Adaptabilidade) | 1,00 | ≥ 0,90 | ≥ 0,75 | < 0,75 |
| **M2.1 / M2.2** (Instalação/Desinstalação) | 1,00 | ≥ 0,95 | ≥ 0,85 | < 0,85 |
| **M3.1 / M3.2** (Crashes / ANRs) | ≥ 0,99 | ≥ 0,95 | ≥ 0,90 | < 0,90 |
| **M4.1 / M4.2** (Tolerância a Falhas) | 1,00 | ≥ 0,85 | ≥ 0,70 | < 0,70 |
| **M5.1** (Precisão de Tempo) | $\le 2$ min de erro | $\le 5$ min de erro | $\le 10$ min de erro | $> 10$ min de erro |
| **M5.2** (Correção Espacial do Mapa) | ≥ 0,95 | ≥ 0,85 | ≥ 0,70 | < 0,70 |
| **M6.1 / M6.2** (Completude e Cobertura) | 1,00 | ≥ 0,95 | ≥ 0,80 | < 0,80 |

### Julgamento dos Objetivos

O veredito de cada objetivo de medição (G1 a G6) adota o **critério conservador (pior nota obtida entre suas métricas filhas)**, evitando que falhas críticas fiquem ocultas por médias aritméticas.

| Pior nota nas métricas do objetivo | Veredito do Objetivo | Ação Recomendada |
| :--- | :--- | :--- |
| Apenas notas 3 e 4 | **Satisfeito** | Operação regular e estável. |
| Pelo menos uma nota 2 | **Satisfeito com Ressalvas** | Abertura de *issue* corretiva; não inviabiliza o uso imediato, mas exige melhoria. |
| Pelo menos uma nota 1 | **Não Satisfeito** | Funcionalidade comprometida criticamente; exige correção imediata (*hotfix*). |

---

## Referências Bibliográficas

- ISO/IEC 25023. *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*.
- FENTON, Norman; BIEMAN, James. *Software Metrics: A Rigorous and Practical Approach* (3rd Edition). CRC Press, 2014.

---

| ID  | Descrição                    | Autor                               | Data       | Revisor                              | Data     |
| :-: | :--------------------------- | :---------------------------------- | :--------- | :----------------------------------- | :------- |
| 01  | Criação inicial do documento | [Cristiano](https://github.com/CristianoMoraiss) | 31/10/2026 | [Bessa](https://github.com/bessazs) | 31/10/2026 |
