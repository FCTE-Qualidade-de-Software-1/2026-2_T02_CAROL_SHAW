# Fase 3 — Método de Avaliação

## 1. Objetivo e enquadramento

Este documento define o método geral para avaliar o aplicativo móvel **DF no Ponto**. A avaliação é técnica, de **caixa preta** e baseada no comportamento observável: a equipe não acessa o código-fonte, o *backend* nem as APIs. O alvo, a versão de produção `5.25.1(1149)`, a plataforma Android e as fronteiras do produto são os registrados em [Descrição do Produto](../fase1/3-descricao.md). Os resultados valem para essa versão e para as condições e amostras efetivamente observadas; não constituem certificação nem se estendem automaticamente a versões futuras.

Na **ISO/IEC 25040:2011**, este trabalho corresponde à atividade de **projetar a avaliação**: planejar métodos, atividades, recursos e responsabilidades para produzir evidência adequada aos requisitos já especificados.[1] A Fase 2 determinou o que medir — seis objetivos GQM, 12 métricas, fontes e critérios de julgamento — e este método estabelece como obter e documentar as observações. Os procedimentos passo a passo e os formulários ficam em [Procedimentos de Execução](2-procedimentos.md); recursos e ambientes ficam em [Recursos](3-recursos.md). A Fase 3 não altera as fórmulas nem os limiares da [especificação das métricas](../fase2/metricas-julgamento.md).

A execução combina **ensaios controlados em laboratório**, com aparelhos físicos e emuladores Android, e **medições em campo**, nas quais previsões e posições exibidas pelo aplicativo são comparadas a observações independentes. A combinação permite repetir cenários de interface, instalação e falhas em condições controladas e, ao mesmo tempo, observar a informação de transporte em operação real. A avaliação funcional percorre tarefas previamente definidas, sem inferir qualidade de componentes internos a partir de um resultado visível.[2][3]

## 2. Desenho geral da avaliação

Antes de iniciar a coleta, a equipe registra em um plano de execução a versão e *build* instalada, o período de coleta, os dispositivos físicos e emulados e suas versões do Android, as configurações de tela, os roteiros, as repetições previstas, as localidades e horários de campo, as linhas e itinerários da amostra, os critérios de inclusão e exclusão e os responsáveis por executar e revisar os registros. Também fixa os parâmetros ainda dependentes do roteiro: duração da sessão, tempos máximos para aviso e retomada após falhas, tolerância espacial `ε`, janela temporal `Δt_max` para comparar posições de veículos e regra de captura das previsões. Os valores são definidos antes da observação dos resultados, registrados com unidade e justificativa e mantidos constantes durante cada série comparável. A equipe não escolhe valores depois de conhecer os resultados para favorecer uma conclusão.

A amostragem é **intencional e delimitada**, não probabilística. Para os testes em laboratório, a seleção busca cobrir as configurações Android, resoluções, tamanhos de tela, orientações e tamanhos de fonte previstos no escopo. Para a auditoria de linhas e itinerários, os itens são selecionados da fonte oficial da Semob-DF antes da consulta ao aplicativo. Para as medições em campo, os pontos, linhas, sentidos, períodos e observações planejados são definidos previamente. O plano informa, por métrica, unidade de análise, quantidade planejada, executada e válida e motivo de cada dado não observável ou excluído. As sessões, dispositivos e itens são denominadores distintos e não devem ser tratados como uma amostra de usuários.

Cada caso recebe identificador único e resultado observável, com data e hora, fuso, ambiente, versão do app, dispositivo/SO, roteiro, configuração e justificativa de falha ou exclusão, conforme aplicável. Casos obrigatórios pendentes, denominador zero ou evidência insuficiente são reportados como **não avaliados** ou **dados incompletos**, nunca como aprovação. Falhas observadas do aplicativo permanecem na amostra. Os cálculos, escalas, limiares e julgamento dos objetivos seguem a Fase 2, inclusive a regra conservadora de julgar cada objetivo pela pior nota de suas métricas filhas.[4]

## 3. Técnicas por métrica e rastreabilidade

A tabela explicita a ligação entre método, métrica, objetivo e decisão. Os nomes e cálculos das métricas são os definidos na Fase 2.[4][5]

| Objetivo / decisão | Métrica | Técnica de avaliação adotada | Evidência principal |
| :--- | :--- | :--- | :--- |
| **G1 — D1** | **M1.1 — Adaptabilidade de hardware (telas)** | Teste de caixa preta em dispositivos físicos e emuladores. Executar as telas e tarefas previstas em cada combinação de dispositivo e configuração visual; verificar corte, sobreposição e possibilidade de completar a tarefa. | Capturas de tela e ficha da configuração e do resultado. |
| **G1 — D1** | **M1.2 — Adaptabilidade de sistema operacional** | Teste do mesmo catálogo de fluxos críticos nas versões de Android selecionadas. A unidade é a versão de SO identificada, não o usuário. | Gravação ou captura da execução, identificação do dispositivo/SO e registro de resultado. |
| **G2 — D1** | **M2.1 — Sucesso de instalação** | Ciclos padronizados de instalação limpa a partir da distribuição oficial. Contabilizar o resultado da primeira tentativa de cada ciclo. | Registro do ciclo, origem, resultado e logs disponíveis. |
| **G2 — D1** | **M2.2 — Resíduo pós-desinstalação** | Auditoria comparativa do armazenamento antes e depois da desinstalação, nos locais previamente definidos e acessíveis. Contabilizar a desinstalação uma vez se houver resíduo atribuível ao app. | Lista de inspeção, registros/capturas do armazenamento e justificativa de locais não observáveis. |
| **G3 — D2** | **M3.1 — Sessões sem crashes** | Sessões padronizadas com roteiro, duração planejada e fluxos fixados. Registrar encerramentos inesperados; sessão interrompida por *crash* conta como afetada. | Gravação de tela e logs disponíveis, associados ao identificador da sessão. |
| **G3 — D2** | **M3.2 — Sessões sem congelamentos** | Sessões padronizadas com observação temporal da resposta da interface às ações. Contar uma vez cada sessão com congelamento superior a 5 segundos; separar carregamento demorado com interface responsiva e diagnóstico formal de ANR. | Gravação com marcação temporal e logs do sistema quando disponíveis. |
| **G4 — D2** | **M4.1 — Evitação de quebra por conexão** | Ensaio controlado com injeção de falha: interromper a rede após estabelecer conectividade e executar o roteiro de recuperação. Julgar com os critérios e tempos máximos registrados antes do ensaio. | Gravação da interface, registro da interrupção/reconexão e ficha do ensaio. |
| **G4 — D2** | **M4.2 — Tratamento de perda de GPS** | Ensaio controlado com injeção de falha: desativar a localização durante o roteiro, observar orientação e funções independentes do GPS e verificar a retomada após reativá-lo. | Gravação da interface e registro das mudanças de estado da localização e do resultado. |
| **G5 — D3** | **M5.1 — Precisão de tempo** | Medição em campo. Parear previsão e chegada observada para o mesmo evento, linha, sentido, parada e veículo/viagem identificável; calcular o erro absoluto mediano conforme a regra da Fase 2. | Registro de campo com previsão, captura temporal, chegada observada e dados de pareamento. |
| **G5 — D3** | **M5.2 — Correção de dados do mapa** | Medição comparativa em campo entre posições do app e uma referência independente. Fixar antes da coleta `ε` e, para veículos, `Δt_max`; calcular a distância geográfica conforme o procedimento da Fase 2 e reportar paradas e veículos separadamente. | Registro de campo com coordenadas, horários, referência e precisão/confiabilidade conhecida da fonte. |
| **G6 — D3** | **M6.1 — Cobertura de tarefas essenciais** | Sessão de teste funcional padronizada: executar o catálogo fixo de tarefas de ponta a ponta, com entradas e resultados esperados definidos antes da coleta. | Gravação/capturas e formulário por tarefa, com resultado e falhas observadas. |
| **G6 — D3** | **M6.2 — Completude do banco** | Auditoria comparativa do catálogo do app com amostra previamente selecionada da fonte oficial da Semob-DF. Conferir código, sentido e variante do itinerário e registrar divergências. | Cópia ou identificação datada da fonte oficial e planilha/formulário de confronto com evidências das consultas. |

Assim, **D1** é apoiada pelos testes de adaptabilidade e instalabilidade de **G1–G2**; **D2**, pelos ensaios de maturidade e tolerância a falhas de **G3–G4**; e **D3**, pelas medições de correção e completude funcional de **G5–G6**. A rastreabilidade completa é: **decisão → objetivo → métrica → caso/observação identificada → evidência → cálculo e julgamento**. A pertinência funcional delimita o catálogo de tarefas de M6.1, mas não recebe métrica própria, conforme a Fase 1.[5]

## 4. Evidências, identificação e armazenamento

Preencher essa etapa

## 5. Ameaças à validade, limitações e mitigações

| Ameaça ou limitação | Efeito possível | Mitigação e forma de reportar |
| :--- | :--- | :--- |
| Amostra pequena e intencional de aparelhos, telas e versões Android | Os resultados podem não representar todos os modelos, versões ou perfis de uso. | Selecionar configurações que cubram a diversidade prevista no escopo; publicar os modelos, versões e configurações efetivamente testados. Limitar a conclusão à amostra. |
| Emuladores diferem de aparelhos físicos em sensores, desempenho e condições de rede | Uma aprovação em emulador pode não se reproduzir em aparelho real, sobretudo para GPS e desempenho. | Usar dispositivos físicos para validar funções dependentes de hardware e campo; identificar quais resultados vieram de emulador e não extrapolá-los. |
| Medição de confiabilidade por sessão, não por usuário ou exposição real | A proporção de sessões sem falha não equivale às taxas populacionais de usuários ativos nem às métricas agregadas da loja. | Reportar numerador, denominador, duração e roteiro; apresentar os indicadores Android Vitals apenas como contexto, sem afirmar equivalência.[6] |
| Serviços externos, conectividade, GPS, tráfego e operação da frota variam | Uma falha pode decorrer de rede, API, servidor, satélite, congestionamento ou rastreador externo, e não apenas do aplicativo. | Registrar condições e horários, repetir quando previsto, distinguir sintoma observado de causa não demonstrada e declarar indisponibilidades externas. Não atribuir causalidade interna sem evidência. |
| Medição de previsão e posição em campo depende de pareamento e referência | Identidade incorreta de viagem, atraso entre captura e observação ou erro do receptor de referência pode distorcer M5.1/M5.2. | Fixar critérios de pareamento e janelas antes da coleta; registrar horários e precisão da referência; excluir apenas pares inválidos segundo regra predefinida, quantificando-os e justificando-os. |
| M2.2 depende de permissões e locais de armazenamento inspecionáveis | Restrições do Android podem impedir observar diretórios privados ou distinguir arquivos do app. | Delimitar locais acessíveis e método de inspeção previamente; marcar o que não foi observável e não declarar ausência geral de resíduos com base em áreas inacessíveis. |
| Julgamento visual e execução por avaliador podem variar | Diferenças na interpretação de sobreposição, congelamento, sucesso de tarefa ou atribuição de resíduo reduzem a repetibilidade. | Usar roteiro, critérios operacionais e formulário únicos; treinar avaliadores com casos de referência; registrar divergências e, quando possível, obter revisão independente da evidência. |
| Aplicativo, catálogo oficial e ambiente podem mudar durante o estudo | Resultados de momentos diferentes podem refletir builds ou dados distintos. | Congelar e registrar a identificação do build e a data da fonte oficial; coletar cada série sob configuração identificada; repetir ou separar resultados quando uma mudança material ocorrer. |
| Avaliação de caixa preta não acessa código, APIs ou infraestrutura interna | Não é possível confirmar causa raiz nem avaliar diretamente componentes fora do escopo. | Restringir conclusões ao comportamento observável do aplicativo Android; tratar backend e APIs como dependências externas e não reivindicar auditoria de implementação. |
| Observação em laboratório pode não reproduzir uso cotidiano; campo é dependente de local e horário | Ensaios controlados aumentam repetibilidade, mas limitam realismo; observações de campo são contextuais. | Combinar laboratório e campo e descrever local, horário, condições e roteiro de cada resultado; não generalizar além das condições amostradas. |

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*. https://www.iso.org/standard/35747.html

[2] BASILI, Victor R.; WEISS, David M. *A methodology for collecting valid software engineering data*. IEEE Transactions on Software Engineering, v. SE-10, n. 6, p. 728–738, 1984. https://doi.org/10.1109/TSE.1984.501030 coleta de dados válida e documentação do contexto.

[3] ISO. *ISO/IEC 25010:2023 — Product quality model*. https://www.iso.org/standard/78176.html

[4] Equipe Carol Shaw. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md). Definições operacionais, fontes, fórmulas, regras de cálculo e limiares das métricas M1.1–M6.2.

[5] Equipe Carol Shaw. [Abordagem GQM e Metas de Avaliação — Fase 2](../fase2/planejamento-objetivos.md). Relação entre G1–G6, Q1.1–Q6.2, M1.1–M6.2 e decisões D1–D3.

[6] GOOGLE. [Android vitals — bad behavior thresholds](https://developer.android.com/google/play/vitals). Limiares agregados da plataforma, usados na Fase 2 como referência contextual, não como equivalentes à taxa por sessão deste método.

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação do método de avaliação da Fase 3, com técnicas para as 12 métricas, rastreabilidade e ameaças à validade | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |