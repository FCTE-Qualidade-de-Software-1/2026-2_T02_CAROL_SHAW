# Fase 3 — Método de Avaliação

## 1. Objetivo e enquadramento

Este documento define o método geral para avaliar o aplicativo móvel **DF no Ponto**. A avaliação é técnica, de **caixa preta** e baseada no comportamento observável: a equipe não acessa o código-fonte, o *backend* nem as APIs. O alvo, a versão de produção `5.25.1(1149)`, a plataforma Android e as fronteiras do produto são os registrados em [Descrição do Produto](../fase1/3-descricao.md). Os resultados valem para essa versão e para as condições e amostras efetivamente observadas; não constituem certificação nem se estendem automaticamente a versões futuras.

Na **ISO/IEC 25040:2011**, este trabalho corresponde à atividade de **projetar a avaliação**: planejar métodos, atividades, recursos e responsabilidades para produzir evidência adequada aos requisitos já especificados.[1] A Fase 2 determinou o que medir — seis objetivos GQM, 12 métricas, fontes e critérios de julgamento — e este método estabelece como obter e documentar as observações. Os procedimentos passo a passo e os formulários ficam em [Procedimentos de Execução](2-procedimentos.md); recursos e ambientes ficam em [Recursos](3-recursos.md). A Fase 3 não altera as fórmulas nem os limiares da [especificação das métricas](../fase2/metricas-julgamento.md).

A execução combina **ensaios controlados em laboratório**, com aparelhos físicos e emuladores Android, e **medições em campo**, nas quais previsões e posições exibidas pelo aplicativo são comparadas a observações independentes. A combinação permite repetir cenários de interface, instalação e falhas em condições controladas e, ao mesmo tempo, observar a informação de transporte em operação real. A avaliação funcional percorre tarefas previamente definidas, sem inferir qualidade de componentes internos a partir de um resultado visível.[2][3]

## 2. Desenho geral da avaliação

Antes de iniciar a coleta, a equipe registra em um plano de execução a versão e *build* instalada, o período de coleta, os dispositivos físicos e emulados e suas versões do Android, as configurações de tela, os roteiros, as repetições previstas, as localidades e horários de campo, as linhas e itinerários da amostra, os critérios de inclusão e exclusão e os responsáveis por executar e revisar os registros. Também fixa os parâmetros ainda dependentes do roteiro: duração da sessão, tempos máximos para aviso e retomada após falhas, tolerância espacial `ε`, janela temporal `Δt_max` para comparar posições de veículos e regra de captura das previsões. Os valores são definidos antes da observação dos resultados, registrados com unidade e justificativa e mantidos constantes durante cada série comparável. A equipe não escolhe valores depois de conhecer os resultados para favorecer uma conclusão.

A amostragem é **intencional e delimitada**, não probabilística. Para os testes em laboratório, a seleção busca cobrir as configurações Android, resoluções, tamanhos de tela, orientações e tamanhos de fonte previstos no escopo. Para a auditoria de linhas e itinerários, os itens são selecionados da fonte oficial da Semob-DF antes da consulta ao aplicativo. Para as medições em campo, os pontos, linhas, sentidos, períodos e observações planejados são definidos previamente. O plano informa, por métrica, unidade de análise, quantidade planejada, executada e válida e motivo de cada dado não observável ou excluído. As sessões, dispositivos e itens são denominadores distintos e não devem ser tratados como uma amostra de usuários.

A coleta operacionaliza-se por meio de **matrizes estruturadas de contagem e classificação**, nas quais cada caso recebe identificador único, metadados de execução (data, hora, fuso, ambiente, versão do app, dispositivo/SO, roteiro e configuração) e resultado observável classificado objetivamente (ex.: *conforme / aprovado*, *não conforme / defeito* ou *não observável*). Para evitar redundância operacional sem perder auditabilidade, adota-se o princípio de **evidência por exceção**: todos os casos são contabilizados nas tabelas de execução, mas artefatos binários (capturas, gravações ou logs) são coletados apenas quando ocorre falha/defeito, quando a métrica depende de medição temporal contínua ou quando se trata de confronto empírico em campo.

Casos obrigatórios pendentes, denominador zero ou evidência insuficiente em falhas reportadas são tratados como **não avaliados** ou **dados incompletos**, nunca como aprovação. Falhas observadas do aplicativo permanecem na amostra. Os cálculos, escalas, limiares e julgamento dos objetivos seguem a Fase 2, inclusive a regra conservadora de julgar cada objetivo pela pior nota de suas métricas filhas.[4]

## 3. Técnicas por métrica e rastreabilidade

A tabela explicita a ligação entre método, métrica, objetivo, técnica de contabilização e evidência exigida. Os nomes e cálculos das métricas são os definidos na Fase 2.[4][5]

| Objetivo / decisão | Métrica | Técnica de avaliação e contabilização | Registro e evidência exigida |
| :--- | :--- | :--- | :--- |
| **G1 — D1** | **M1.1 — Adaptabilidade de hardware (telas)** | Teste de caixa preta em dispositivos físicos e emuladores. Executar o catálogo de telas/tarefas em cada combinação de dispositivo e configuração visual; contabilizar telas sem corte, sobreposição ou bloqueio de interação frente ao total avaliado. | Tabela de contagem por tela/configuração + captura de tela **apenas para os casos com defeito visual**. |
| **G1 — D1** | **M1.2 — Adaptabilidade de sistema operacional** | Executar o mesmo catálogo de fluxos críticos nas versões de Android selecionadas. A unidade é a versão de SO identificada; contabilizar versões em que todos os fluxos concluem sem incompatibilidade. | Tabela de execução por versão de Android + captura de tela ou log **apenas em caso de falha**. |
| **G2 — D1** | **M2.1 — Sucesso de instalação** | Ciclos padronizados de instalação limpa a partir da distribuição oficial. Contabilizar o resultado (sucesso/falha) da primeira tentativa de cada ciclo. | Tabela de ciclos de instalação + captura de erro ou log do sistema **apenas se a instalação falhar**. |
| **G2 — D1** | **M2.2 — Resíduo pós-desinstalação** | Auditoria comparativa do armazenamento antes e depois da desinstalação, nos locais previamente definidos e acessíveis. Contabilizar a desinstalação como afetada se houver resíduo atribuível ao app. | Lista de inspeção pré/pós-remoção + captura de tela ou listagem de diretório **apenas se houver resíduo detectado**. |
| **G3 — D2** | **M3.1 — Sessões sem crashes** | Sessões padronizadas com roteiro, duração planejada e fluxos fixados. Contabilizar sessões concluídas sem encerramento inesperado; sessão interrompida por *crash* conta como afetada. | Tabela de controle de sessões + extrato de log (`logcat`) ou captura de erro **apenas nas sessões com *crash***. |
| **G3 — D2** | **M3.2 — Sessões sem congelamentos** | Sessões padronizadas com cronometragem da resposta da interface às ações. Contabilizar uma vez cada sessão com congelamento superior a 5 segundos; separar carregamento demorado com interface responsiva de travamento real ou ANR. | Tabela de sessões com tempos observados + gravação de tela cronometrada (ou log de ANR) **nas sessões com suspeita ou ocorrência de travamento > 5 s**. |
| **G4 — D2** | **M4.1 — Evitação de quebra por conexão** | Ensaio controlado com injeção de falha: interromper a rede após estabelecer conectividade e executar o roteiro de recuperação. Contabilizar ensaios que exibem aviso adequado e retomam operação dentro dos tempos máximos fixados. | Ficha tabular do ensaio (tempos de corte, aviso e retomada) + gravação de tela **para comprovar a janela temporal de resposta e recuperação**. |
| **G4 — D2** | **M4.2 — Tratamento de perda de GPS** | Ensaio controlado com injeção de falha: desativar a localização durante o roteiro, verificar aviso/orientação e funções independentes de GPS, e contabilizar a retomada após reativação. | Ficha tabular do ensaio + gravação de tela **para comprovar a transição de estado e o tempo de retomada**. |
| **G5 — D3** | **M5.1 — Precisão de tempo** | Medição em campo. Parear previsão exibida e chegada observada para o mesmo evento, linha, sentido, parada e veículo/viagem; contabilizar pares válidos e calcular o erro absoluto mediano conforme a Fase 2. | Planilha de registro de campo (horário da previsão, captura e chegada real) + captura de tela da previsão no app no momento da coleta. |
| **G5 — D3** | **M5.2 — Correção de dados do mapa** | Medição comparativa em campo entre posições exibidas no app e referência independente. Fixar antes da coleta `ε` e `Δt_max`; contabilizar paradas e veículos dentro da tolerância espacial (reportados separadamente). | Planilha de campo (coordenadas, horários, distância calculada e precisão da referência) + captura de tela do mapa no app. |
| **G6 — D3** | **M6.1 — Cobertura de tarefas essenciais** | Sessão de teste funcional padronizada: executar o catálogo fixo de tarefas de ponta a ponta, com entradas e resultados esperados predefinidos; contabilizar tarefas concluídas com êxito. | Tabela de verificação por tarefa (Passou / Falhou) + captura de tela **apenas para tarefas que falharem ou divergirem do esperado**. |
| **G6 — D3** | **M6.2 — Completude do banco** | Auditoria comparativa de amostra previamente selecionada da fonte oficial da Semob-DF contra o catálogo do app. Contabilizar itens presentes e consistentes quanto a código, sentido e variante do itinerário. | Planilha de confronto com a base oficial datada + captura de tela **apenas para itens ausentes ou divergentes**. |

Assim, **D1** é apoiada pelos testes de adaptabilidade e instalabilidade de **G1–G2**; **D2**, pelos ensaios de maturidade e tolerância a falhas de **G3–G4**; e **D3**, pelas medições de correção e completude funcional de **G5–G6**. A rastreabilidade completa é: **decisão → objetivo → métrica → registro tabular do caso → evidência (quando aplicável) → cálculo e julgamento**. A pertinência funcional delimita o catálogo de tarefas de M6.1, mas não recebe métrica própria, conforme a Fase 1.[5]

## 4. Registro tabular, evidências por exceção e armazenamento

Para conciliar a auditabilidade exigida pela ISO/IEC 25040 com a viabilidade operacional da coleta, a documentação divide-se em dois níveis complementares: o **registro tabular sistemático** (obrigatório para 100% dos casos) e a **evidência complementar** (coletada seletivamente conforme a natureza da métrica ou ocorrência de defeito).[1][2]

### Política de registro e critérios de coleta

| Artefato de comprovação | Escopo de aplicação | Métricas atendidas | Requisitos mínimos de validade |
| :--- | :--- | :--- | :--- |
| **Ficha tabular de contagem e execução** | **Obrigatório para todos os casos planejados** (aprovados, reprovados e não observáveis). | Todas (`M1.1` a `M6.2`) | Identificador único do caso, data/hora, dispositivo/SO, configuração, critério verificado, resultado binário/numérico e descrição objetiva de qualquer defeito observado. |
| **Captura de tela (*screenshot*) — por exceção** | **Obrigatória apenas quando um caso falhar/divergir**, além dos registros pontuais de campo (`M5.1`/`M5.2`). Dispensada para casos aprovados em laboratório. | `M1.1`, `M1.2`, `M2.1`, `M2.2`, `M5.1`, `M5.2`, `M6.1`, `M6.2` | Tela inteira visível, evidenciando claramente o defeito (corte, mensagem de erro, divergência de itinerário ou horário/posição exibida) e a barra de status do Android. |
| **Gravação de tela — restrita a variáveis temporais** | **Restrita às métricas em que o tempo de resposta ou retomada é a variável medida**, ou quando ocorrer congelamento (> 5 s). | `M3.2` (casos > 5 s), `M4.1`, `M4.2` | Marcação temporal visível (relógio do sistema ou sobreposição de cronômetro) que permita auditar a latência de aviso, duração de travamento ou tempo de reconexão. |
| **Log do sistema / instalação — por exceção** | **Coletado apenas na ocorrência de falha crítica** (*crash*, ANR ou erro de instalação) quando acessível sem *root*. | `M2.1`, `M3.1`, `M3.2` | Trecho datado (ex.: saída filtrada via `adb logcat` ou mensagem do gerenciador de pacotes) vinculado ao identificador da sessão/ciclo afetado. |

### Convenção de identificação de arquivos

Todo arquivo de evidência complementar gerado (capturas de defeitos, gravações de ensaios temporais, logs de falha ou cópias datadas da base oficial da Semob-DF) recebe um identificador único que o vincula diretamente à linha correspondente na tabela de execução:

`<METRICA>-<ID_CASO>-<AMBIENTE>-<AAAAMMDD-HHMM>.<ext>`

- **`METRICA`**: código da métrica avaliada (`M1.1` a `M6.2`).
- **`ID_CASO`**: identificador sequencial do caso, sessão ou ponto amostral registrado na tabela (ex.: `C04`, `S02`, `P01`).
- **`AMBIENTE`**: código do dispositivo físico, emulador ou coleta em campo (ex.: `DISP01`, `EMU02`, `CAMPO`).
- **`AAAAMMDD-HHMM`**: data e horário local (fuso `UTC-3`, Brasília) do registro.

*Exemplo:* `M1.1-C04-DISP01-20261116-1430.png` identifica a captura de tela do caso `C04` (quarta tela avaliada na matriz de hardware), coletada apenas porque apresentou corte de layout no dispositivo `DISP01`. Casos aprovados (`C01` a `C03`) constam exclusivamente na tabela de contagem, sem geração de arquivos de imagem.

### Armazenamento e integridade

1. **Repositório único no Git:** como a coleta por exceção elimina a geração massiva de vídeos e imagens redundantes, as planilhas/tabelas consolidadas, as fichas de execução e os arquivos leves de evidência das falhas são armazenados diretamente no repositório Git da disciplina (`docs/fase3/dados/` e `docs/fase3/evidencias/`), organizados em subpastas por métrica.
2. **Rastreabilidade cruzada:** na tabela de execução de cada métrica, toda linha marcada como *falha* ou *divergência* deve conter o nome exato do arquivo de evidência correspondente na coluna de referência; linhas marcadas como *aprovadas* (exceto `M4.1`, `M4.2`, `M5.1` e `M5.2`) registram apenas o resultado e os metadados de execução.
3. **Preservação e revisão:** após o encerramento de cada série de coleta, as tabelas e evidências passam por revisão cruzada por outro membro da equipe e têm sua integridade preservada pelo histórico de *commits* do repositório, assegurando a auditabilidade prevista na ISO/IEC 25040.[1]

## 5. Ameaças à validade, limitações e mitigações

| Ameaça ou limitação | Efeito possível | Mitigação e forma de reportar |
| :--- | :--- | :--- |
| Amostra pequena e intencional de aparelhos, telas e versões Android | Os resultados podem não representar todos os modelos, versões ou perfis de uso. | Selecionar configurações que cubram a diversidade prevista no escopo; publicar os modelos, versões e configurações efetivamente testados. Limitar a conclusão à amostra. |
| Emuladores diferem de aparelhos físicos em sensores, desempenho e condições de rede | Uma aprovação em emulador pode não se reproduzir em aparelho real, sobretudo para GPS e desempenho. | Usar dispositivos físicos para validar funções dependentes de hardware e campo; identificar quais resultados vieram de emulador e não extrapolá-los. |
| Medição de confiabilidade por sessão, não por usuário ou exposição real | A proporção de sessões sem falha não equivale às taxas populacionais de usuários ativos nem às métricas agregadas da loja. | Reportar numerador, denominador, duração e roteiro; apresentar os indicadores Android Vitals apenas como contexto, sem afirmar equivalência.[6] |
| Serviços externos, conectividade, GPS, tráfego e operação da frota variam | Uma falha pode decorrer de rede, API, servidor, satélite, congestionamento ou rastreador externo, e não apenas do aplicativo. | Registrar condições e horários, repetir quando previsto, distinguir sintoma observado de causa não demonstrada e declarar indisponibilidades externas. Não atribuir causalidade interna sem evidência. |
| Medição de previsão e posição em campo depende de pareamento e referência | Identidade incorreta de viagem, atraso entre captura e observação ou erro do receptor de referência pode distorcer M5.1/M5.2. | Fixar critérios de pareamento e janelas antes da coleta; registrar horários e precisão da referência; excluir apenas pares inválidos segundo regra predefinida, quantificando-os e justificando-os. |
| M2.2 depende de permissões e locais de armazenamento inspecionáveis | Restrições do Android podem impedir observar diretórios privados ou distinguir arquivos do app. | Delimitar locais acessíveis e método de inspeção previamente; marcar o que não foi observável e não declarar ausência geral de resíduos com base em áreas inacessíveis. |
| Julgamento visual, contagem e coleta por exceção podem variar entre avaliadores | Diferenças na interpretação de defeitos ou omissão de evidência em casos reprovados podem comprometer a auditabilidade. | Usar critérios operacionais binários e formulários padronizados; exigir captura/log obrigatório para todo item contabilizado como defeito (invalidando falhas sem prova anexada) e realizar revisão cruzada entre membros. |
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
| 02 | Adaptação da estratégia de coleta e registro para matrizes tabulares de contagem com evidência complementar por exceção | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |