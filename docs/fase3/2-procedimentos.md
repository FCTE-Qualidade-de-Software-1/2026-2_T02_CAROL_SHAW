# Fase 3 — Procedimentos de Execução

## 1. Objetivo

Este documento diz **como executar** o [método de avaliação](1-metodo.md) no aplicativo **DF no Ponto** (Android): quais casos testar, com quais parâmetros, em que passos e com que evidência. Ele é a fonte única dos números do plano (quantidades, tolerâncias e tempos). Fórmulas, escalas e faixas de nota ficam na [Fase 2](../fase2/metricas-julgamento.md), e aparelhos, ferramentas e prazos ficam em [Recursos](3-recursos.md) e [Cronograma](4-cronograma.md).

Os valores abaixo são decisões do projeto para uma execução acadêmica com amostra intencional. Não são exigências da ISO/IEC 25040[1] nem medições já realizadas. As amostras foram dimensionadas para o tempo e a disponibilidade da equipe, mantendo, sempre que o custo permitiu, quantidade suficiente para distinguir as faixas de nota (ver seção 5).

## 2. Regras comuns

1. **Parâmetros fixos antes da coleta.** Quantidades, tolerâncias, tempos e catálogos não mudam depois que a coleta começa. Se precisarem mudar, registrar a justificativa e separar os resultados das séries afetadas.
2. **Toda execução é registrada.** Não descartar nem repetir casos por causa do resultado. Só se repete um caso quando a falha for do ambiente de teste (bateria acabou, erro do avaliador), e isso fica anotado.
3. **Estados de cada caso:** cada execução recebe um dos estados da Tabela 1.

    | Estado | Quando | Efeito na métrica |
    |---|---|---|
    | **Conforme** | Atendeu o critério de aprovação | Entra no numerador e no denominador |
    | **Defeito** | O app falhou no critério | Entra só no denominador |
    | **Não observável** | Impedimento externo ao app (sem ônibus em operação, indisponibilidade da loja, sinal) | Sai do denominador, com justificativa |
    | **Pendente** | Dúvida entre avaliadores | Revisão por um segundo membro antes de fechar |

    <p class="legenda">Tabela 1. Estados de execução e efeito na métrica. Fonte: elaboração própria (2026).</p>

4. **Contagens por métrica:** informar quantidades previstas, executadas e válidas. Denominador zero significa "não avaliado", conforme a Fase 2.
5. **Versão do app:** registrar a versão instalada em cada execução. A versão de referência é `5.25.1(1149)`. Se a Play Store instalar outra, atualizar a referência e anotar a data.
6. **Piloto:** antes da coleta, uma pessoa que não escreveu o roteiro executa 1 caso de cada métrica e corrige os passos ambíguos.
7. **Auditoria:** ao final da coleta, um segundo membro confere 10% dos registros de cada métrica (no mínimo um), verificando se a evidência comprova o estado anotado.
8. **Privacidade (LGPD)[2]:** não enquadrar rostos nem documentos de terceiros em fotos e gravações. A avaliação usa só dados públicos do transporte coletivo.

## 3. Entradas fixas (catálogos)

### 3.1 Itens do catálogo oficial

`L01` e `L02` são duas linhas do [Relatório de Linhas da Semob-DF](https://www.semob.df.gov.br/dados-do-sistema-de-transporte-publico-do-df)[3], e `P01` é uma parada do itinerário de `L01`. Eles são escolhidos e registrados **antes** da coleta.

| ID | Item selecionado | Registro oficial |
| :--- | :--- | :--- |
| `L01` | Linha **0.089** — Setor P Sul (Av. das Palmeiras) / Av. Comercial | Sentido, variante e data/hora da consulta à fonte oficial a registrar |
| `L02` | Linha **933.4** — Setor P Sul / Sol Nascente (Av. das Palmeiras) / Taguacenter | Sentido, variante e data/hora da consulta à fonte oficial a registrar |
| `P01` | Parada **N1 P Norte**, Ceilândia, CEP 72225-273 | Código oficial da parada e confirmação de que pertence ao itinerário de `L01` a registrar |

<p class="legenda">Tabela 2. Entradas funcionais fixadas antes da coleta. Fonte: elaboração própria (2026).</p>

`L01` e `P01` foram salvos nos favoritos em 18/11/2026, estado exigido pelos casos `T05`, `TE06` e `TE07`.

### 3.2 Tarefas essenciais (M6.1 e M1.2)

| ID | Tarefa | Resultado esperado |
|---|---|---|
| TE01 | Buscar `L01` pelo código | Linha encontrada, com identificação e sentido corretos |
| TE02 | Consultar horários de `L01` no dia de referência | Grade da linha, sentido e dia corretos |
| TE03 | Abrir o itinerário de `L01` | Traçado e paradas do sentido selecionado |
| TE04 | Consultar `P01` | Identificação da parada e linhas que a atendem |
| TE05 | Acompanhar um veículo de `L02` em operação | Veículo identificável e posição no mapa |
| TE06 | Salvar `L01` nos favoritos e reabrir a lista | `L01` presente na lista |
| TE07 | Salvar `P01` nos favoritos e reabrir a lista | `P01` presente na lista |
| TE08 | Remover `L01` dos favoritos e reabrir a lista | `L01` ausente, outros favoritos mantidos |

<p class="legenda">Tabela 3. Catálogo de tarefas essenciais. Fonte: elaboração própria (2026).</p>

Cada tarefa é preparada de forma independente. Em TE05, se não for possível confirmar operação de `L02`, o caso é **Não observável**.

### 3.3 Telas e configurações (M1.1)

| Tela | Conteúdo |
|---|---|
| T01 | Resultado da busca por `L01` |
| T02 | Horários de `L01` |
| T03 | Mapa do itinerário de `L01` |
| T04 | Detalhes de `P01` |
| T05 | Favoritos com `L01` e `P01` |

<p class="legenda">Tabela 4. Telas avaliadas em M1.1. Fonte: elaboração própria (2026).</p>

| Config. | Resolução e densidade | Orientação | Fonte |
|---|---|---|---|
| C01 | 640 × 1136 px, 320 dpi | Retrato | 100% |
| C02 | Mesmo perfil de C01 | Paisagem | 100% |
| C03 | Mesmo perfil de C01 | Retrato | 200% |
| C04 | 1080 × 2400 px, 420 dpi | Retrato | 100% |

<p class="legenda">Tabela 5. Configurações de tela avaliadas em M1.1. Fonte: elaboração própria (2026).</p>

Combinações 5 × 4 = **20 casos**, identificados como `T03-C02`.

## 4. Fichas por métrica

Convenção de ambiente: **Lab** significa aparelho físico ou emulador, e **Campo** significa parada real do DF.

### Portabilidade

#### M1.1 — Adaptabilidade de hardware (Lab)

- **Amostra:** 20 casos `Txx-Cxx` (seção 3.3), todos na mesma versão do Android.
- **Passos:**
    1. Aplicar a configuração do caso. No emulador, criar o perfil com a resolução e a densidade da Tabela 4. Em aparelho físico, usar o `adb`:
        ```bash
        adb shell wm size 640x1136        # C01 a C03 (C04: 1080x2400)
        adb shell wm density 320          # C01 a C03 (C04: 420)
        adb shell settings put system font_scale 2.0                # só em C03
        adb shell settings put system accelerometer_rotation 0     # só em C02
        adb shell settings put system user_rotation 1              # só em C02 (paisagem)
        ```
    2. Abrir a tela do caso, rolar e tocar nos controles principais; em `T03`, mover e ampliar o mapa.
    3. Ao terminar a bateria, restaurar o aparelho: `adb shell wm size reset`, `adb shell wm density reset`, `font_scale 1.0` e `user_rotation 0`.
- **Conforme se:** informações e controles necessários estão visíveis e utilizáveis, sem corte ou sobreposição que impeçam a tarefa.
- **Evidência:** captura de tela de cada caso.

#### M1.2 — Adaptabilidade de SO (Lab)

- **Amostra:** Android 9, Android 13 e a versão do aparelho físico (até 3 versões distintas; se o aparelho tiver uma dessas versões, são 2).
- **Passos:** em cada versão, instalar o app pela distribuição oficial e executar TE01 a TE08.
- **Conforme se:** todas as tarefas terminam sem erro de compatibilidade impeditivo.
- **Não observável:** versão sem ambiente preparado ou distribuição indisponível por motivo externo. Instalação recusada por incompatibilidade comprovada é **Defeito**.
- **Evidência:** gravação de tela da execução em cada versão e log do erro, quando houver.

#### M2.1 — Sucesso de instalação (Lab, aparelho físico)

- **Amostra:** 10 ciclos de instalação limpa.
- **Passos:** com o app ausente, instalar pela Play Store e observar a primeira tentativa.
- **Conforme se:** a instalação conclui na primeira tentativa sem erro. Abrir o app não é exigido, e tentativas posteriores não mudam um Defeito.
- **Evidência:** captura da página da loja ao final de cada ciclo ("Instalado" ou mensagem de erro).

#### M2.2 — Resíduo pós-desinstalação (Lab)

- **Amostra:** 10 ciclos de instalação, uso e remoção (os mesmos de M2.1).
- **Passos:**
    1. Antes de instalar, listar os locais inspecionados e salvar a saída:
        ```bash
        for d in Android/data Android/obb Android/media Download Documents; do
          echo "== /sdcard/$d"; adb shell ls -laR "/sdcard/$d"
        done > M2.2_CICLO01_DISP01_antes.txt
        ```
    2. Instalar e usar busca, horários, mapa e favoritos.
    3. Desinstalar pelo método padrão do sistema e repetir o mesmo comando, salvando em `..._depois.txt`.
    4. Comparar os dois arquivos com `diff`.
- **Locais inspecionados** (quando acessíveis): `Android/data/<pacote>`, `Android/obb/<pacote>`, `Android/media`, `Download`, `Documents` e pastas com o nome do app[4].
- **Defeito se:** restar arquivo ou pasta que se possa atribuir ao app, por nome, conteúdo ou vínculo com o pacote. Arquivos criados pelo avaliador não contam.
- **Não observável:** local obrigatório inacessível no ciclo.
- **Limite:** o resultado vale só para os locais observáveis. Não se inspeciona o armazenamento privado do app.
- **Evidência:** as duas listagens de cada ciclo.

### Confiabilidade

Definições: **crash** é encerramento inesperado do app. **Congelamento** é ausência de resposta da interface a uma ação por mais de 5 s, medida em gravação com marcação de tempo. Carregamento com interface responsiva não conta.

#### M3.1 e M3.2 — Sessões sem crashes e sem congelamentos (Lab)

- **Amostra:** 20 sessões de 2 min 30 s (50 min no total). As duas métricas usam as mesmas sessões, e cada sessão afetada conta uma vez por métrica.
- **Passos:** cada sessão dedica 30 s a cada atividade, nesta ordem: busca de linha, horários, itinerário no mapa, parada e veículo, favoritos. Não induzir queda de rede nem de localização. Gravar a tela com "Mostrar toques" ativado e, quando possível, registrar o log:
    ```bash
    adb logcat -v time | grep -E "FATAL EXCEPTION|AndroidRuntime"
    ```
- **Conforme (M3.1) se:** não houve encerramento inesperado.
- **Conforme (M3.2) se:** não houve congelamento maior que 5 s.
- **Se houver crash:** a sessão conta como afetada e uma nova sessão, com novo ID, continua a bateria.
- **Evidência:** gravação de todas as sessões e trecho do log nas sessões com crash.

#### M4.1 — Falha de rede (Lab, aparelho físico)

- **Amostra:** 10 ensaios, uma interrupção por ensaio.
- **Passos:**
    1. Com o app aberto e funcionando, desligar os **dados móveis e o Wi-Fi** nas configurações do aparelho. Nenhuma conexão pode permanecer ativa: se só uma for desligada, o app continua online e o ensaio não vale.
    2. Fazer uma consulta que dependa de dados.
    3. Religar a conexão e repetir a consulta.
- **Conforme se:** o app continua aberto e responsivo, informa a indisponibilidade em até **5 s** (da consulta até o aviso) e retoma a consulta em até **30 s** (da reativação até a consulta concluir).
- **Não observável:** rede indisponível antes do ensaio.
- **Evidência:** gravação de tela de cada ensaio, com os instantes visíveis.

#### M4.2 — Perda de localização (Lab, aparelho físico)

- **Amostra:** 10 ensaios, uma desativação por ensaio.
- **Passos:** mesma lógica de M4.1, desligando o **serviço de localização** nas configurações do aparelho por **30 s**.
- **Conforme se:** os três critérios abaixo se verificam no mesmo ensaio:
    1. o app continua aberto e responsivo e informa a indisponibilidade em até **5 s**;
    2. continuam disponíveis as funções que não dependem da posição do usuário — no ensaio, verificar `TE01` (buscar `L01` pelo código) e `TE04` (consultar `P01`). Funções que dependem da posição (paradas próximas, centralizar o mapa no usuário) podem deixar de funcionar sem que isso seja defeito;
    3. depois de religar a localização, a posição do usuário volta ao mapa em até **30 s**.
- **Evidência:** gravação de tela de cada ensaio.

### Adequação funcional

#### M5.1 — Precisão do tempo de chegada (Campo)

- **Amostra:** 10 eventos de chegada, em dois blocos de 5, com 2 linhas. Em cada janela de observação, usar os primeiros eventos elegíveis, sem escolher pelo erro.
- **Passos:**
    1. No início da observação de cada evento, capturar a **primeira previsão** de chegada à parada e o horário.
    2. Registrar a chegada quando a frente do veículo alcançar o ponto de referência da parada.
    3. Parear por linha, sentido, parada e veículo ou viagem identificável.
- **Tempo:** relógios sincronizados, data completa e fuso `America/Sao_Paulo`. Se o app mostra tempo restante, somar ao instante da captura.
- **Cálculo:** erro absoluto de cada par, em minutos, e mediana dos pares válidos (Fase 2). Com número par de pares, a mediana é a média dos dois valores centrais. Informar também o menor e o maior erro.
- **Sem erro zero:** previsão ausente, identificação insuficiente e chegada não observada são registradas à parte e não entram como erro zero.
- **Evidência:** captura da previsão com o horário e foto da chegada, sem enquadrar rostos.

#### M5.2 — Posições no mapa (Campo)

- **Amostra:** 5 paradas distintas. A métrica é apurada apenas com paradas (ver a limitação abaixo).
- **Parâmetros:** tolerância ε = **30 m**.
- **Referência:** a posição do próprio avaliador, obtida pelo receptor do celular e conferida no **GPSTest**[5] (WGS84, horário UTC), com precisão horizontal informada de até 10 m[6]. Ela é independente dos dados do DF no Ponto.
- **Passos:**
    1. Posicionar-se no ponto físico da parada e conferir no GPSTest a precisão informada, que deve ser de até 10 m.
    2. Abrir o mapa do app no maior zoom em que apareçam, na mesma tela, o marcador da parada e o indicador da posição do usuário, e capturar a tela.
    3. Obter a distância $d_i$ por um dos modos previstos na [Verificação Espacial](../fase2/metricas-julgamento.md#verificacao-espacial-m52) da Fase 2 e anotar qual foi usado: **medição direta** na captura, convertendo pela escala do mapa, ou **cálculo por coordenadas**, quando houver latitude e longitude das duas posições.
- **Conforme se:** $d_i \le$ ε.
- **Por que só paradas:** o aplicativo atualiza a posição dos veículos em intervalos da ordem de um minuto e informa essa idade no detalhe da viagem, no campo *Last update*. Um ônibus em operação percorre centenas de metros nesse intervalo, e permanece parado na parada por 20 a 30 segundos, bem menos que o período de atualização. Comparar a posição exibida com a posição de referência mediria o deslocamento do veículo durante a defasagem, não o erro do aplicativo, e nenhuma tolerância de 30 m resistiria a isso. Paradas são entidades fixas e não têm esse problema, por isso a métrica é apurada só com elas.
- **Apuração:** somente paradas.
- **Evidência:** captura do mapa e registro do GPSTest de cada caso.

#### M6.1 — Cobertura de tarefas essenciais (Lab)

- **Amostra:** as 8 tarefas TE01 a TE08, uma vez cada, no aparelho principal, com rede e localização ativas.
- **Conforme se:** a tarefa atinge o resultado esperado da seção 3.2.
- **Evidência:** captura de tela do resultado de cada tarefa.

#### M6.2 — Completude do banco (Lab)

- **Amostra:** **20 linhas** do Relatório de Linhas da Semob-DF, 4 por bacia (01 a 05), sorteadas aleatoriamente. O sorteio usa só linhas com viagens em dia útil. Um código que aparece em mais de uma bacia entra uma vez só; se for sorteado de novo, sorteia-se outro. Método para realizar o sorteio fica registrado e os PDFs de origem ficam arquivados. Os itens são `A01` a `A20`.
- **Passos:** buscar o código no app e conferir se a linha existe e se a denominação (origem/destino) bate com o relatório.
- **Conforme se:** o código existe no app com a mesma denominação. Se o relatório mostra viagens de ida e de volta, o app deve mostrar os dois sentidos.
- **Limite:** o resultado vale só para a amostra e a data. Não estima a cobertura de toda a malha.
- **Evidência:** captura de tela do resultado da busca de cada item.

## 5. Amostras e limitação

A Tabela 6 relaciona cada amostra às faixas de nota da Fase 2, aplicadas sem arredondamento, supondo todos os casos válidos.

| Métrica | Amostra | Notas possíveis (total de casos conformes) |
|---|---|---|
| M1.1 | 20 casos | 4: 20; 3: 18–19; 2: 15–17; 1: 0–14 |
| M1.2 | 3 versões | 4: 3; 1: 0–2 (sem notas 2 e 3) |
| M2.1 / M2.2 | 10 ciclos | 4: 10; 2: 9; 1: 0–8 (sem nota 3) |
| M3.1 / M3.2 | 20 sessões | 4: 20; 3: 19; 2: 18; 1: 0–17 |
| M4.1 / M4.2 | 10 ensaios | 4: 10; 3: 9; 2: 7–8; 1: 0–6 |
| M5.1 | 10 eventos | Mediana dos erros, em minutos |
| M5.2 | 5 paradas | 4: 5; 2: 4; 1: 0–3 (sem nota 3) |
| M6.1 | 8 tarefas | 4: 8; 2: 7; 1: 0–6 (sem nota 3) |
| M6.2 | 20 itens | 4: 20; 3: 19; 2: 16–18; 1: 0–15 |

<p class="legenda">Tabela 6. Amostras planejadas e notas possíveis por métrica. Fonte: elaboração própria (2026).</p>

A duração da sessão de M3.1 e M3.2 foi reduzida de 5 min para 2 min 30 s para caber na janela de coleta. A unidade da métrica continua sendo a sessão, mas o tempo total de exposição cai de 100 min para 50 min: falhas raras têm menos oportunidade de aparecer, o que tende a favorecer o resultado. Esse limite deve ser declarado junto da nota na Fase 4.

Em amostras pequenas, um único defeito muda a nota e, pela regra da pior nota, pode mudar o veredito do objetivo. Por isso:

- Os resultados são **indicativos** e valem só para a amostra, a versão do app e o período observados. Não se generaliza para o app inteiro.
- Na Fase 4, apresentar sempre as contagens (por exemplo, "9 de 10") junto da nota.
- Em M1.2, as 3 versões cobrem os extremos (Android 9 e 13) e o aparelho físico, e não a faixa intermediária; qualquer versão reprovada leva à nota 1.

## 6. Registro e evidências

**Planilha única de coleta**, com uma linha por caso executado e os campos da Tabela 7:

| Campo | Conteúdo |
|---|---|
| `ID` | Identificador da execução |
| `Métrica` e `Caso` | Por exemplo `M1.1` e `T03-C02` |
| `Avaliador` e `Data/hora` | Quem executou e quando |
| `Ambiente` | Dispositivo, versão do Android e versão do app |
| `Estado` | Conforme, Defeito, Não observável ou Pendente |
| `Valor medido` | Segundos, metros, minutos ou sim/não |
| `Evidência` | Nome do arquivo ou link |
| `Observações` | Desvios e anomalias |

<p class="legenda">Tabela 7. Campos da planilha de coleta. Fonte: elaboração própria (2026).</p>

- **Evidência de todos os casos:** cada linha da planilha aponta para a evidência indicada na ficha da métrica, também nos casos Conforme, para que qualquer resultado possa ser conferido.
- **Nome do arquivo:** `<métrica>_<caso>_<dispositivo>.<ext>`, por exemplo `M1.1_T03-C02_DISP01.png`.
- **Onde ficam:** a planilha, as capturas, as listagens e os logs ficam no repositório, em `docs/fase4/imagens/`. As gravações de vídeo ficam em pasta compartilhada da equipe, indicada em [Recursos](3-recursos.md), com o link anotado no campo `Evidência`.
- **Anomalias:** falhas do app são registradas na linha do caso, com sintoma, passos para reproduzir e evidência.

## 7. Pendências antes da coleta

Os itens da Tabela 8 precisam estar preenchidos e versionados antes do primeiro caso oficial.

| Item | Situação |
|---|---|
| Itens `L01`, `L02`, `P01` e lista `A01`–`A20` (código, sentido, variante, data da consulta) | `L01` e `P01` selecionados em 18/11/2026; falta o registro oficial de ambos, além de `L02` e da lista `A01`–`A20` |
| Paradas, dias, janelas e responsáveis do campo (M5.1 e M5.2) | Pendente |
| Identificador do pacote do app, para a inspeção de M2.2 | Resolvido: `br.bus2.dfnoponto` |
| Versões do Android de M1.2, conforme [Recursos](3-recursos.md) | Em aberto: os dois aparelhos estão no Android 13 e os emuladores disponíveis recusam a instalação do app; definir a amostra efetiva antes de coletar |
| Modo de obter a distância em M5.2: confirmar se o mapa do app exibe a posição do usuário e como converter a medida da captura em metros (barra de escala do mapa, distância conhecida entre dois pontos no mesmo zoom ou coordenadas obtidas pela função de compartilhar) | Pendente, bloqueia a saída de campo |

<p class="legenda">Tabela 8. Pendências a resolver antes da coleta. Fonte: elaboração própria (2026).</p>

## Referências

[1] ISO. *ISO/IEC 25040:2011 — Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.

[2] BRASIL. *Lei nº 13.709, de 14 de agosto de 2018*. Lei Geral de Proteção de Dados Pessoais (LGPD). Diário Oficial da União: seção 1, Brasília, DF, 15 ago. 2018.

[3] Semob-DF. [Relatório de Linhas — DF no Ponto](https://www.semob.df.gov.br/dados-do-sistema-de-transporte-publico-do-df). Acesso em: 17 nov. 2026.

[4] Android Developers. [Armazenamento de dados e arquivos](https://developer.android.com/training/data-storage).

[5] GPSTest. [Registros de localização — documentação da versão 3.10.6](https://github.com/barbeau/gpstest/blob/v3.10.6/LOGGING-v3.md).

[6] Android Developers. [Location: precisão horizontal estimada](https://developer.android.com/reference/android/location/Location#getAccuracy()).

[7] Equipe Carol Shaw. [Métricas e Critérios de Julgamento — Fase 2](../fase2/metricas-julgamento.md).

---

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Definição dos catálogos, parâmetros de laboratório, proposta de amostragem de campo e auditoria oficial | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 15/11/2026 | [Bessa](https://github.com/bessazs) | 18/11/2026 |
| 02 | Redução dos ciclos de instalação e remoção para dez e ajuste da resolução da amostra | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 16/11/2026 | [Bessa](https://github.com/bessazs) | 18/11/2026 |
| 03 | Criação dos procedimentos detalhados de execução, roteiros das 12 métricas, convenção de evidências, regras de anomalias e formulários de coleta (#46); integração com os catálogos e parâmetros das versões anteriores | [João Pedro Capozzi](https://github.com/jonas3688) | 16/11/2026 | [Bessa](https://github.com/bessazs) | 18/11/2026 |
| 04 | Roteiros das seções 13 a 16 alinhados aos parâmetros das seções 3 a 7 (telas, versões, sessões, prazos, tolerância espacial, tarefas e amostra oficial), evidências versionadas em `dados/fase4/` e formulário com os 15 campos | [Bessa](https://github.com/bessazs) | 16/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |
| 05 | Reestruturação em fichas por métrica, com parâmetros em fonte única, amostras revistas (3 versões do Android, 10 ciclos, 20 sessões, 10 ensaios, 10 chegadas, 5 paradas, 20 itens), evidência de todos os casos e pendências em tabela | [Bessa](https://github.com/bessazs) | 16/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |
