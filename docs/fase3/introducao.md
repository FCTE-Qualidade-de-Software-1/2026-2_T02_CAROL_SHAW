# Fase 3 — Método de Avaliação

## 1. Objetivo e abordagem

Este documento define o método de avaliação da qualidade do aplicativo móvel **DF no Ponto** (versão `5.25.1(1149)`, plataforma Android), correspondente à etapa de **projetar a avaliação** da norma **ISO/IEC 25040:2011**.[1]

A avaliação adota uma abordagem técnica de **caixa preta** baseada no comportamento observável da interface e dos dados exibidos ao usuário, sem acesso ao código-fonte, *backend* ou APIs internas.[2] Para cobrir as 12 métricas definidas na Fase 2, o método combina duas estratégias complementares:

* **Ensaios controlados em laboratório:** testes executados em aparelhos físicos e emuladores Android para verificar instalação, compatibilidade de tela/sistema operacional, estabilidade e comportamento diante de falhas simuladas de rede e GPS.
* **Medições em campo:** observações realizadas em pontos de parada reais do Distrito Federal para confrontar os tempos de chegada e as posições exibidas pelo aplicativo com a operação real dos ônibus e com a base oficial da Semob-DF.

Este arquivo estabelece a estrutura do método e a lógica de coleta e contabilização dos resultados. Os roteiros detalhados passo a passo, cenários de teste e formulários de preenchimento encontram-se em **[Procedimentos de Execução](2-procedimentos.md)**, enquanto os aparelhos, ferramentas e ambientes necessários estão especificados em **[Recursos](3-recursos.md)**.

## 2. Como o método funciona (fluxo de utilização)

A aplicação do método segue um ciclo de quatro etapas para cada métrica (`M1.1` a `M6.2`):

1. **Preparação do ambiente:** configurar o dispositivo físico ou emulador (ou posicionar-se no ponto de parada definido) conforme os requisitos de [Recursos](3-recursos.md), garantindo que a versão `5.25.1(1149)` esteja instalada.
2. **Execução dos roteiros:** seguir as instruções específicas de cada métrica descritas em [Procedimentos de Execução](2-procedimentos.md), percorrendo o catálogo fixo de telas, tarefas ou observações de campo.
3. **Contabilização tabular:** registrar cada caso executado em uma matriz de contagem, classificando o resultado de forma objetiva (**Conforme**, **Não conforme / Defeito** ou **Não observável**). Itens não observáveis são excluídos do denominador válido, enquanto defeitos permanecem na amostra.
4. **Cálculo e julgamento:** aplicar as fórmulas, escalas e limiares definidos em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md), julgando cada objetivo GQM pela pior nota entre suas métricas associadas.

## 3. Técnicas de avaliação por métrica

A tabela abaixo resume a técnica aplicada a cada métrica da Fase 2 e como os resultados são contabilizados:

| Objetivo / Decisão | Métrica | Técnica de avaliação | Unidade de contagem |
| :--- | :--- | :--- | :--- |
| **G1 — D1** | **M1.1 — Adaptabilidade de hardware** | Inspeção visual e funcional do catálogo de telas em diferentes resoluções, tamanhos e fontes. | Telas sem corte, sobreposição ou bloqueio de interação / total de telas testadas. |
| **G1 — D1** | **M1.2 — Adaptabilidade de SO** | Execução dos fluxos críticos do aplicativo em diferentes versões do Android. | Versões de Android sem falhas de compatibilidade / total de versões testadas. |
| **G2 — D1** | **M2.1 — Sucesso de instalação** | Ciclos de instalação limpa a partir da loja oficial, observando a primeira tentativa. | Instalações concluídas com êxito / total de ciclos executados. |
| **G2 — D1** | **M2.2 — Resíduo pós-desinstalação** | Comparação dos diretórios acessíveis do armazenamento antes da instalação e após a remoção do app. | Desinstalações sem arquivos residuais / total de ciclos de remoção. |
| **G3 — D2** | **M3.1 — Sessões sem *crashes*** | Execução de sessões cronometradas com fluxos predefinidos monitorando encerramentos inesperados. | Sessões concluídas sem *crash* / total de sessões executadas. |
| **G3 — D2** | **M3.2 — Sessões sem congelamentos** | Observação do tempo de resposta da interface durante sessões padronizadas. | Sessões sem travamentos superiores a 5 segundos / total de sessões executadas. |
| **G4 — D2** | **M4.1 — Evitação de quebra por conexão** | Injeção de falha de rede (desconexão e reconexão) durante o uso ativo do aplicativo. | Ensaios com aviso adequado e retomada no tempo previsto / total de ensaios. |
| **G4 — D2** | **M4.2 — Tratamento de perda de GPS** | Desativação e reativação da localização do aparelho durante o roteiro de navegação. | Ensaios com aviso ao usuário e retomada da posição / total de ensaios. |
| **G5 — D3** | **M5.1 — Precisão de tempo** | Confronto em campo entre o horário previsto no app e a chegada real do veículo na parada. | Erro absoluto mediano (em minutos) entre previsão e chegada observada. |
| **G5 — D3** | **M5.2 — Correção de dados do mapa** | Comparação entre as coordenadas de paradas/veículos no app e a posição real medida em campo. | Itens dentro da tolerância espacial `ε` / total de itens observados. |
| **G6 — D3** | **M6.1 — Cobertura de tarefas essenciais** | Teste funcional de ponta a ponta cobrindo as funcionalidades principais do aplicativo. | Tarefas concluídas conforme o resultado esperado / total de tarefas do catálogo. |
| **G6 — D3** | **M6.2 — Completude do banco** | Auditoria comparativa entre uma amostra oficial de linhas/itinerários da Semob-DF e o catálogo do app. | Itinerários cadastrados corretamente (código, sentido e variante) / total amostrado. |

## 4. Registro de dados e evidências

Para manter a coleta enxuta e viável de versionar no repositório, o registro dos testes baseia-se em **tabelas de contagem** complementadas por **evidências por exceção**:

* **Tabelas de execução (todos os casos):** toda execução — aprovada ou reprovada — é registrada nas planilhas/tabelas descritas em [Procedimentos de Execução](2-procedimentos.md), contendo data, dispositivo/SO, caso testado e resultado.
* **Evidências complementares (apenas quando necessário):** capturas de tela (*screenshots*) ou trechos de log são salvos **apenas nos casos em que ocorrer defeito ou divergência**, servindo como prova objetiva da falha contabilizada. Gravações de tela restringem-se aos ensaios em que o tempo de resposta ou retomada é a variável medida (`M3.2`, `M4.1` e `M4.2`).

Os arquivos de dados tabulares e as evidências pontuais de falhas são armazenados diretamente no repositório da equipe (`docs/fase3/`), vinculados pelo identificador do caso registrado na tabela.

## 5. Limitações do método

Como a avaliação é de caixa preta e utiliza amostragem intencional delimitada (sem acesso ao código-fonte ou servidores da Semob-DF), os resultados refletem estritamente o comportamento observado na versão `5.25.1(1149)` sob os aparelhos, versões de Android, locais e horários amostrados, não devendo ser generalizados como certificação universal do sistema.[3]

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*. https://www.iso.org/standard/35747.html

[2] ISO. *ISO/IEC 25010:2023 — Product quality model*. https://www.iso.org/standard/78176.html

[3] Equipe Carol Shaw. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação do método de avaliação da Fase 3, com técnicas para as 12 métricas, rastreabilidade e ameaças à validade | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |
| 02 | Reestruturação do documento para focar na estrutura do método, contagem tabular com evidência por exceção e integração com `2-procedimentos.md` | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |