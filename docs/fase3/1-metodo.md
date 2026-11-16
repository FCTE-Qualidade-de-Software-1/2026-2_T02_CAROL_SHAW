# Fase 3 — Método de Avaliação

## 1. Objetivo e abordagem

Este documento define o método de avaliação da qualidade do aplicativo móvel **DF no Ponto** (versão `5.25.1(1149)`, plataforma Android), correspondente à etapa de **projetar a avaliação** da norma **ISO/IEC 25040:2011**.[1]

A avaliação adota uma abordagem técnica de **caixa preta** baseada no comportamento observável da interface e dos dados exibidos ao usuário, sem acesso ao código-fonte, *backend* ou APIs internas.[2] Para cobrir as 12 métricas e os 6 objetivos de medição (G1 a G6) definidos na Fase 2 ([Abordagem GQM e Metas de Avaliação](../fase2/planejamento-objetivos.md))[4], o método combina duas estratégias complementares:

* **Ensaios controlados em laboratório:** testes executados em aparelhos físicos e emuladores Android para verificar instalação, compatibilidade de tela/sistema operacional, estabilidade e comportamento diante de falhas simuladas de rede e GPS.
* **Medições em campo:** observações realizadas em pontos de parada reais do Distrito Federal para confrontar os tempos de chegada e as posições exibidas pelo aplicativo com a operação real dos ônibus e com a base oficial da Semob-DF.

Este arquivo estabelece a estrutura do método e a lógica de coleta e contabilização dos resultados. Os roteiros detalhados passo a passo, cenários de teste e formulários de preenchimento encontram-se em **[Procedimentos de Execução](2-procedimentos.md)**, enquanto os aparelhos, ferramentas e ambientes necessários estão especificados em **[Recursos](3-recursos.md)**.

## 2. Como o método funciona (fluxo de utilização)

A aplicação do método segue um ciclo de quatro etapas para cada métrica (`M1.1` a `M6.2`), rastreadas a partir dos objetivos de medição e questões de [Planejamento e Objetivos](../fase2/planejamento-objetivos.md):

1. **Preparação do ambiente:** configurar o dispositivo físico ou emulador (ou posicionar-se no ponto de parada definido) conforme os requisitos de [Recursos](3-recursos.md), garantindo que a versão `5.25.1(1149)` esteja instalada.
2. **Execução dos roteiros:** seguir as instruções específicas de cada métrica descritas em [Procedimentos de Execução](2-procedimentos.md), percorrendo o catálogo fixo de telas, tarefas ou observações de campo.
3. **Contabilização tabular:** registrar cada caso executado em uma matriz de contagem, classificando o resultado de forma objetiva (**Conforme**, **Não conforme / Defeito** ou **Não observável**; o estado **Pendente** é transitório e é resolvido por revisão cruzada antes da consolidação, conforme a seção 11 de [Procedimentos de Execução](2-procedimentos.md)). Itens não observáveis são excluídos do denominador válido, enquanto defeitos permanecem na amostra.
4. **Cálculo e julgamento:** aplicar as fórmulas, escalas e limiares definidos em [Métricas e Critérios de Julgamento](../fase2/metricas-julgamento.md)[3], julgando cada objetivo GQM pela pior nota entre suas métricas associadas, conforme a regra de [Julgamento dos Objetivos](../fase2/metricas-julgamento.md#julgamento-dos-objetivos).

## 3. Técnicas de avaliação por métrica

A tabela abaixo resume a técnica aplicada a cada métrica da Fase 2 (especificadas em [Desdobramento GQM e Critérios de Julgamento](../fase2/metricas-julgamento.md) e vinculadas aos objetivos em [Planejamento e Objetivos](../fase2/planejamento-objetivos.md)) e como os resultados são contabilizados:

| Objetivo / Decisão | Métrica | Técnica de avaliação | Unidade de contagem |
| :--- | :--- | :--- | :--- |
| **G1 — D1** | **M1.1 — Adaptabilidade de hardware** | Inspeção visual e funcional do catálogo de telas em diferentes resoluções, tamanhos e fontes. | Casos tela × configuração sem corte, sobreposição ou bloqueio de interação / total de casos avaliados. |
| **G1 — D1** | **M1.2 — Adaptabilidade de SO** | Execução dos fluxos críticos do aplicativo em diferentes versões do Android. | Versões de Android sem falhas de compatibilidade / total de versões testadas. |
| **G2 — D1** | **M2.1 — Sucesso de instalação** | Ciclos de instalação limpa a partir da loja oficial, observando a primeira tentativa. | Instalações concluídas com êxito / total de ciclos executados. |
| **G2 — D1** | **M2.2 — Resíduo pós-desinstalação** | Comparação dos diretórios acessíveis do armazenamento antes da instalação e após a remoção do app. | Desinstalações sem arquivos residuais / total de ciclos de remoção. |
| **G3 — D2** | **M3.1 — Sessões sem *crashes*** | Execução de sessões cronometradas com fluxos predefinidos monitorando encerramentos inesperados. | Sessões concluídas sem *crash* / total de sessões executadas. |
| **G3 — D2** | **M3.2 — Sessões sem congelamentos** | Observação do tempo de resposta da interface durante sessões padronizadas. | Sessões sem travamentos superiores a 5 segundos / total de sessões executadas. |
| **G4 — D2** | **M4.1 — Mitigação de perda de conexão** | Injeção de falha de rede (desconexão e reconexão) durante o uso ativo do aplicativo. | Ensaios com aviso adequado e retomada no tempo previsto / total de ensaios. |
| **G4 — D2** | **M4.2 — Tratamento de perda de GPS** | Desativação e reativação da localização do aparelho durante o roteiro de navegação. | Ensaios com aviso ao usuário e retomada da posição / total de ensaios. |
| **G5 — D3** | **M5.1 — Precisão de tempo** | Confronto em campo entre o horário previsto no app e a chegada real do veículo na parada. | Erro absoluto mediano (em minutos) entre previsão e chegada observada. |
| **G5 — D3** | **M5.2 — Correção de dados do mapa** | Comparação entre as coordenadas de paradas/veículos no app e a posição real medida em campo. | Itens dentro da tolerância espacial `ε` / total de itens observados. |
| **G6 — D3** | **M6.1 — Cobertura de tarefas essenciais** | Teste funcional de ponta a ponta cobrindo as funcionalidades principais do aplicativo. | Tarefas concluídas conforme o resultado esperado / total de tarefas do catálogo. |
| **G6 — D3** | **M6.2 — Completude do banco** | Auditoria comparativa entre uma amostra oficial de linhas/itinerários da Semob-DF e o catálogo do app. | Itinerários cadastrados corretamente (código, sentido e variante) / total amostrado. |

<p class="legenda">Tabela 1. Técnica de avaliação e unidade de contagem por métrica. Fonte: elaboração própria (2026).</p>

## 4. Justificativa do método

- **Caixa preta:** a equipe não tem acesso ao código-fonte, ao *backend* nem às APIs da Semob-DF, e as decisões D1 a D3 dependem do comportamento percebido pelo passageiro. Por isso, todas as medidas são obtidas pela interface e pelos dados exibidos.
- **Ensaios controlados em laboratório (M1.1 a M4.2, M6.1 e M6.2):** adaptabilidade, instalabilidade, maturidade e tolerância a falhas exigem repetir o mesmo caso sob condições fixas (configuração de tela, versão do Android, duração da sessão, duração da falha injetada). O ambiente controlado isola essas variáveis e permite que outro avaliador repita o ensaio.
- **Medições em campo (M5.1 e M5.2):** a correção das previsões e das posições só pode ser verificada contra a operação real dos ônibus e contra uma referência de posição independente do aplicativo.
- **Amostra intencional e fixada antes da coleta:** as quantidades são limitadas pelo esforço disponível; a fixação prévia de catálogos, amostras e parâmetros impede a seleção de casos em função do resultado.

## 5. Registro de dados e evidências

Para que cada resultado possa ser verificado por terceiros, o registro combina **tabelas de execução** e **evidências por caso**:

* **Tabelas de execução (todos os casos):** toda execução, aprovada ou reprovada, é registrada na planilha de coleta descrita em [Procedimentos de Execução](2-procedimentos.md#10-protocolo-de-coleta-e-formulario-padronizado), com data, dispositivo e versão do Android, caso testado e resultado.
* **Evidências (todos os casos):** cada linha da planilha aponta para a evidência prevista no roteiro da métrica (captura de tela, gravação, log ou arquivo de dados), inclusive nos casos aprovados. Nos casos reprovados, a evidência deve mostrar o defeito contabilizado.

As planilhas e as evidências são versionadas no repositório da equipe, em `dados/fase4/<métrica>/`, e vinculadas pelo identificador do caso. Vídeos que excedam o limite do repositório ficam em pasta compartilhada, com link e hash registrados na planilha.

## 6. Limitações do método e ameaças à validade

Como a avaliação é de caixa preta e usa amostragem intencional, os resultados refletem o comportamento observado na versão `5.25.1(1149)`, nos aparelhos, versões do Android, locais e horários amostrados, e não constituem certificação do sistema.

| Ameaça | Efeito possível | Tratamento |
| :--- | :--- | :--- |
| Amostra intencional e pequena | Os resultados não estimam taxas da população de usuários; em M1.2, M2.1, M2.2 e M6.1 a nota 3 não é atingível | Informar o tamanho da amostra e a resolução de cada métrica; aplicar a regra de amostras pequenas da Fase 2 |
| Falhas de infraestrutura externa (rede, API da Semob-DF) confundidas com falhas do aplicativo | Reprovação indevida ou exclusão indevida | Estados de execução e política de reteste da seção 11 dos procedimentos; registro da causa observável |
| Erro da referência de posição (GPS do celular) | Classificação incorreta em M5.2 | Aceitar apenas referência com precisão informada de até 10 m; tolerância de 30 m; apuração separada de paradas e veículos |
| Variação entre avaliadores | Julgamentos diferentes para o mesmo caso | Critérios de aprovação por roteiro, teste-piloto por avaliador que não redigiu o roteiro e auditoria de 10% dos registros |
| Atualização do aplicativo durante a coleta | Mistura de versões na amostra | Registrar a versão em cada execução e manter separados os resultados de versões diferentes |
| Emuladores em lugar de aparelhos físicos | Comportamento diferente do real em sensores e desempenho | Usar emuladores apenas em M1.1 e M1.2; identificar o ambiente em cada registro |
| Seleção dos 20 primeiros itens do catálogo oficial (M6.2) | Amostra concentrada em parte do catálogo | Limitar a conclusão à amostra e à data de referência |
| Dias e horários de campo limitados | Previsões medidas em condições de tráfego específicas | Registrar dia, horário e antecedência de cada previsão; informar a dispersão dos erros |

<p class="legenda">Tabela 2. Ameaças à validade e tratamento adotado. Fonte: elaboração própria (2026).</p>

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.

[2] ISO. *ISO/IEC 25010:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — System and software quality models*.

[3] Equipe Carol Shaw. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md).

[4] Equipe Carol Shaw. [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação do método de avaliação da Fase 3, com técnicas para as 12 métricas, rastreabilidade e ameaças à validade | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |
| 02 | Reestruturação do documento para focar na estrutura do método, contagem tabular com evidência por exceção | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |
| 03 | Inclusão de links cruzados para Abordagem GQM e Metas de Avaliação (Fase 2) e alinhamento de rastreabilidade | [João Fonseca](https://github.com/joaoguilherme14) | 15/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 |
| 04 | Justificativa do método, evidências para todos os casos em `dados/fase4/`, ameaças à validade, unidade de M1.1 e nome de M4.1 alinhados à Fase 2 | [Bessa](https://github.com/bessazs) | 16/11/2026 | — | — |
