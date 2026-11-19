# Fase 4 — Coleta de Dados

## Objetivo

Reunir os registros da execução dos procedimentos definidos na Fase 3 para as 12 métricas da avaliação (**M1.1 a M6.2**). A coleta documenta as observações, os resultados, os ambientes e as evidências de cada caso, fornecendo os dados necessários para calcular as métricas, julgar os objetivos G1 a G6 e responder às questões norteadoras da avaliação. A coleta deve seguir as amostras e os critérios estabelecidos nas fases anteriores, sem alterar fórmulas ou limiares.

## Organização dos registros

Os dados são organizados por métrica, seguindo os procedimentos e os recursos previstos na [Fase 3](../fase3/introducao.md). Cada registro identifica os casos avaliados e apresenta seus resultados e evidências.

### M4.1 — Mitigação de Perda de Conexão

#### Questão e critério de avaliação

A questão avaliada é **Q4.1**: o aplicativo mantém-se utilizável durante a indisponibilidade temporária da rede e retoma normalmente as consultas após a reconexão? A hipótese **H4.1** prevê **M4.1 ≥ 0,70**, isto é, pelo menos 7 ensaios conformes em uma amostra de 10.

Conforme se o app continua aberto e responsivo, informa a indisponibilidade em até 5 s e retoma a consulta em até 30 s depois da reativação dos dados móveis e do Wi-Fi.

#### Procedimento de coleta

Foram realizados 10 ensaios de interrupção de rede no aparelho `DISP-01`, com desconexão dos dados móveis e do Wi-Fi e consulta ao aplicativo. A reconexão foi seguida de nova consulta para verificar a retomada do serviço.

| ID | Caso | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|
| M4.1-01 | ENS01 | Pedro Ramos | 18/11/2026 - 20:41 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E01_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E01_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-02 | ENS02 | Pedro Ramos | 18/11/2026 - 20:41 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E02_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E02_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-03 | ENS03 | Pedro Ramos | 18/11/2026 - 20:42 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E03_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E03_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-04 | ENS04 | Pedro Ramos | 18/11/2026 - 20:45 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E04_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E04_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-05 | ENS05 | Pedro Ramos | 18/11/2026 - 20:46 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E05_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E05_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-06 | ENS06 | Pedro Ramos | 18/11/2026 - 21:11 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E06_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E06_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-07 | ENS07 | Pedro Ramos | 18/11/2026 - 21:11 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E07_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E07_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-08 | ENS08 | Pedro Ramos | 18/11/2026 - 21:12 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E08_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E08_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-09 | ENS09 | Pedro Ramos | 18/11/2026 - 21:13 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E09_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E09_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |
| M4.1-10 | ENS10 | Pedro Ramos | 18/11/2026 - 21:15 | DISP-01 · Android 13 · app 5.25.1(1149) | Conforme | Sim; aviso e retomada dentro dos limites | [M4.1_E10_DISP-01.mp4](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M4.1/M4.1_E10_DISP-01.mp4) | Dados móveis e Wi-Fi desativados; consulta retomada após reconexão |

<p class="legenda">Tabela 1. Registro da coleta da M4.1. Fonte: elaboração própria (2026).</p>

$$
M_{4.1} = \frac{E_c}{E_t} = \frac{10}{10} = 1{,}00 \ (100\%)
$$

Em que $E_c = 10$ corresponde aos ensaios que atenderam aos critérios de aviso e retomada, e $E_t = 10$ é o total de ensaios válidos.

### M6.2 — Completude do Banco

#### Questão e critério de avaliação

A questão avaliada é **Q6.2**: a base de linhas e itinerários do aplicativo está plenamente sincronizada com a Semob-DF? A hipótese **H6.2** prevê **M6.2 ≥ 0,95**, isto é, no máximo um item ausente ou divergente em uma amostra de 20. A classificação considera correspondente apenas o item encontrado no app com código, sentido e itinerário compatíveis com a fonte oficial.

#### Procedimento de coleta

Foram auditados 20 itens do Relatório de Linhas da Semob-DF, conforme a amostra e os procedimentos definidos na [Fase 3](../fase3/2-procedimentos.md#m62-completude-do-banco-lab). Para cada item, o código foi pesquisado no aplicativo e comparado com a referência oficial. O resultado de cada verificação, o ambiente e a evidência estão registrados na tabela.

Auditoria dos 20 itens sorteados do Relatório de Linhas da Semob-DF (referência 17/11/2026) contra o catálogo do aplicativo DF no Ponto. Estados possíveis: Conforme, Defeito, Não observável e Pendente.

| ID | Caso | Linha sorteada (bacia · código) | Avaliador | Data/hora | Ambiente | Estado | Valor medido | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|
| M6.2-01 | A01 | 01 · 0.110 | Pedro Ramos | 17/19/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A01_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A01_DISP01.jpg) | Circular |
| M6.2-02 | A02 | 01 · 0.504 | Pedro Ramos | 17/19/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A02_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A02_DISP01.jpg) | Circular |
| M6.2-03 | A03 | 01 · 062.1 | Pedro Ramos | 17/19/2026 - 19:55 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A03_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A03_DISP01.jpg) | Circular |
| M6.2-04 | A04 | 01 · 620.1 | Pedro Ramos | 17/19/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A04_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A04_DISP01.jpg) | Duplo Sentido |
| M6.2-05 | A05 | 02 · 0.102 | Pedro Ramos | 17/19/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A05_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A05_DISP01.jpg) | Circular |
| M6.2-06 | A06 | 02 · 0.761 | Pedro Ramos | 17/19/2026 - 19:56 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A06_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A06_DISP01.jpg) | Duplo Sentido |
| M6.2-07 | A07 | 02 · 180.2 | Pedro Ramos | 17/19/2026 - 19:57 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A07_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A07_DISP01.jpg) | Duplo Sentido |
| M6.2-08 | A08 | 02 · 2201  | Pedro Ramos | 17/19/2026 - 19:57 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A08_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A08_DISP01.jpg) | Duplo Sentido |
| M6.2-09 | A09 | 03 · 0.082 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A09_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A09_DISP01.jpg) | Circular |
| M6.2-10 | A10 | 03 · 0.809 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A10_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A10_DISP01.jpg) | Duplo Sentido |
| M6.2-11 | A11 | 03 · 119.0 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A11_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A11_DISP01.jpg) | Circular |
| M6.2-12 | A12 | 03 · 870.1 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A12_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A12_DISP01.jpg) | Circular |
| M6.2-13 | A13 | 04 · 0.008 | Pedro Ramos | 17/19/2026 - 19:58 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A13_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A13_DISP01.jpg) | Circular |
| M6.2-14 | A14 | 04 · 0.336 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A14_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A14_DISP01.jpg) | Duplo Sentido |
| M6.2-15 | A15 | 04 · 154.2 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A15_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A15_DISP01.jpg) | Duplo Sentido |
| M6.2-16 | A16 | 04 · 933.1 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A16_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A16_DISP01.jpg) | Circular |
| M6.2-17 | A17 | 05 · 0.005 | Pedro Ramos | 17/19/2026 - 19:59 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A17_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A17_DISP01.jpg) | Circular |
| M6.2-18 | A18 | 05 · 0.400 | Pedro Ramos | 17/19/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A18_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A18_DISP01.jpg) | Duplo Sentido |
| M6.2-19 | A19 | 05 · 0.808 | Pedro Ramos | 17/19/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A19_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A19_DISP01.jpg) | Duplo Sentido |
| M6.2-20 | A20 | 05 · 158.6 | Pedro Ramos | 17/19/2026 - 20:00 | DISP01 · Android 13 · app 5.25.1(1149) | Conforme | Sim | [M6.2_A20_DISP01.jpg](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/blob/main/dados/fase4/M6.2/M6.2_A20_DISP01.jpg) | Duplo Sentido |

<p class="legenda">Tabela 1. Registro da coleta da M6.2. Fonte: elaboração própria (2026).</p>

$$
M_{6.2} = \frac{L_c}{L_t} = \frac{20}{20} = 1{,}00 \ (100\%)
$$

Em que $L_c = 20$ corresponde aos itens da amostra encontrados no app com código, sentido e itinerário correspondentes, e $L_t = 20$ é o total de itens auditados.