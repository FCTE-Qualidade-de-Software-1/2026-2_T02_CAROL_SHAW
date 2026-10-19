# Fase 2 - Definição de Métricas GQM

**Projeto:** DF no Ponto[cite: 2]
**Disciplina:** Qualidade de Software (2026.2)[cite: 2]
**Modelo Base:** ISO/IEC 25010[cite: 2]

## 1. Introdução
Esta fase estabelece o planejamento de medição para o aplicativo DF no Ponto utilizando a abordagem Goal-Question-Metric (GQM)[cite: 2]. O objetivo é desdobrar os requisitos de qualidade identificados na Fase 1 (Portabilidade, Confiabilidade e Adequação Funcional) em metas claras, questões operacionais, hipóteses e métricas quantificáveis, fornecendo uma base objetiva para os julgamentos e testes subsequentes[cite: 2].

## 2. Desdobramento GQM e Critérios de Julgamento

### 2.1. Foco 1: Portabilidade (Adaptabilidade)
O foco em adaptabilidade visa garantir que o aplicativo móvel governamental funcione de maneira fluida em diferentes tamanhos de tela e resoluções, prevenindo quebra de layout que inviabilize o uso de mapas[cite: 2].

* **Objetivo (Goal 1):** Analisar a Adaptabilidade com o propósito de avaliar com relação a quebras de interface visual do ponto de vista do usuário final no contexto do aplicativo móvel DF no Ponto[cite: 2].
* **Questão (Q1.1):** O layout do aplicativo se ajusta corretamente em diferentes tamanhos de tela e orientações sem sobrepor elementos vitais?[cite: 2]
* **Hipótese (H1.1):** O layout sofre distorções ou quebras de elementos de interface em dispositivos com telas menores (ex: abaixo de 5 polegadas), mas opera normalmente em telas padrão atuais[cite: 2].
* **Métrica (M1.1):** Taxa de Falhas de Adaptação de Layout (TFAL)[cite: 2]. Mede o percentual de telas inspecionadas que apresentam problemas graves de renderização (sobreposição, sumiço de botões, distorção de mapa)[cite: 2].
    * **Fórmula:** `TFAL = (Telas com falha / Total de telas avaliadas) * 100`[cite: 2]
* **Critérios de Pontuação:**
    * **Excelente:** TFAL = 0% (Nenhuma tela apresenta falha)[cite: 2]
    * **Bom:** 0% < TFAL ≤ 5% (Falhas raras e não impeditivas)[cite: 2]
    * **Satisfatório:** 5% < TFAL ≤ 15% (Falhas perceptíveis, requerem ajustes)[cite: 2]
    * **Insuficiente:** TFAL > 15% (Uso seriamente comprometido)[cite: 2]

### 2.2. Foco 2: Confiabilidade (Maturidade e Tolerância a Falhas)
Garantir que o sistema não feche de forma abrupta durante picos de acesso ou falhas na rede de dados móveis[cite: 3].

* **Objetivo (Goal 2):** Analisar a Confiabilidade com o propósito de avaliar com relação à ocorrência de travamentos e recuperação de falhas do ponto de vista do passageiro em trânsito no contexto do aplicativo DF no Ponto[cite: 3].
* **Questão (Q2.1):** Qual a frequência de travamentos inesperados (crashes) do aplicativo durante a execução de buscas rotineiras por linhas e mapas?[cite: 3]
* **Hipótese (H2.1):** O aplicativo apresenta travamentos esporádicos (superior a 5% das tentativas) ao tentar carregar o GPS em tempo real[cite: 3].
* **Métrica (M2.1):** Taxa de Maturidade contra Travamentos (TMT)[cite: 3]. Mede a porcentagem de execuções de busca que resultam no fechamento forçado (crash) do aplicativo[cite: 3].
    * **Fórmula:** `TMT = (Nº de crashes / Nº total de execuções de teste) * 100`[cite: 3]
* **Critérios de Pontuação:**
    * **Excelente:** TMT = 0% (Estabilidade total)[cite: 3]
    * **Bom:** 0% < TMT ≤ 2%[cite: 3]
    * **Satisfatório:** 2% < TMT ≤ 5%[cite: 3]
    * **Insuficiente:** TMT > 5% (Risco alto de frustração do usuário)[cite: 3]

* **Questão (Q2.2):** Como o aplicativo reage à perda repentina ou oscilação severa de conexão com a internet (3G/4G)?[cite: 3]
* **Hipótese (H2.2):** O aplicativo não trata adequadamente exceções de timeout, resultando em telas de carregamento infinito ou fechamento inesperado ao invés de exibir mensagens de erro amigáveis[cite: 3].
* **Métrica (M2.2):** Taxa de Tratamento de Exceções de Rede (TTER)[cite: 3]. Mede o percentual de falhas de rede simuladas que são interceptadas e tratadas com mensagens de aviso, sem corromper a sessão do usuário[cite: 3].
    * **Fórmula:** `TTER = (Nº de tratamentos corretos / Nº de falhas de rede simuladas) * 100`[cite: 3]
* **Critérios de Pontuação:**
    * **Excelente:** TTER = 100% (Todas as falhas tratadas graciosamente)[cite: 3]
    * **Bom:** 85% ≤ TTER < 100%[cite: 3]
    * **Satisfatório:** 70% ≤ TTER < 85%[cite: 3]
    * **Insuficiente:** TTER < 70% (Tolerância a falhas muito baixa)[cite: 3]

### 2.3. Foco 3: Adequação Funcional
Verificação se as funções vitais prometidas (mapa, horários, busca) entregam resultados corretos, completos e pertinentes à mobilidade urbana[cite: 4].

* **Objetivo (Goal 3):** Analisar a Adequação Funcional com o propósito de avaliar com relação à exatidão de dados e completude das ferramentas do ponto de vista do cidadão no contexto do aplicativo DF no Ponto[cite: 4].
* **Questão (Q3.1):** Os dados geográficos e os horários previstos retornados pelas buscas correspondem à realidade das frotas? (Correção Funcional)[cite: 4]
* **Hipótese (H3.1):** Existe uma latência ou dessincronização que gera erros acima de 5 minutos na previsão de chegada da maior parte das linhas analisadas[cite: 4].
* **Métrica (M3.1):** Divergência Média de Precisão de Horários (DMPH)[cite: 4]. Mede o erro médio absoluto, em minutos, entre o horário previsto pelo app e a chegada/partida real observada na parada[cite: 4].
    * **Fórmula:** `DMPH = (Σ |Horário Real - Horário Previsto|) / Total de observações`[cite: 4]
* **Critérios de Pontuação:**
    * **Excelente:** DMPH ≤ 2 minutos (Altamente exato)[cite: 4]
    * **Bom:** 2 min < DMPH ≤ 5 minutos[cite: 4]
    * **Satisfatório:** 5 min < DMPH ≤ 10 minutos[cite: 4]
    * **Insuficiente:** DMPH > 10 minutos (Dados não confiáveis para o usuário)[cite: 4]

* **Questão (Q3.2):** Todas as funcionalidades vitais documentadas (Busca, Favoritos, Mapa em Tempo Real, Alertas) estão inteiramente operacionais? (Completude)[cite: 4]
* **Hipótese (H3.2):** O módulo de gestão de "Favoritos" apresenta falhas de completude e não retém os dados salvos entre sessões[cite: 4].
* **Métrica (M3.2):** Grau de Completude de Funcionalidades (GCF)[cite: 4]. Razão entre as funcionalidades que executam com sucesso 100% de seus fluxos básicos e o total de funcionalidades vitais mapeadas na documentação[cite: 4].
    * **Fórmula:** `GCF = (Nº de funções vitais plenamente operacionais / Total de funções vitais) * 100`[cite: 4]
* **Critérios de Pontuação:**
    * **Excelente:** GCF = 100% (Todas as funções operam como especificado)[cite: 4]
    * **Bom:** 90% ≤ GCF < 100%[cite: 4]
    * **Satisfatório:** 80% ≤ GCF < 90%[cite: 4]
    * **Insuficiente:** GCF < 80% (Falha grave de completude)[cite: 4]

## 3. Representação Gráfica da Hierarquia GQM
O diagrama abaixo ilustra a cadeia de rastreabilidade (nível conceitual, operacional e quantitativo) estabelecida para nortear a execução da Fase 4[cite: 5]:

* **NÍVEL CONCEITUAL (OBJETIVO):** Goal 2: Avaliar a Confiabilidade (Maturidade e Tolerância a Falhas) para reduzir frustrações no planejamento de viagens[cite: 5].
    * **NÍVEL OPERACIONAL (QUESTÃO):** Q2.1: Qual a frequência de travamentos inesperados do aplicativo?[cite: 5]
        * **NÍVEL QUANTITATIVO (MÉTRICA):** M2.1: Taxa de Maturidade contra Travamentos (TMT) [%][cite: 5]
    * **NÍVEL OPERACIONAL (QUESTÃO):** Q2.2: Como o aplicativo reage à perda repentina de conexão?[cite: 5]
        * **NÍVEL QUANTITATIVO (MÉTRICA):** M2.2: Taxa de Tratamento de Exceções de Rede (TTER) [%][cite: 5]

> **Nota metodológica:** A hierarquia apresentada acima segue o mesmo padrão de desdobramento para os Objetivos 1 (Portabilidade) e 3 (Adequação Funcional), garantindo que todo dado coletado na Fase 4 (Métrica) responda a uma hipótese e questão clara (Operacional), retroalimentando os objetivos centrais do projeto (Conceitual)[cite: 5].