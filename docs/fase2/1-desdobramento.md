## 1. Desdobramento GQM e Critérios de Julgamento

### 2.1. Foco 1: Portabilidade (Adaptabilidade)
O foco em adaptabilidade visa garantir que o aplicativo móvel governamental funcione de maneira fluida em diferentes tamanhos de tela e resoluções, prevenindo quebra de layout que inviabilize o uso de mapas.

* **Objetivo (Goal 1):** Analisar a Adaptabilidade com o propósito de avaliar com relação a quebras de interface visual do ponto de vista do usuário final no contexto do aplicativo móvel DF no Ponto.
* **Questão (Q1.1):** O layout do aplicativo se ajusta corretamente em diferentes tamanhos de tela e orientações sem sobrepor elementos vitais?
* **Hipótese (H1.1):** O layout sofre distorções ou quebras de elementos de interface em dispositivos com telas menores (ex: abaixo de 5 polegadas), mas opera normalmente em telas padrão atuais.
* **Métrica (M1.1):** Taxa de Falhas de Adaptação de Layout (TFAL). Mede o percentual de telas inspecionadas que apresentam problemas graves de renderização (sobreposição, sumiço de botões, distorção de mapa).
    * **Fórmula:** `TFAL = (Telas com falha / Total de telas avaliadas) * 100`
* **Critérios de Pontuação:**
    * **Excelente:** TFAL = 0% (Nenhuma tela apresenta falha)
    * **Bom:** 0% < TFAL ≤ 5% (Falhas raras e não impeditivas)
    * **Satisfatório:** 5% < TFAL ≤ 15% (Falhas perceptíveis, requerem ajustes)
    * **Insuficiente:** TFAL > 15% (Uso seriamente comprometido)

### 2.2. Foco 2: Confiabilidade (Maturidade e Tolerância a Falhas)
Garantir que o sistema não feche de forma abrupta durante picos de acesso ou falhas na rede de dados móveis.

* **Objetivo (Goal 2):** Analisar a Confiabilidade com o propósito de avaliar com relação à ocorrência de travamentos e recuperação de falhas do ponto de vista do passageiro em trânsito no contexto do aplicativo DF no Ponto.
* **Questão (Q2.1):** Qual a frequência de travamentos inesperados (crashes) do aplicativo durante a execução de buscas rotineiras por linhas e mapas?
* **Hipótese (H2.1):** O aplicativo apresenta travamentos esporádicos (superior a 5% das tentativas) ao tentar carregar o GPS em tempo real.
* **Métrica (M2.1):** Taxa de Maturidade contra Travamentos (TMT). Mede a porcentagem de execuções de busca que resultam no fechamento forçado (crash) do aplicativo.
    * **Fórmula:** `TMT = (Nº de crashes / Nº total de execuções de teste) * 100`
* **Critérios de Pontuação:**
    * **Excelente:** TMT = 0% (Estabilidade total)
    * **Bom:** 0% < TMT ≤ 2%
    * **Satisfatório:** 2% < TMT ≤ 5%
    * **Insuficiente:** TMT > 5% (Risco alto de frustração do usuário)

* **Questão (Q2.2):** Como o aplicativo reage à perda repentina ou oscilação severa de conexão com a internet (3G/4G)?
* **Hipótese (H2.2):** O aplicativo não trata adequadamente exceções de timeout, resultando em telas de carregamento infinito ou fechamento inesperado ao invés de exibir mensagens de erro amigáveis.
* **Métrica (M2.2):** Taxa de Tratamento de Exceções de Rede (TTER). Mede o percentual de falhas de rede simuladas que são interceptadas e tratadas com mensagens de aviso, sem corromper a sessão do usuário.
    * **Fórmula:** `TTER = (Nº de tratamentos corretos / Nº de falhas de rede simuladas) * 100`
* **Critérios de Pontuação:**
    * **Excelente:** TTER = 100% (Todas as falhas tratadas graciosamente)
    * **Bom:** 85% ≤ TTER < 100%
    * **Satisfatório:** 70% ≤ TTER < 85%
    * **Insuficiente:** TTER < 70% (Tolerância a falhas muito baixa)

### 2.3. Foco 3: Adequação Funcional
Verificação se as funções vitais prometidas (mapa, horários, busca) entregam resultados corretos, completos e pertinentes à mobilidade urbana.

* **Objetivo (Goal 3):** Analisar a Adequação Funcional com o propósito de avaliar com relação à exatidão de dados e completude das ferramentas do ponto de vista do cidadão no contexto do aplicativo DF no Ponto.
* **Questão (Q3.1):** Os dados geográficos e os horários previstos retornados pelas buscas correspondem à realidade das frotas? (Correção Funcional)
* **Hipótese (H3.1):** Existe uma latência ou dessincronização que gera erros acima de 5 minutos na previsão de chegada da maior parte das linhas analisadas.
* **Métrica (M3.1):** Divergência Média de Precisão de Horários (DMPH). Mede o erro médio absoluto, em minutos, entre o horário previsto pelo app e a chegada/partida real observada na parada.
    * **Fórmula:** `DMPH = (Σ |Horário Real - Horário Previsto|) / Total de observações`
* **Critérios de Pontuação:**
    * **Excelente:** DMPH ≤ 2 minutos (Altamente exato)
    * **Bom:** 2 min < DMPH ≤ 5 minutos
    * **Satisfatório:** 5 min < DMPH ≤ 10 minutos
    * **Insuficiente:** DMPH > 10 minutos (Dados não confiáveis para o usuário)

* **Questão (Q3.2):** Todas as funcionalidades vitais documentadas (Busca, Favoritos, Mapa em Tempo Real, Alertas) estão inteiramente operacionais? (Completude)
* **Hipótese (H3.2):** O módulo de gestão de "Favoritos" apresenta falhas de completude e não retém os dados salvos entre sessões.
* **Métrica (M3.2):** Grau de Completude de Funcionalidades (GCF). Razão entre as funcionalidades que executam com sucesso 100% de seus fluxos básicos e o total de funcionalidades vitais mapeadas na documentação.
    * **Fórmula:** `GCF = (Nº de funções vitais plenamente operacionais / Total de funções vitais) * 100`
* **Critérios de Pontuação:**
    * **Excelente:** GCF = 100% (Todas as funções operam como especificado)
    * **Bom:** 90% ≤ GCF < 100%
    * **Satisfatório:** 80% ≤ GCF < 90%
    * **Insuficiente:** GCF < 80% (Falha grave de completude)