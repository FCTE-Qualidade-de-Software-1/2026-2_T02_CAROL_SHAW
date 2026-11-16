# Fase 3 — Parâmetros, Catálogos e Amostragem

## 1. Objetivo e condições comuns

Este documento define os catálogos, as amostras e os parâmetros das 12 métricas, conforme o [Método de Avaliação](1-metodo.md) e as [fórmulas, unidades e faixas de pontuação da Fase 2](../fase2/metricas-julgamento.md). Os roteiros passo a passo e os formulários serão acrescentados posteriormente.

Adota-se uma **amostra intencional**, dimensionada para a execução acadêmica e a resolução dos resultados. Os valores são decisões do projeto, não medições realizadas ou exigências numéricas das normas ISO.

Prevê-se um smartphone com Android atualizado e a versão mais recente do app instalada. A [identificação do alvo](../fase1/3-descricao.md#4-alvo-da-avaliacao) e o método registram `5.25.1(1149)`; atualizar essa identificação se a versão usada for outra. Manter a mesma versão do app em todos os ambientes, registrando eventual indisponibilidade.

### 1.1. Definições anteriores à coleta

**Locais, dias e horários de campo serão definidos depois**, com verificação da viabilidade das quantidades propostas. A seleção das linhas/itinerários e da parada usada nas tarefas também ficará para outro integrante da equipe. Antes da coleta oficial, completar os registros abaixo e fixar os valores finais:

| Registro | Conteúdo a fixar |
| :--- | :--- |
| Ambiente | Modelo/perfil, versão exata do Android, versão/build do app, resolução, densidade e escala de fonte |
| Catálogo oficial | Fonte, data/hora da consulta e lista identificada de linhas, sentidos e variantes |
| Entradas funcionais | `L01` e `L02`: dois itens desse catálogo; `P01`: uma parada pertencente ao itinerário de `L01` |
| Campo | Paradas com código, sentido, linhas, dias, intervalos de observação e responsáveis |
| Comparação espacial | Referência de comparação, sistema de coordenadas, horários e precisão estimada |
| Inspeção de arquivos | Identificador do pacote e lista de locais acessíveis efetivamente inspecionados |

`L01`, `L02` e `P01` são identificadores internos dos itens selecionados na fonte oficial antes da consulta no app. Versionar o plano; alterações exigem justificativa e identificação das séries afetadas, mantendo separados os resultados obtidos sob critérios diferentes.

Em todas as métricas, informar quantidades previstas, executadas e válidas, com os motivos das pendências e exclusões. Manter as falhas observadas na avaliação; não excluir nem substituir casos por causa dos resultados. Denominador zero ou ausência de pares temporais válidos resulta em avaliação sem nota; casos obrigatórios pendentes mantêm a avaliação incompleta, conforme a Fase 2.

## 2. Catálogos de tarefas e compatibilidade

### 2.1. Tarefas essenciais — M6.1

O catálogo contém **oito tarefas** do [escopo do produto](../fase1/3-descricao.md#5-fronteiras-e-exclusoes-de-escopo), executadas uma vez no aparelho principal, com rede e localização disponíveis. Preparar o estado de favoritos indicado nas entradas.

| ID | Tarefa e entrada | Resultado esperado |
| :--- | :--- | :--- |
| TE01 | Buscar `L01` pelo código oficial | Encontrar a linha com identificação e sentido correspondentes à fonte oficial |
| TE02 | Consultar os horários de `L01` para o dia de referência registrado | Exibir a grade da linha, sentido e dia consultados, sem confundir horário de partida com previsão de chegada |
| TE03 | Abrir o itinerário de `L01` | Exibir o traçado e as paradas do sentido selecionado, permitindo consultar seus detalhes |
| TE04 | Consultar `P01` | Exibir a identificação da parada e permitir consultar as linhas que a atendem |
| TE05 | Acompanhar um veículo de `L02`, com operação confirmada no período | Exibir um veículo identificável e sua posição no mapa; a precisão dessa posição é avaliada separadamente em M5.2 |
| TE06 | Salvar `L01`, inicialmente ausente dos favoritos, e reabrir a lista | Encontrar `L01` nos favoritos com a identificação correta |
| TE07 | Salvar `P01`, inicialmente ausente dos favoritos, e reabrir a lista | Encontrar `P01` nos favoritos com a identificação correta |
| TE08 | Remover `L01`, previamente presente nos favoritos, e reabrir a lista | Confirmar sua ausência, mantendo os outros favoritos |

Contar uma falha por tarefa que não atingir o resultado esperado. Preparar cada estado independentemente da aprovação de outras tarefas; impedimentos deixam o catálogo incompleto. Em TE05, operação não verificável é um impedimento de observação, sem aprovação presumida ou atribuição automática de falha ao app.

### 2.2. Telas e configurações — M1.1

Selecionam-se cinco telas da consulta e navegação do passageiro:

| ID | Tela e conteúdo utilizado |
| :--- | :--- |
| T01 | Resultado da busca por `L01` |
| T02 | Horários de `L01` |
| T03 | Mapa do itinerário de `L01` |
| T04 | Detalhes de `P01` |
| T05 | Lista de favoritos com `L01` e `P01` previamente cadastrados |

Avaliar cada tela nas quatro configurações propostas, totalizando **20 casos**. Os perfis não descrevem o celular disponível.

| ID | Resolução e densidade do perfil | Orientação | Escala de fonte |
| :--- | :--- | :--- | :--- |
| C01 | 640 × 1136 px; 320 dpi | Retrato | 100% |
| C02 | Mesmo perfil de C01, com dimensões invertidas | Paisagem | 100% |
| C03 | Mesmo perfil de C01 | Retrato | 200% |
| C04 | 1080 × 2400 px; 420 dpi | Retrato | 100% |

Os perfis cobrem tela compacta, rotação, fonte ampliada e maior área de exibição. Registrar a configuração aplicada e o espaço das barras do sistema. Identificar cada caso como `Txx-Cxx` e aprovar quando informações e controles necessários estiverem visíveis e utilizáveis, sem corte ou sobreposição impeditivos.

Usar a mesma versão do Android nos quatro perfis. A configuração dos ambientes será descrita em [Recursos](3-recursos.md).

### 2.3. Versões do Android — M1.2

A lista prevista contém **Android 9, 10, 11, 12 e 13**, conforme a hipótese da Fase 2, e a **versão atual do aparelho físico**. Contar versões coincidentes uma única vez: são até seis versões distintas, com ambientes físicos ou emulados a especificar em [Recursos](3-recursos.md).

Aplicar TE01 a TE08 em cada versão, nas mesmas condições funcionais. Aprovar a versão somente se todos os fluxos concluírem sem erro impeditivo de compatibilidade. Registrar a causa observável, sem atribuir indisponibilidade externa automaticamente ao Android.

Instalação recusada por incompatibilidade demonstrada integra o resultado. Ambiente não preparado ou distribuição indisponível por motivo externo fica pendente/não observável, sem aprovação presumida. Repetições no mesmo Android não ampliam o denominador.

## 3. Parâmetros dos ensaios de laboratório

### 3.1. Instalação e resíduos — M2.1 e M2.2

Planejam-se **10 ciclos de instalação limpa e remoção** no aparelho principal, pela distribuição oficial, começando com o app ausente. M2.1 considera somente a primeira tentativa, sem exigir abertura inicial; tentativas posteriores não alteram esse resultado.

Para M2.2, usar busca, horários, mapa e favoritos entre a instalação concluída e a remoção. A instalação existente na preparação não conta como ciclo. Fixar os locais acessíveis abaixo e inspecionar o mesmo conjunto antes da instalação e depois da desinstalação:

| Grupo | Locais e critério de inspeção |
| :--- | :--- |
| Áreas específicas do app | Diretórios identificados pelo pacote em `Android/data` e `Android/obb`, quando acessíveis |
| Armazenamento compartilhado | Pastas identificadas com o app, `Download`, `Documents` e `Android/media`, quando acessíveis |
| Atribuição | Arquivo novo ou alterado durante o uso, com nome, conteúdo ou vínculo com o pacote que demonstre origem no app |

Excluir da contagem as evidências produzidas pelo avaliador e os arquivos sem atribuição demonstrável ao app. Segundo a [documentação do Android](https://developer.android.com/training/data-storage), áreas específicas são removidas na desinstalação, enquanto arquivos compartilhados podem permanecer. O resultado limita-se aos locais observáveis, sem presumir acesso irrestrito ou ausência de resíduos nas demais áreas.

Inspeção inviável de um local obrigatório invalida a inspeção do ciclo. Instalação não concluída não produz desinstalação aprovada. Registrar separadamente as quantidades de M2.1 e M2.2, conforme as regras comuns.

### 3.2. Sessões de uso — M3.1 e M3.2

Planejam-se **20 sessões de cinco minutos**, totalizando 100 minutos previstos. Cada sessão dedica **um minuto a cada atividade, nesta ordem**: busca de linha e resultados; horários; itinerário no mapa; parada e acompanhamento de veículo, quando disponível; consulta e manutenção dos favoritos. Registrar atrasos e interrupções sem prolongar a sessão. Não induzir quedas de rede ou desativação da localização.

**Crash** é encerramento inesperado. **Congelamento** é ausência de resposta da interface a uma ação por mais de cinco segundos, medida em gravação com marcação temporal. Carregamento responsivo não conta; diagnóstico de ANR do sistema operacional exige log específico.

Contar a sessão afetada uma vez por métrica aplicável, incluindo as encerradas por crash. A retomada inicia outra sessão identificada, sem apagar a falha ou ampliar automaticamente a amostra. Registrar duração efetiva e amostra válida por métrica.

### 3.3. Interrupções de rede e localização — M4.1 e M4.2

Planejam-se **20 ensaios de rede e 20 de localização**, separados das sessões de maturidade, com uma interrupção por ensaio. O recurso deve funcionar inicialmente e ser restabelecido antes do próximo caso.

| Parâmetro | Valor definido | Justificativa operacional |
| :--- | :--- | :--- |
| Duração da indisponibilidade induzida | 30 s | Sustentar a falha por um intervalo observável, permitindo verificar a orientação e o uso das funções disponíveis |
| Tempo máximo de aviso | 5 s | Dar retorno breve à tentativa de usar uma função dependente do recurso indisponível |
| Tempo máximo de retomada | 30 s | Delimitar uma espera controlada pela recuperação após reativação, incluindo nova consulta |

Os tempos não têm calibração empírica prévia. Medir o aviso da primeira solicitação dependente do recurso já desativado até a indicação inequívoca de indisponibilidade. Medir a retomada da confirmação da reativação no sistema até a conclusão de nova consulta dependente do recurso. Registrar os instantes na gravação e aplicar os prazos sem arredondamento.

Na interrupção de rede, desativar todas as conexões capazes de manter o app online. Em ambos os recursos, exigir que o app permaneça aberto, informe a indisponibilidade, mantenha a interface responsiva e retome a consulta nos prazos da tabela. Na localização, exigir também consultas independentes da posição disponíveis e retomada da função de localização.

Recurso indisponível antes do ensaio caracteriza impedimento de preparação. Os tempos refletem o conjunto app/ambiente; registrar limitações de infraestrutura sem presumir a causa interna das falhas.

## 4. Amostras e parâmetros de campo

### 4.1. Previsão e chegada — M5.1

Propõem-se **20 eventos de chegada**, em dois blocos de dez e pelo menos duas linhas. As paradas, os dias e as janelas de observação seguem pendentes. Na janela fixada, selecionar os primeiros eventos elegíveis das linhas registradas, sem seleção pelo erro observado.

Usar a primeira previsão obtida ao iniciar a observação de cada evento, registrando a captura sem substituí-la por atualizações. Deve ser uma previsão de chegada à parada selecionada, não uma grade de partidas de terminal.

Registrar a chegada quando a frente do veículo alcançar o ponto físico de referência da parada, identificado previamente. Parear linha, sentido, parada e veículo/viagem identificável. Usar relógios sincronizados, data completa, fuso `America/Sao_Paulo` e deslocamento UTC do dia. Converter tempo restante em previsão somando-o ao instante de captura, conforme a Fase 2.

Separar previsões ausentes, identificação insuficiente e chegadas não observadas na janela; esses casos não recebem erro zero. Informar a antecedência das previsões, a dispersão dos erros e as quantidades previstas e válidas. Calcular a mediana somente com os pares válidos, sem reposição de eventos após verificar os resultados.

### 4.2. Posições no mapa — M5.2

Propõem-se **dez paradas distintas e 20 eventos de parada de veículos**, uma comparação por entidade/evento. Nas janelas e linhas registradas, observar os primeiros eventos elegíveis. Quadros sucessivos do mesmo veículo no mesmo evento não ampliam a amostra.

| Parâmetro | Valor definido | Condição de uso |
| :--- | :--- | :--- |
| Tolerância espacial `ε` | 30 m, para paradas e veículos | Comparação com referência de campo, preservando a identificação da entidade |
| Diferença temporal máxima `Δt_max` | 2 s, para veículos | Comparar o horário da posição no app com o horário da referência |
| Precisão horizontal informada da referência | Até 10 m | Usar posição com precisão e horário disponíveis em ferramenta independente do DF no Ponto |

A tolerância de 30 m é três vezes a precisão informada máxima aceita para a referência. A precisão é uma estimativa, não um limite absoluto do erro real ([documentação do Android](https://developer.android.com/reference/android/location/Location#getAccuracy())). O limite de dois segundos reduz a defasagem entre as posições comparadas.

A referência é a posição do celular obtida pelo **GPSTest**, independente dos dados do DF no Ponto, com coordenadas WGS84, precisão e horário UTC ([documentação](https://github.com/barbeau/gpstest/blob/v3.10.6/LOGGING-v3.md)).

Medir as paradas no ponto físico identificado. Para veículos, observar somente os parados junto à parada, registrando o ponto que representa o veículo e o deslocamento do observador. Isso reduz o efeito do movimento e limita as conclusões a essa condição.

O roteiro de execução detalhará a obtenção e o registro dos dados. O horário da posição no app é distinto do horário da captura de tela. Posições copiadas de outro cliente do mesmo serviço não constituem referência independente; observações sem os dados necessários seguem as regras de dados não observáveis da Fase 2.

Aplicar a distância e o critério `d ≤ ε` da Fase 2. Invalidar pares de veículos separados por mais de dois segundos. Apurar paradas e veículos separadamente; consolidar por soma de acertos e totais apenas sob os mesmos critérios espaciais. Informar exclusões e limitações da referência por grupo.

## 5. Amostra do catálogo oficial — M6.2

Na [Pesquisa por Linhas da Semob-DF](https://dfnoponto.semob.df.gov.br/pesquisa-por-linhas/), preservar o resultado oficial com data/hora, ordenar por código, sentido e variante e selecionar os **primeiros 20 itens distintos de linha/itinerário**, antes da consulta no app.

Outro integrante concluirá a seleção e registrará a lista como `L01` a `L20`, com código oficial, nome, sentido, variante quando houver e itinerário de referência. Sem a lista e seus identificadores, a seleção permanece pendente. A data de acesso não comprova a data de atualização do catálogo.

Auditar todos os itens; consultas repetidas não ampliam a amostra. A ordenação facilita reproduzir a seleção, mas concentra os itens numa parte do catálogo. O resultado limita-se à amostra e à data de referência, sem estimar a cobertura de toda a malha do DF.

## 6. Quantidades, resolução e limitações

Nas proporções com total válido `n`, uma unidade altera o resultado em `1/n`. A tabela relaciona a amostra planejada às faixas de nota da Fase 2, aplicadas sem arredondamento.

| Métricas | Amostra planejada | Resolução | Totais favoráveis por nota, se toda a amostra for válida |
| :--- | :--- | :--- | :--- |
| M1.1 | 20 casos de tela × configuração | 5 pontos percentuais | 4: 20; 3: 18–19; 2: 15–17; 1: 0–14 |
| M1.2 | Até seis versões distintas | 16,67 pontos percentuais, se `n = 6` | Para seis versões: 4: 6; 3: nenhum total possível; 2: 5; 1: 0–4 |
| M2.1/M2.2 | 10 ciclos de instalação/remoção | 10 pontos percentuais | 4: 10; 3: nenhum total possível; 2: 9; 1: 0–8 |
| M3.1/M3.2 | 20 sessões de cinco minutos | 5 pontos percentuais | 4: 20; 3: 19; 2: 18; 1: 0–17 |
| M4.1/M4.2 | 20 interrupções de cada recurso | 5 pontos percentuais | 4: 20; 3: 17–19; 2: 14–16; 1: 0–13 |
| M5.1 | 20 eventos de chegada previstos | Não se aplica a regra `1/n` | Mediana dos erros válidos, em minutos; notas conforme a Fase 2 |
| M5.2 — paradas | Dez paradas distintas | 10 pontos percentuais | 4: 10; 3: 9; 2: 7–8; 1: 0–6 |
| M5.2 — veículos | 20 eventos com veículo parado | 5 pontos percentuais | 4: 19–20; 3: 17–18; 2: 14–16; 1: 0–13 |
| M6.1 | Oito tarefas essenciais | 12,5 pontos percentuais | 4: 8; 3: nenhum total possível; 2: 7; 1: 0–6 |
| M6.2 | 20 itens oficiais | 5 pontos percentuais | 4: 20; 3: 19; 2: 16–18; 1: 0–15 |

Vinte repetições distinguem as quatro faixas de várias métricas com esforço delimitado, mas não estimam taxas populacionais de falhas raras. Em M3.1/M3.2, 20 sessões sem falha recebem a nota da escala sem demonstrar estabilidade de 99% no uso geral; crashes podem reduzir os 100 minutos previstos.

Em M5.1, os 20 eventos em dois blocos delimitam o esforço de campo e incluem pelo menos duas linhas. A mediana descreve essa amostra; a viabilidade das janelas será conferida ao escolher os locais e horários, conforme a pendência registrada na seção 1.1.

Em M1.2 e M6.1, as unidades são versões do Android e tarefas essenciais; não criar unidades artificiais para alcançar a nota 3. Recalcular a resolução se o total válido mudar, preservando pendências e exclusões conforme as regras comuns da seção 1.1.

## 7. Referências

- Equipe Carol Shaw. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md).
- Equipe Carol Shaw. [Abordagem GQM e Metas de Avaliação](../fase2/planejamento-objetivos.md).
- Android Developers. [Armazenamento de dados e arquivos](https://developer.android.com/training/data-storage).
- Android Developers. [Location: precisão horizontal estimada](https://developer.android.com/reference/android/location/Location#getAccuracy()).
- GPSTest. [Registros de localização — documentação da versão 3.10.6](https://github.com/barbeau/gpstest/blob/v3.10.6/LOGGING-v3.md).
- Semob-DF. [Pesquisa por Linhas — DF no Ponto](https://dfnoponto.semob.df.gov.br/pesquisa-por-linhas/).

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Definição dos catálogos, parâmetros de laboratório, proposta de amostragem de campo e auditoria oficial | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 15/11/2026 | — | — |
| 02 | Redução dos ciclos de instalação e remoção para dez e ajuste da resolução da amostra | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 16/11/2026 | — | — |
