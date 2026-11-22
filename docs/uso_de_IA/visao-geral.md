# Declaração do Uso de Inteligência Artificial e Modelos de Linguagem (LLMs)

## 1. Diretrizes Éticas e Transparência

Com base nos critérios éticos da disciplina, a equipe Carol Shaw declara o uso de ferramentas de Inteligência Artificial Generativa e Large Language Models (LLMs) como assistentes de produtividade ao longo do projeto.

As ferramentas foram utilizadas como suporte técnico para:
- Estruturação inicial de seções textuais e revisão textual e gramatical;
- Formatação e conversão de dados para Markdown e LaTeX;
- Padronização de tabelas de requisitos, métricas e equações matemáticas;
- Auxílio na sintaxe de diagramas conceituais (Mermaid).

> **Supervisão Humana Contínua:** Todo o conteúdo gerado passou obrigatoriamente por verificação, validação cruzada e supervisão crítica contínua dos membros da equipe. Nenhuma decisão metodológica, julgamento de qualidade ou definição de limiares de métricas foi delegada à IA. Conforme as orientações da disciplina, ícones e ilustrações geradas por IA não foram empregados nos relatórios técnicos.

---

## 2. Ecossistema de Ferramentas Utilizadas

| Ferramenta / Modelo | Finalidade Principal | Nível de Revisão Humana |
| :--- | :--- | :--- |
| **ChatGPT (OpenAI)** | Suporte na redação inicial, adequação gramatical e formatação de texto em Markdown e LaTeX. | Revisão e validação crítica integral por parte dos integrantes responsáveis pelos artefatos. |
| **Claude (Anthropic)** | Apoio na estruturação de tabelas técnicas, fórmulas matemáticas e organização de artefatos. | Revisão conceitual, conferência das métricas e adequação às normas ISO/IEC. |
| **Gemini (Google)** | Apoio em sintaxe, conferência de diagramas Mermaid e refinamento de documentação. | Verificação manual da coerência técnica e alinhamento com os dados reais do projeto. |
| **Copilot (Microsoft/GitHub)** | Apoio na edição e atualização da documentação, organização de seções, aplicação de alterações no repositório e revisão textual e técnica. | Todas as sugestões foram analisadas, validadas e, quando necessário, corrigidas pelos integrantes antes da inclusão nos artefatos. |

---

## 3. Uso da IA em cada fase

Nesta seção, o uso da IA é descrito por fase e em conformidade com o padrão **ferramenta — tarefa — conferência/ajuste**. As ferramentas auxiliaram na redação, organização e revisão da documentação; a equipe realizou a validação dos dados, das decisões metodológicas e dos julgamentos apresentados.

### 3.1. Fase 1 — Requisitos da Avaliação

- **Claude (Claude Code) — auditoria de consistência das páginas da Fase 1.** Apoio na identificação e correção de inconsistências, entre elas a remoção de uma seção duplicada em *Modelo de Qualidade e Escopo*, a inclusão do diagrama do modelo de qualidade adaptado e a fixação da edição de 2011 da ISO/IEC 25010. **Conferência/ajuste:** a alteração foi proposta como commit e incorporada ao repositório por integrante da equipe, que revisou o resultado; o escopo, as características selecionadas e a priorização do modelo de qualidade são decisões da equipe e já constavam nas versões anteriores da página.
- **Ferramentas de LLM (seção 2) — redação, revisão gramatical e formatação.** Suporte na estruturação inicial do texto das páginas, na revisão gramatical e na padronização das tabelas, legendas e históricos de versões em Markdown. **Conferência/ajuste:** os integrantes responsáveis por cada página revisaram o texto e o submeteram à revisão cruzada registrada nos históricos de versões.
- **Declaração de uso de IA (esta página).** A consolidação do ecossistema de ferramentas e da declaração de supervisão humana foi feita por integrante da equipe, com apoio de LLM na organização do texto. **Conferência/ajuste:** o conteúdo foi conferido contra as ferramentas efetivamente usadas pela equipe.
- **Não foi delegado à IA:** a definição do propósito, dos requisitantes e do escopo da avaliação, a escolha das subcaracterísticas da ISO/IEC 25010 e a seleção da meta 11.2 do ODS.

### 3.2. Fase 2 — Especificação da Avaliação

- **Claude (Claude Code) e ferramentas de LLM (seção 2) — diagramas Mermaid.** Apoio na sintaxe e na refatoração dos diagramas da hierarquia GQM, da matriz de rastreabilidade e do diagrama de transição para Mermaid nativo. **Conferência/ajuste:** os integrantes conferiram, a cada versão, se objetivos, questões e métricas representados nos diagramas coincidiam com as tabelas da página; os diagramas foram refeitos quando houve divergência (por exemplo, para identificar os três níveis do GQM e unificar o nome de M4.1).
- **Claude (Claude Code) — alinhamento textual entre páginas.** Apoio na verificação de que a justificativa dos limiares estava alinhada à tabela de notas e na reescrita das hipóteses em termos das métricas e dos limiares. **Conferência/ajuste:** os valores dos limiares, as escalas de nota e o critério conservador de julgamento foram definidos e justificados pela equipe, com base na fundamentação das métricas; a IA não definiu nem alterou limiares.
- **Ferramentas de LLM (seção 2) — formatação de tabelas e fórmulas.** Padronização das tabelas de métricas, das legendas e da notação matemática em LaTeX (inclusive a formalização do critério conservador com o operador `min(notas)`). **Conferência/ajuste:** as fórmulas foram recalculadas e comparadas com as definições das métricas por integrante diferente do autor da edição.
- **Não foi delegado à IA:** o desdobramento GQM, as decisões apoiadas (D1 a D3), as questões norteadoras e os critérios de julgamento.

### 3.3. Fase 3 — Planejamento da Avaliação

- **Claude (Claude Code) — reestruturação dos procedimentos.** Apoio na reorganização de `2-procedimentos.md` em fichas por métrica, na inclusão de tabelas de evidência por caso e dos comandos `adb`, e no ajuste de cronograma, método e Fase 2 às novas quantidades de amostra. Apoio também no alinhamento dos roteiros aos parâmetros, na redação das ameaças à validade e na revisão das datas do cronograma. **Conferência/ajuste:** as quantidades de amostra (3 versões do Android, 10 ciclos, 20 sessões, 10 ensaios de falha, 10 chegadas, 5 paradas e 20 itens oficiais) foram decididas pela equipe considerando a viabilidade para seis integrantes; a IA ajudou a propagar essas decisões entre as páginas, e a equipe conferiu a consistência entre elas.
- **Claude — revisão do método de avaliação.** Verificação de correção técnica do texto de `1-metodo.md`, de conteúdo duplicado ou conflitante com a página de procedimentos e de viabilidade da execução. Opinião consultiva sobre a redução das amostras. **Conferência/ajuste:** as sugestões foram avaliadas pela equipe; apenas as aceitas foram aplicadas, e a decisão final sobre o método e as amostras foi humana.
- **Ferramentas de LLM (seção 2) — formatação.** Padronização das tabelas de recursos, ferramentas e cronograma e sintaxe do diagrama de dependências em Mermaid. **Conferência/ajuste:** datas, responsáveis, aparelhos e versões foram conferidos com os dados reais do projeto (por exemplo, os dados lidos por `adb` dos aparelhos).
- **Não foi delegado à IA:** a escolha das técnicas de avaliação para as 12 métricas, a alocação das métricas entre laboratório e campo e a definição dos recursos.

### 3.4. Fase 4 — Execução e Julgamento da Avaliação

- **Claude — registro de dados de coleta.** Apoio na redação da seção de coleta da métrica M1.1 (tabela de 20 casos) em `1-coleta.md`, no mesmo padrão das demais seções e usando como fonte apenas as páginas das Fases 3 e 4 e os nomes dos arquivos de evidência em `dados/fase4/M1.1`. Apoio também na estruturação do registro do início da coleta da M6.2. **Conferência/ajuste:** os dados e as evidências foram coletados e registrados pelos integrantes; a IA apenas organizou o formato, e as linhas foram conferidas contra os arquivos de evidência.
- **IA (assistente de LLM) — medição de distâncias na métrica M5.2.** As distâncias das cinco paradas (P01 a P05) foram obtidas por medição direta nas capturas de tela, convertida pela escala do mapa, por cálculo visual de pixels com auxílio de IA. **Conferência/ajuste:** o uso foi declarado como limitação. A distância de P02 (29 m, a 1 m da tolerância de 30 m) é identificada como sensível, pois, se reclassificada, a nota de M5.2 cairia de 4 para 2. A página de *Análise de Dados* registra essa sensibilidade, e a página de *Resultados e Conclusões* a lista como ameaça à validade interna e como recomendação (REC-04): confirmar a distância por coordenadas ou escala conhecida e anexar o registro do GPSTest (referência de campo, com erro de até 10 m).
- **IA (assistente de LLM) — sorteio dos 20 itens da métrica M6.2.** O sorteio dos 20 itens do Relatório de Linhas da Semob-DF foi feito por meio de um assistente de IA com um prompt simples, e não por script com semente registrada. **Conferência/ajuste:** os itens sorteados foram conferidos contra os PDFs oficiais de origem (referência de 17/11/2026), que ficam arquivados. Como o sorteio não é reprodutível por semente, a equipe ajustou o texto do método para refletir o procedimento realmente executado.
- **Claude (Claude Code) e ferramentas de LLM (seção 2) — consistência e formatação das páginas de análise e resultados.** Apoio na padronização das tabelas, das legendas e das fórmulas em LaTeX e na verificação de consistência entre coleta, análise e resultados. **Conferência/ajuste:** todos os cálculos das 12 métricas, as notas, os vereditos dos objetivos G1 a G6, os pareceres das decisões D1 a D3 e as recomendações foram calculados, julgados e validados pela equipe a partir dos dados coletados, sem delegação à IA.
- **Não foi delegado à IA:** a execução dos ensaios, a coleta das evidências, a atribuição de notas e a emissão de qualquer veredito ou parecer.

---

## Histórico de Versões

| ID  | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01  | Criação inicial do documento | [Bessa](https://github.com/bessazs) | 17/10/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 22/11/2026 |
| 02  | Reorganização de localização da página no portal | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 22/11/2026 |
| 03  | Consolidação do ecossistema de LLMs (ChatGPT, Claude, Gemini) com foco em produtividade | [João Guilherme Capozzi](https://github.com/jonas3688) | 22/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 22/11/2026 |
| 04  | Preenchimento da seção 3 (uso da IA nas Fases 1 a 4) | [Pedro Ramos](https://github.com/PedroRSR) | 22/11/2026 | — | — |