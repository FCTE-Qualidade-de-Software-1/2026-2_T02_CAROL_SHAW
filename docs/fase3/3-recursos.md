# Fase 3 — Recursos

## 1. Objetivo

Este documento lista os recursos necessários para executar a avaliação do aplicativo **DF no Ponto** para Android, conforme o método descrito em [Método de Avaliação](1-metodo.md) e as fichas por métrica de [Procedimentos de Execução](2-procedimentos.md).


## 2. Dispositivos e ambientes de execução

### 2.1 Dispositivos físicos

| ID | Fabricante e modelo | Tela | Android | Métricas atendidas | Observações |
| :--- | :--- | :--- | :--- | :--- | :--- |
| DISP-01 | Samsung Galaxy S20 FE 5G (`SM-G781B`), serial `RXCT500A02D` | 6,5", 1080 × 2400 px; densidade física de 480 dpi, com ajuste de 450 dpi aplicado pelo usuário | 13 (API 33, One UI 5.1) | Campo: M5.1 e M5.2 | Valores lidos no aparelho em 19/11/2026. A escala de fonte original é 0,9. O aparelho está com o zoom de tela alterado (`Override density: 450`); se vier a executar métricas de laboratório, restaurar a densidade física antes |
| DISP-02 | Xiaomi Redmi Note 11S (`2201117SY`), serial `QCPNDMG6X4XKOV7X` | 6,43", 1080 × 2400 px, 440 dpi (densidade efetiva lida no aparelho) | 13 (API 33) | Laboratório: M1.1, M1.2, M2.1, M2.2, M3.1, M3.2, M4.1, M4.2, M6.1 e M6.2 | Valores lidos no aparelho em 17/11/2026, com o app na versão 5.25.1. A escala de fonte original é 0,92, e não 1,0 |

<p class="legenda">Tabela 1. Dispositivos físicos da avaliação. Fonte: elaboração própria (2026).</p>

**Todas as métricas que dependem do `adb` são executadas no `DISP-02`:** M1.1 (configuração de tela, densidade e escala de fonte), M2.2 (listagem dos diretórios antes e depois da desinstalação) e o registro de log de M3.1. Para isso, o aparelho precisa da chave **"Depuração USB (Configurações de segurança)"** das opções do desenvolvedor do MIUI, além da depuração USB comum; sem ela, o Android recusa os comandos com `SecurityException`, como ocorreu no teste-piloto de 17/11/2026.

A divisão entre os dois aparelhos permite executar laboratório e campo em paralelo, conforme o [Cronograma](4-cronograma.md).

Os perfis de tela `C01` a `C04` de M1.1 não correspondem à configuração nativa de nenhum dos dois aparelhos, que são ambos 1080 × 2400. Eles são aplicados por `adb` e conferidos automaticamente pelo script `scripts/m1-1-telas.sh`, que interrompe a bateria se a configuração não tiver sido aplicada e restaura o aparelho ao final.

### 2.2 Emuladores

| ID | Ferramenta | Perfil | Versão do Android | Métricas atendidas | Situação |
| :--- | :--- | :--- | :--- | :--- | :--- |
| EMU-01 | Android Studio Rabbit 2, 2026.2.2 Patch 1 | A definir, com imagem *Google Play* | 9 (API 28) | M1.2 | A definir |
| EMU-02 | Android Studio Rabbit 2, 2026.2.2 Patch 1 | A definir, com imagem *Google Play* | A definir, diferente de 9 e 13 | M1.2 | A definir |

<p class="legenda">Tabela 2. Emuladores previstos. Fonte: elaboração própria (2026).</p>

**Os dois aparelhos físicos estão no Android 13**, portanto fornecem uma única versão distinta. As outras duas versões de M1.2 dependem inteiramente dos emuladores, e três pontos continuam abertos:

- a imagem precisa ser do tipo *Google Play*, para que o aplicativo possa ser instalado pela distribuição oficial;
- o aplicativo pode publicar binários apenas para ARM, o que impediria a instalação em imagens x86_64 sem tradução ARM, especialmente na API 28;
- o **Waydroid foi descartado**: a Play Store o recusa como dispositivo incompatível, o que é limitação do ambiente e não defeito do aplicativo, e por isso não entra no denominador de M1.2.

Se nenhum emulador puder ser preparado, a amostra de M1.2 fica restrita à versão dos aparelhos físicos. Nesse caso, a redução deve ser registrada antes da coleta, com atualização da ficha de M1.2, da tabela de notas possíveis (seção 5 dos procedimentos), da hipótese H1.2 e das ameaças à validade em [Método de Avaliação](1-metodo.md).

Os emuladores não substituem os aparelhos físicos em métricas que dependem de instalação pela loja, de sensores, de conectividade ou de condições reais de campo.

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
| `scripts/m1-1-telas.sh` | Aplicar e conferir as configurações de tela, capturar as evidências e registrar os casos | Versão do repositório | M1.1 | Piloto pendente |
| Gravação de tela nativa do aparelho, com "Mostrar toques" ativado | Registrar sessões e ensaios, com marcação de tempo | Nativa de cada aparelho | M1.2, M3.1, M3.2, M4.1, M4.2 | Disponível |
| Configurações do aparelho: dados móveis e Wi-Fi | Induzir a indisponibilidade de rede prevista em M4.1, desligando as duas conexões | Nativas do sistema | M4.1 | Disponível |
| Configurações do aparelho: serviço de localização | Induzir a perda de localização prevista em M4.2 | Nativas do sistema | M4.2 | Disponível |
| GPSTest | Obter a posição de referência (WGS84), a precisão horizontal e o horário UTC | 3.10.6 | M5.2 | A instalar no `DISP-01` |
| `adb` na estação de trabalho | Ler e registrar modelo, versão, resolução, densidade e escala de fonte de cada aparelho | 1.0.41 | Preparação | Executado nos dois aparelhos |
| Recurso de leitura de distância no mapa | Converter a medida da captura em metros | A definir | M5.2 | Pendente do teste-piloto |
| Planilha de coleta | Registrar todas as execuções, conforme a seção 6 dos procedimentos | Formato CSV, versionado no repositório | Todas | Gerada em `dados/fase4/` |
| Android Studio e emulador | Executar as versões do Android indisponíveis nos aparelhos | Rabbit 2, 2026.2.2 Patch 1 | M1.2 | Perfis a definir |

<p class="legenda">Tabela 4. Ferramentas da avaliação. Fonte: elaboração própria (2026).</p>

A indisponibilidade de rede de M4.1 é induzida pelo desligamento dos dados móveis **e** do Wi-Fi nas configurações do aparelho, e não pelo modo avião, para reproduzir a perda de conectividade sem desativar outros rádios. A perda de localização de M4.2 é induzida pelo desligamento do serviço de localização, também pelas configurações do aparelho.

Se uma ferramenta planejada não estiver disponível, registrar a alternativa utilizada e o impacto na execução ou na interpretação dos resultados.

## 4. Ambientes de avaliação

### 4.1 Ambiente de laboratório

- **Local:** a confirmar.
- **Dispositivos:** `DISP-02` e, quando aplicável, os emuladores da seção 2.2.
- **Conectividade:** Wi-Fi estável para as métricas que dependem de dados; a condição de rede de cada execução é registrada na planilha.
- **Preparação dos dispositivos:** aplicativo na versão de referência, cache limpo quando o roteiro exigir e sem aplicativos concorrentes de alto consumo em segundo plano.
- **Idioma da interface:** o aplicativo foi observado em inglês no `DISP-02` em 18/11/2026. O idioma fica registrado porque os nomes de tela e as evidências dependem dele; se mudar durante a coleta, anotar na planilha.
- **Métricas executadas:** M1.1, M1.2, M2.1, M2.2, M3.1, M3.2, M4.1, M4.2, M6.1 e M6.2.

### 4.2 Ambiente de campo

- **Paradas selecionadas:** a confirmar, com código, sentido e linhas atendidas.
- **Critério de seleção:** paradas do itinerário de `L01` e `L02`, com condições seguras de observação.
- **Datas e faixas de horário:** 18/11/2026 e 19/11/2026, em dois blocos, conforme o [Cronograma](4-cronograma.md); horários a confirmar.
- **Dispositivo:** `DISP-01`, com GPSTest instalado.
- **Métricas executadas:** M5.1 e M5.2.

Os locais e horários devem ser registrados junto aos dados de cada execução. Não selecionar nem substituir locais retrospectivamente em função dos resultados observados.

## 5. Dados de entrada

| Dado | Uso previsto | Fonte | Referência | Situação |
| :--- | :--- | :--- | :--- | :--- |
| Aplicativo avaliado | Objeto da avaliação | Google Play Store | Pacote `br.bus2.dfnoponto`, versão 5.25.1;  | Instalado no `DISP-02` |
| Catálogo de telas e configurações | Casos de M1.1 | Seção 3.3 dos procedimentos | `T01`–`T05` × `C01`–`C04` | Definido |
| Catálogo de tarefas essenciais | M6.1 e M1.2 | Seção 3.2 dos procedimentos | `TE01`–`TE08` | Definido |
| Itens do catálogo oficial | M6.2, e entradas de M6.1, M1.1 e M1.2 | [Pesquisa por Linhas da Semob-DF](https://dfnoponto.semob.df.gov.br/pesquisa-por-linhas/) | `L01` = linha 0.089 (Setor P Sul / Av. Comercial); `P01` = parada N1 P Norte, Ceilândia; `L02` e `A01`–`A20` a definir | `L01` e `P01` selecionados em 18/11/2026; registro oficial pendente |
| Posições de referência | M5.2 | GPSTest, em campo | WGS84, precisão informada de até 10 m | A coletar |
| Previsões e chegadas | M5.1 | Aplicativo e observação em campo | Data completa e fuso `America/Sao_Paulo` | A coletar |


<p class="legenda">Tabela 5. Dados de entrada da avaliação. Fonte: elaboração própria (2026).</p>


## 6. Papéis e responsabilidades

| Papel | Responsabilidades | Integrante |
| :--- | :--- | :--- |
| Responsável pela execução | Preparar o ambiente, seguir as fichas e registrar os resultados do laboratório | A definir |
| Responsável pelos registros | Conferir o preenchimento da planilha, a nomenclatura e a vinculação das evidências | A definir |
| Responsável pela coleta de campo | Conduzir as observações de M5.1 e M5.2 e registrar data, horário e local | A definir |
| Revisor dos procedimentos | Executar o teste-piloto, resolver ambiguidades e auditar 10% dos registros | A definir |

<p class="legenda">Tabela 6. Papéis da avaliação. Fonte: elaboração própria (2026).</p>

Uma mesma pessoa pode exercer mais de um papel, mas o laboratório e o campo ocorrem em paralelo e exigem avaliadores distintos. Os responsáveis devem ser registrados antes do teste-piloto.

## 7. Riscos e alternativas

| Risco ou dependência | Impacto possível | Alternativa ou mitigação | Situação |
| :--- | :--- | :--- | :--- |
| Aplicativo incompatível com os emuladores disponíveis | Redução da amostra de M1.2 | Testar imagem `arm64-v8a` na API 28; se não funcionar, registrar a limitação e ajustar a amostra antes da coleta | Em aberto |
| Os dois aparelhos na mesma versão do Android | M1.2 depende inteiramente dos emuladores | Mesma mitigação acima; declarar a faixa de versões efetivamente verificada | Confirmado |
| Mapa do aplicativo sem indicação da posição do usuário | Impossibilidade de medir a distância diretamente na captura em M5.2 | Obter as coordenadas das duas posições e aplicar a fórmula de haversine da Fase 2 | Pendente do teste-piloto |
| Aplicativo sem horário da posição do veículo | Impossibilidade de aplicar a diferença temporal máxima em M5.2 | Observar somente veículos parados e declarar a limitação | Pendente do teste-piloto |
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

## Histórico de versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação da estrutura inicial do inventário de recursos da avaliação | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 | — | — |
| 02 | Identificação dos aparelhos, estação de trabalho, ferramentas e versões, divisão das métricas entre laboratório e campo, dados de entrada e riscos observados no teste-piloto | [Bessa](https://github.com/bessazs) | 18/11/2026 | — | — |
| 03 | Registro dos dados do `DISP-01` lidos por `adb` (serial, modelo, densidade física e ajustada, escala de fonte) e dos seriais dos dois aparelhos | [Bessa](https://github.com/bessazs) | 19/11/2026 | — | — |
