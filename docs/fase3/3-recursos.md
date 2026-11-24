# Fase 3 — Recursos

## 1. Objetivo

Este documento lista os recursos necessários para executar a avaliação do aplicativo **DF no Ponto** para Android, conforme o método descrito em [Método de Avaliação](1-metodo.md) e as fichas por métrica de [Procedimentos de Execução](2-procedimentos.md).


## 2. Dispositivos e ambientes de execução

### 2.1 Dispositivos físicos

| ID | Fabricante e modelo | Tela | Android | Métricas atendidas | Observações |
| :--- | :--- | :--- | :--- | :--- | :--- |
| DISP-01 | Samsung Galaxy S20 FE 5G (`SM-G781B`), serial `RXCT500A02D` | 6,5", 1080 × 2400 px; densidade física de 480 dpi, com ajuste de 450 dpi aplicado pelo usuário | 13 (API 33, One UI 5.1) | Campo: M5.2. Laboratório: M4.1 e M6.2 | Valores lidos no aparelho em 19/11/2026. A escala de fonte original é 0,9. |
| DISP-02 | Xiaomi Redmi Note 11S (`2201117SY`), serial `QCPNDMG6X4XKOV7X` | 6,43", 1080 × 2400 px, 440 dpi (densidade efetiva lida no aparelho) | 13 (API 33) | Campo: M5.1 . Laboratório: M1.1 , M1.2, M2.1, M2.2, M3.1, M3.2, M4.2 e M6.1 | Valores lidos no aparelho em 17/11/2026, com o app na versão 5.25.1. A escala de fonte original é 0,92.. |

<p class="legenda">Tabela 1. Dispositivos físicos da avaliação. Fonte: elaboração própria (2026).</p>

**As métricas que dependem do `adb` são executadas no `DISP-02`:** M1.1 (configuração de tela, densidade e escala de fonte), M2.2 (listagem dos diretórios antes e depois da desinstalação) e o registro de log de M3.1. Para isso, o aparelho precisa da chave **"Depuração USB (Configurações de segurança)"** das opções do desenvolvedor do MIUI, além da depuração USB comum; sem ela, o Android recusa os comandos com `SecurityException`.

A divisão entre os dois aparelhos é operacional: permite que dois avaliadores trabalhem em paralelo, conforme o [Cronograma](4-cronograma.md), e acompanha a disponibilidade de cada aparelho no momento de cada bateria. Com exceção das que dependem do `adb`, as métricas de laboratório não exigem um aparelho específico, apenas um aparelho físico com a versão de referência do aplicativo. Cada linha da planilha de coleta registra o aparelho, o modelo, a versão do Android e a versão do app, de modo que a rastreabilidade se mantém mesmo com a alocação variando.



### 2.2 Emuladores

| ID | Ferramenta | Perfil | Versão do Android | Métricas atendidas | Situação |
| :--- | :--- | :--- | :--- | :--- | :--- |
| EMU-01 | Android Studio Rabbit 2, 2026.2.2 Patch 1 | *Medium Phone*, imagem *Google Play*, ABI **x86** | 9 (API 28, "Pie") | M1.2 | Criado em 21/11/2026. **Aplicativo não instalável** |
| EMU-02 | Android Studio Rabbit 2, 2026.2.2 Patch 1 | *Medium Phone (2)*, imagem *Google Play*, ABI **x86** | 10 (API 29, "Q") | M1.2 | Criado em 21/11/2026. **Aplicativo não instalável** |
| EMU-03 | Android Studio Rabbit 2, 2026.2.2 Patch 1 | *Medium Phone API 37.0*, imagem *Google Play*, ABI **x86_64** | 17 (API 37, "CinnamonBun") | M1.2 | Criado em 21/11/2026. **Aplicativo não instalável** |

<p class="legenda">Tabela 2. Emuladores preparados. Fonte: elaboração própria (2026).</p>




### 2.3 Estação de trabalho

| Item | Valor |
| :--- | :--- |
| Sistema operacional | Linux 6.18.55-1-lts (x86_64) |
| Android Debug Bridge | 1.0.41, pacote `android-tools` 37.0.0, instalado em `/usr/bin/adb` |
| Android Studio | Rabbit 2, 2026.2.2 Patch 1 (build `AI-262.10968.63.2622.16840690`) |

<p class="legenda">Tabela 3. Estação de trabalho usada na coleta de laboratório. Fonte: elaboração própria (2026).</p>

## 3. Ferramentas

| Ferramenta | Uso previsto | Versão | Métricas | Situação |
| :--- | :--- | :--- | :--- | :--- |
| `adb` (pacote *platform-tools* / `android-tools`) | Configurar tela, densidade e escala de fonte; listar o armazenamento; capturar telas; ler o log | 1.0.41 (`android-tools` 37.0.0) | M1.1, M2.2, M3.1 | Instalado e autorizado no `DISP-02` |
| `logcat` (incluído no `adb`) | Registrar exceções fatais durante as sessões | 1.0.41 | M3.1 | Disponível |
| `scripts/m*` | Auxiliar na coleta de metricas que necessitam do `adb` | M1, M2, M3 e M6.1 | Disponível |
| Gravação de tela nativa do aparelho, com "Mostrar toques" ativado | Registrar sessões e ensaios, com marcação de tempo | Nativa de cada aparelho | M1.2, M3.1, M3.2, M4.1, M4.2 | Disponível |
| Configurações do aparelho: dados móveis e Wi-Fi | Induzir a indisponibilidade de rede prevista em M4.1, desligando as duas conexões | Nativas do sistema | M4.1 | Disponível |
| Configurações do aparelho: serviço de localização | Induzir a perda de localização prevista em M4.2 | Nativas do sistema | M4.2 | Disponível |
| GPSTest | Obter a posição de referência (WGS84), a precisão horizontal e o horário UTC | 3.10.6 | M5.2 | Disponível |
| `adb` na estação de trabalho | Ler e registrar modelo, versão, resolução, densidade e escala de fonte de cada aparelho | 1.0.41 | Preparação | Executado nos dois aparelhos |
| Planilha de coleta | Registrar todas as execuções, conforme a seção 6 dos procedimentos | Formato CSV, versionado no repositório | Todas | Gerada em `dados/fase4/` |
| Android Studio e emulador | Executar as versões do Android indisponíveis nos aparelhos | Rabbit 2, 2026.2.2 Patch 1 | M1.2 | Disponível |

<p class="legenda">Tabela 4. Ferramentas da avaliação. Fonte: elaboração própria (2026).</p>

A indisponibilidade de rede de M4.1 é induzida pelo desligamento dos dados móveis **e** do Wi-Fi nas configurações do aparelho, e não pelo modo avião, para reproduzir a perda de conectividade sem desativar outros rádios. A perda de localização de M4.2 é induzida pelo desligamento do serviço de localização, também pelas configurações do aparelho.

Se uma ferramenta planejada não estiver disponível, registrar a alternativa utilizada e o impacto na execução ou na interpretação dos resultados.

## 4. Ambientes de avaliação

### 4.1 Ambiente de laboratório


- **Dispositivos:** `DISP-02` e, quando aplicável, os emuladores da seção 2.2.
- **Conectividade:** Wi-Fi estável para as métricas que dependem de dados; a condição de rede de cada execução é registrada na planilha.
- **Preparação dos dispositivos:** aplicativo na versão de referência, cache limpo quando o roteiro exigir e sem aplicativos concorrentes de alto consumo em segundo plano.
- **Métricas executadas:** M1.1, M1.2, M2.1, M2.2, M3.1, M3.2, M4.1, M4.2, M6.1 e M6.2.

### 4.2 Ambiente de campo

- **Paradas selecionadas:** a confirmar, com código, sentido e linhas atendidas.
- **Critério de seleção:** paradas do itinerário de `L01` e `L02`, com condições seguras de observação.
- **Datas e faixas de horário:** 18/11/2026 e 19/11/2026, em dois blocos, conforme o [Cronograma](4-cronograma.md); horários a confirmar.
- **Dispositivos:** `DISP-01`, com GPSTest instalado, para M5.2; `DISP-02` para M5.1.
- **Métricas executadas:** M5.1 e M5.2.

Os locais e horários devem ser registrados junto aos dados de cada execução. Não selecionar nem substituir locais retrospectivamente em função dos resultados observados.

## 5. Dados de entrada

| Dado | Uso previsto | Fonte | Referência | Situação |
| :--- | :--- | :--- | :--- | :--- |
| Aplicativo avaliado | Objeto da avaliação | Google Play Store | Pacote `br.bus2.dfnoponto`, versão 5.25.1;  | Instalado no `DISP-02` |
| Catálogo de telas e configurações | Casos de M1.1 | Seção 3.3 dos procedimentos | `T01`–`T05` × `C01`–`C04` | Definido |
| Catálogo de tarefas essenciais | M6.1 e M1.2 | Seção 3.2 dos procedimentos | `TE01`–`TE08` | Definido |
| Itens do catálogo oficial | M6.2, e entradas de M6.1, M1.1 e M1.2 | [Pesquisa por Linhas da Semob-DF](https://dfnoponto.semob.df.gov.br/pesquisa-por-linhas/) | `L01` = linha 0.089 (Setor P Sul / Av. Comercial); `P01` = parada N1 P Norte, Ceilândia; `L02` e `A01`–`A20` a definir | `L01` e `P01` selecionados em 18/11/2026; registro oficial coletado 19/11/2026 |
| Posições de referência | M5.2 | GPSTest, em campo | WGS84, precisão informada de até 10 m, em 5 paradas | A coletar |
| Previsões e chegadas | M5.1 | Aplicativo e observação em campo, no `DISP-02` | Data completa e fuso `America/Sao_Paulo` | Coletada em 21/11/2026, com 10 pares válidos |


<p class="legenda">Tabela 5. Dados de entrada da avaliação. Fonte: elaboração própria (2026).</p>


## 6. Papéis e responsabilidades

| Papel | Responsabilidades | Integrante |
| :--- | :--- | :--- |
| Responsável pela execução | Preparar o ambiente, seguir as fichas e registrar os resultados do laboratório | Vitor Bessa e Pedro Ramos |
| Responsável pelos registros | Conferir o preenchimento da planilha, a nomenclatura e a vinculação das evidências | Vitor Bessa e Pedro Ramos |
| Responsável pela coleta de campo | Conduzir as observações de M5.1 e M5.2 e registrar data, horário e local | Vitor Bessa e Pedro Ramos |
| Revisor dos procedimentos | Executar o teste-piloto, resolver ambiguidades e auditar 10% dos registros | Vitor Bessa |

<p class="legenda">Tabela 6. Papéis da avaliação. Fonte: elaboração própria (2026).</p>

Uma mesma pessoa pode exercer mais de um papel, mas o laboratório e o campo ocorrem em paralelo e exigem avaliadores distintos. Os responsáveis devem ser registrados antes do teste-piloto.

## 7. Riscos e alternativas

| Risco ou dependência | Impacto possível | Alternativa ou mitigação | Situação |
| :--- | :--- | :--- | :--- |
| Aplicativo incompatível com os emuladores disponíveis | Cobertura parcial de M1.2 | Usar ambiente ARM ou registrar a limitação da amostra | Materializado em 21/11/2026. As tentativas no Android 9, 10 e 17 ficaram [Não observáveis](../fase4/1-coleta.md#m12-adaptabilidade-de-sistema-operacional) por bloqueio da loja nas imagens x86/x86_64. O plano de três versões foi mantido como referência. |
| Os dois aparelhos na mesma versão do Android | M1.2 depende inteiramente dos emuladores | Mesma mitigação acima; declarar a faixa de versões efetivamente verificada | Confirmado |
| Mapa do aplicativo sem indicação da posição do usuário | Impossibilidade de medir a distância diretamente na captura em M5.2 | Obter as coordenadas das duas posições e aplicar a fórmula de haversine da Fase 2 | Pendente do teste-piloto |
| Defasagem da posição dos veículos no aplicativo, da ordem de um minuto | Inviabiliza medir o erro posicional de veículos | M5.2 apurada somente com paradas, que são entidades fixas; veículos ficam fora da métrica | Resolvido em 19/11/2026, com a ficha de M5.2 atualizada |
| Indisponibilidade ou alteração da fonte oficial da Semob-DF | Dificuldade para reproduzir M6.2 | Arquivar a captura datada da consulta antes da auditoria | Pendente da seleção da amostra |
| Chuva, condições inseguras ou ausência de operação da linha | Interrupção da coleta de campo | Usar as janelas de contingência do cronograma e registrar a alteração | Em aberto |
| Exposição de dados pessoais em gravações ou fotos | Risco de privacidade | Não enquadrar rostos, documentos nem placas de terceiros; revisar as evidências antes de arquivar | Regra permanente dos procedimentos |

<p class="legenda">Tabela 7. Riscos e mitigações. Fonte: elaboração própria (2026).</p>

## 8. Relação com os procedimentos

Antes da coleta, conferir se:

- os dispositivos e emuladores cobrem os casos de M1.1 e as versões de M1.2;
- as ferramentas permitem executar e registrar os ensaios, com as permissões necessárias concedidas;
- os dados de entrada têm identificação e data de referência;
- os ambientes de laboratório e de campo estão definidos;
- os responsáveis por cada papel estão registrados;
- as alternativas para os riscos em aberto estão decididas.

## Histórico de Versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação da estrutura inicial do inventário de recursos da avaliação | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |
| 02 | Identificação dos aparelhos, estação de trabalho, ferramentas e versões, divisão das métricas entre laboratório e campo, dados de entrada e riscos observados no teste-piloto | [Bessa](https://github.com/bessazs) | 18/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |
| 03 | Registro dos dados do `DISP-01` lidos por `adb` (serial, modelo, densidade física e ajustada, escala de fonte) e dos seriais dos dois aparelhos | [Vitor Bessa](https://github.com/bessazs) | 19/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |
| 04 | Alocação efetiva das métricas por aparelho (M4.1 e M6.2 no `DISP-01`, M1.1 no `DISP-02`), evidências consolidadas em `dados/fase4/` e M5.2 restrita a paradas | [Vitor Bessa](https://github.com/bessazs) | 19/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |