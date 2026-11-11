---
sidebar_position: 2
title: Métricas e Julgamento
description: Detalhamento das métricas baseadas na ISO/IEC 25023 e critérios de julgamento para a avaliação do aplicativo DF no Ponto
---

# Métricas e Critérios de Julgamento

As métricas respondem às questões da [hierarquia GQM](planejamento-objetivos.md) e adaptam a medição de qualidade da **ISO/IEC 25023:2016** ao **DF no Ponto**. Onze expressam proporções entre 0 e 1, nas quais maior é melhor; a M5.1 expressa o erro temporal absoluto mediano, em minutos, no qual menor é melhor.

## Escalas de Medição e Tipos de Dados

A escala define o significado dos valores e as operações permitidas; o intervalo numérico, como 0 a 1, não determina sua classificação. Adota-se a classificação de Stevens apresentada pelo NIST:

| Escala | Propriedade | Aplicação nesta avaliação |
| :--- | :--- | :--- |
| **Nominal** | Categorias sem distâncias numéricas entre elas. | Aprovado/reprovado; ocorrência/ausência de crash; identificadores de dispositivo, SO ou linha. A codificação 0/1 identifica categorias antes da contagem. |
| **Ordinal** | Categorias ordenadas, sem intervalos necessariamente iguais. | Notas de 1 a 4: Crítico, Insuficiente, Bom e Excelente. |
| **Intervalo** | Diferenças comparáveis e origem convencional. | Instantes de previsão e chegada da M5.1 na mesma referência temporal; zero não representa ausência de tempo. |
| **Razão** | Diferenças e razões comparáveis; zero representa ausência da quantidade medida. | Contagens, proporções favoráveis e durações de erro absoluto. É a escala dos resultados das 12 métricas. |

Nas proporções, a escala de razão descreve a **frequência de resultados favoráveis**, não a qualidade global do aplicativo. Na M5.1, o erro absoluto é uma duração cujo zero representa ausência de desvio.

## Regras Gerais de Cálculo

1. **Preparação:** definir versão do app, dispositivos, SOs, casos, repetições e critérios de aprovação antes da coleta. Registrar por observação identificador, data/hora, ambiente, resultado e motivo de falha ou exclusão.
2. **Contagem:** usar inteiros não negativos e a mesma unidade no numerador e denominador; o numerador representa um subconjunto do total. Contar cada unidade uma vez, conforme sua métrica.
3. **Ausência de dados:** denominador zero ou amostra temporal vazia resulta em **Não avaliado (sem dados)**, sem nota. Identificar registros não observáveis ou inválidos, informando motivo e quantidade de exclusões. Falhas observadas do app integram a avaliação e não podem ser excluídas para melhorar o resultado.
4. **Coleta parcial:** informar as quantidades previstas, executadas e válidas. Identificar resultados parciais; casos obrigatórios pendentes impedem declarar o objetivo satisfeito.
5. **Apresentação:** expressar proporções adimensionais em $[0,1]$ ou em percentual por $100 \times M$. Aplicar os limiares ao valor entre 0 e 1; para M5.1, usar minutos. Informar as contagens de entrada ou o tamanho da amostra temporal.
6. **Precisão:** aplicar os limiares antes de arredondar e apresentar duas casas decimais. Resultados fora do domínio exigem revisão dos registros e do cálculo, sem ajuste artificial para 0 ou 1.

## Detalhamento das Métricas

A tabela consolida equações, entradas, escalas e unidades. As contagens usam a unidade indicada em cada linha; as entradas temporais de M5.1 são detalhadas na subseção da mediana.

| Métrica / Questão | Equação | Variáveis de entrada e unidade de contagem | Escala, unidade e domínio do resultado | Interpretação |
| :--- | :--- | :--- | :--- | :--- |
| **M1.1 - Adaptabilidade de Hardware (Telas)** *(Q1.1)* | $M_{1.1} = \frac{T_s}{T_t}$ | $T_s$: casos de tela × configuração aprovados, sem sobreposição ou distorção que impeça a tarefa.<br>$T_t$: total de casos de tela × configuração avaliados. | **Razão**; adimensional; $[0,1]$. | Proporção de casos com interface adaptada; maior é melhor. |
| **M1.2 - Adaptabilidade de SO** *(Q1.2)* | $M_{1.2} = \frac{O_s}{O_t}$ | $O_s$: versões de SO aprovadas em todos os fluxos críticos definidos.<br>$O_t$: total de versões de SO avaliadas, identificadas pelo sistema e sua versão. | **Razão**; adimensional; $[0,1]$. | Proporção de versões compatíveis na amostra; maior é melhor. |
| **M2.1 - Sucesso de Instalação** *(Q2.1)* | $M_{2.1} = \frac{I_s}{I_t}$ | $I_s$: ciclos de instalação limpa concluídos na primeira tentativa sem erro.<br>$I_t$: total de ciclos de instalação limpa avaliados. | **Razão**; adimensional; $[0,1]$. | Proporção de ciclos com instalação bem-sucedida; maior é melhor. |
| **M2.2 - Resíduo Pós-Desinstalação** *(Q2.2)* | $M_{2.2} = 1 - \frac{D_r}{D_t}$ | $D_r$: desinstalações com pelo menos um arquivo residual atribuível ao app nos locais inspecionados.<br>$D_t$: total de desinstalações com inspeção válida dos locais definidos. | **Razão**; adimensional; $[0,1]$. | Proporção de desinstalações sem resíduos observados; maior é melhor. Não mede bytes residuais. |
| **M3.1 - Sessões sem Crashes** *(Q3.1)* | $M_{3.1} = 1 - \frac{S_c}{S_t}$ | $S_c$: sessões com pelo menos um encerramento inesperado.<br>$S_t$: total de sessões avaliadas quanto a crashes, incluindo as interrompidas por crash. | **Razão**; adimensional; $[0,1]$. | Proporção de sessões sem crash; maior é melhor. |
| **M3.2 - Sessões sem Congelamentos** *(Q3.2)* | $M_{3.2} = 1 - \frac{S_a}{S_t}$ | $S_a$: sessões com pelo menos um congelamento da interface por mais de 5 segundos.<br>$S_t$: total de sessões avaliadas quanto a congelamentos, incluindo as afetadas. | **Razão**; adimensional; $[0,1]$. | Proporção de sessões sem congelamento observado; maior é melhor. |
| **M4.1 - Evitação de Quebra (Conexão)** *(Q4.1)* | $M_{4.1} = \frac{R_s}{R_t}$ | $R_s$: interrupções de rede induzidas com tratamento aprovado.<br>$R_t$: total de interrupções de rede induzidas e avaliadas. | **Razão**; adimensional; $[0,1]$. | Proporção de interrupções de rede tratadas; maior é melhor. |
| **M4.2 - Tratamento de Perda de GPS** *(Q4.2)* | $M_{4.2} = \frac{G_s}{G_t}$ | $G_s$: desativações de localização induzidas com tratamento aprovado.<br>$G_t$: total de desativações de localização induzidas e avaliadas. | **Razão**; adimensional; $[0,1]$. | Proporção de perdas de localização tratadas; maior é melhor. |
| **M5.1 - Precisão de Tempo** *(Q5.1)* | $e_i = \frac{\lvert t_i^{obs} - t_i^{prev} \rvert}{60}$<br>$M_{5.1} = \operatorname{mediana}(e_1,\ldots,e_n)$ | $t_i^{obs}$: instante de chegada observado, em segundos.<br>$t_i^{prev}$: instante de chegada previsto pelo app para o mesmo evento, em segundos.<br>$n$: número de pares válidos de previsão/chegada.<br>$e_i$: erro absoluto do par $i$, em minutos. | **Razão**; minutos; $[0,+\infty)$. | Erro absoluto mediano da previsão; menor é melhor. |
| **M5.2 - Correção de Dados (Mapa)** *(Q5.2)* | $M_{5.2} = \frac{P_s}{P_t}$ | $P_s$: observações posicionais com distância $d_i \le \varepsilon$ da referência.<br>$P_t$: total de observações posicionais válidas.<br>$d_i$: distância à posição de referência, em metros.<br>$\varepsilon$: tolerância espacial previamente fixada, em metros. | **Razão**; adimensional; $[0,1]$. | Proporção de posições dentro da tolerância; maior é melhor. |
| **M6.1 - Cobertura de Tarefas Essenciais** *(Q6.1)* | $M_{6.1} = 1 - \frac{F_f}{F_t}$ | $F_f$: tarefas do catálogo essencial que falharam na execução.<br>$F_t$: total de tarefas do catálogo essencial, com avaliação completa de cada tarefa. | **Razão**; adimensional; $[0,1]$. | Proporção de tarefas essenciais concluídas com sucesso; maior é melhor. |
| **M6.2 - Completude do Banco** *(Q6.2)* | $M_{6.2} = \frac{L_c}{L_t}$ | $L_c$: linhas/itinerários da amostra oficial encontrados no app com código, sentido e itinerário correspondentes.<br>$L_t$: total de linhas/itinerários oficiais auditados na amostra. | **Razão**; adimensional; $[0,1]$. | Proporção de itens oficiais cobertos pelo catálogo consultável do app; maior é melhor. |

Em M3.1/M3.2, anteriormente denominadas “Densidade de Falhas” e “Densidade de ANRs”, cada sessão afetada é contada uma vez. As contagens devem atender a $0 \le S_c \le S_t$ e $0 \le S_a \le S_t$; informar separadamente a amostra válida $S_t$ de cada métrica.

### Fontes dos Dados e Procedimentos de Coleta

| Métrica | Fonte dos dados | Procedimento e critério de classificação |
| :--- | :--- | :--- |
| **M1.1** | Capturas de tela e registros em dispositivos físicos ou emuladores do escopo. | Registrar resolução, orientação e tamanho de fonte de cada par tela × configuração. Executar a tarefa e aprovar se os controles e informações necessários estiverem visíveis e utilizáveis, sem corte ou sobreposição impeditivos. |
| **M1.2** | Relatório de compatibilidade por SO e versão. | Executar o mesmo catálogo de fluxos críticos em cada versão, registrando dispositivo e configuração. Aprovar somente se todos os fluxos terminarem sem erro de compatibilidade impeditivo. |
| **M2.1** | Registro de download e instalação, com logs quando disponíveis. | Começar com o app ausente e usar a distribuição oficial definida. Registrar o resultado da primeira tentativa de cada ciclo; tentativas posteriores não alteram uma falha inicial. |
| **M2.2** | Inspeção de arquivos e armazenamento antes e depois da remoção. | Definir locais acessíveis e arquivos atribuíveis ao app antes da coleta. Inspecionar após cada desinstalação concluída e contar uma vez em $D_r$ se houver resíduos. Inspeção inviável deve ser registrada como não observável, com o motivo. |
| **M3.1** | Relatório de sessões, gravação da execução e logs disponíveis. | Fixar roteiro e duração planejada. Registrar os encerramentos inesperados e manter sessões interrompidas por crash na amostra, classificadas como afetadas. A retomada inicia nova sessão identificada. |
| **M3.2** | Gravação das interações com marcação temporal e logs disponíveis. | Em sessões padronizadas, medir a ausência de resposta à ação do usuário e contar cada sessão com congelamento superior a 5 segundos. Carregamento com interface responsiva não conta; diagnóstico de ANR do SO exige evidência específica em log. |
| **M4.1** | Gravação da interface e registro das interrupções de rede. | Induzir uma interrupção por ensaio, com rede disponível inicialmente. Aprovar se o app permanece aberto, informa a indisponibilidade, mantém a interface responsiva e permite retomar a consulta após a reconexão. Definir previamente, no roteiro, os tempos máximos de aviso e retomada, em segundos. |
| **M4.2** | Alertas, mapa e registro das alterações do serviço de localização. | Induzir uma desativação por ensaio, com localização disponível inicialmente. Aprovar se o app permanece aberto, informa a indisponibilidade, permite consultas independentes da localização e retoma a função após a reativação. Definir previamente, no roteiro, os tempos máximos de aviso e retomada, em segundos. |
| **M5.1** | Previsão exibida e registro da chegada física do ônibus. | Parear por linha, sentido, parada e veículo/viagem identificável. Fixar a regra de captura antes da coleta; registrar data completa, fuso e instante da captura. Aplicar a mesma regra a toda a amostra, sem selecionar retrospectivamente previsões de menor erro. |
| **M5.2** | Coordenadas do app e referência independente, obtida em campo ou fonte oficial. | Registrar coordenadas, horários e referência, separando paradas e veículos. Fixar previamente a tolerância espacial e, para veículos, a diferença temporal admissível. Aplicar a verificação espacial abaixo. |
| **M6.1** | Catálogo de tarefas essenciais e relatório de execução funcional. | Fixar antes da coleta o catálogo com entradas e resultados esperados. Executar cada tarefa de ponta a ponta e contar uma vez cada tarefa que falhar. Calcular após avaliar todo o catálogo; casos pendentes mantêm o resultado incompleto. |
| **M6.2** | Catálogo oficial da Semob-DF, com data de referência, e consultas ao app. | Selecionar a amostra da fonte oficial antes da coleta, identificando código, sentido e variante de itinerário, quando houver. Auditar todos os itens; ausência ou divergência não incrementa $L_c$, e consultas repetidas não ampliam a amostra. |

### Cálculo da Mediana do Erro Temporal (M5.1)

Usar os dois instantes em segundos, na mesma referência temporal e com data completa. Se o app fornecer tempo restante, somá-lo ao instante de captura para obter a previsão. A equação de $e_i$ converte o erro para minutos.

Ordenar os erros como $e_{(1)} \le \cdots \le e_{(n)}$. Para $n > 0$:

$$
M_{5.1} =
\begin{cases}
e_{((n+1)/2)}, & \text{se } n \text{ for ímpar}, \\
\dfrac{e_{(n/2)} + e_{(n/2+1)}}{2}, & \text{se } n \text{ for par}.
\end{cases}
$$

Registrar separadamente previsões ausentes e chegadas sem identificação suficiente; esses casos não recebem erro zero.

### Verificação Espacial (M5.2)

Antes da coleta, registrar a tolerância espacial $\varepsilon > 0$ (metros) e, para veículos, a diferença temporal máxima $\Delta t_{max} \ge 0$ (segundos) entre app e referência. Esses parâmetros classificam as posições; os limiares de pontuação se aplicam à proporção aprovada.

Usar coordenadas geográficas WGS84 e calcular a distância de grande círculo pela fórmula de haversine, com raio terrestre convencional $R = 6\,371\,000$ metros:

$$
a_i = \sin^2\!\left(\frac{\varphi_i^{app} - \varphi_i^{ref}}{2}\right)
+ \cos(\varphi_i^{app})\cos(\varphi_i^{ref})
\sin^2\!\left(\frac{\lambda_i^{app} - \lambda_i^{ref}}{2}\right),
\qquad d_i = 2R\arcsin\!\left(\sqrt{a_i}\right).
$$

As variáveis $\varphi$ e $\lambda$ são latitude e longitude em radianos; $app$ e $ref$ identificam aplicativo e referência. Para cada observação válida, incrementar $P_t$ e, se $d_i \le \varepsilon$, também $P_s$. Em veículos, registros separados por mais de $\Delta t_{max}$ são inválidos. Sem tolerância e referência documentadas, a métrica permanece não avaliada.

Apurar paradas e veículos separadamente. Havendo consolidação de amostras com os mesmos critérios, somar seus acertos e totais antes de dividir, preservando os resultados por tipo de entidade.

---

## Níveis de pontuação e critérios de julgamento

Para assegurar a objetividade da avaliação, os patamares de pontuação (de 1 a 4) são definidos estritamente antes da coleta de dados em campo.

### Escala de Notas

As notas são **ordinais**: sua ordem não garante distâncias iguais nem proporcionalidade. A medida original mantém sua escala. Atribuir a maior nota cuja condição seja satisfeita pelo valor sem arredondamento.

| Nota | Nível | Significado para o Projeto DF no Ponto |
| :---: | :--- | :--- |
| **4** | Excelente | Eficácia plena; o aplicativo atende perfeitamente às expectativas do cidadão. |
| **3** | Bom | Presença de desvios menores (como pequenos atrasos toleráveis), aceitáveis no contexto de transporte público. |
| **2** | Insuficiente | O desvio afeta consideravelmente a utilidade prática; demanda plano corretivo de urgência. |
| **1** | Crítico | Inviabiliza o uso da funcionalidade; alto risco de rejeição ou abandono pelo usuário. |

### Limites de Pontuação por Métrica

| Métrica | Nota 4 (Excelente) | Nota 3 (Bom) | Nota 2 (Insuficiente) | Nota 1 (Crítico) |
| :--- | :---: | :---: | :---: | :---: |
| **M1.1 / M1.2** (Adaptabilidade) | 1,00 | ≥ 0,90 | ≥ 0,75 | < 0,75 |
| **M2.1 / M2.2** (Instalação/Desinstalação) | 1,00 | ≥ 0,95 | ≥ 0,85 | < 0,85 |
| **M3.1 / M3.2** (Sessões sem crashes / congelamentos) | ≥ 0,99 | ≥ 0,95 | ≥ 0,90 | < 0,90 |
| **M4.1 / M4.2** (Tolerância a Falhas) | 1,00 | ≥ 0,85 | ≥ 0,70 | < 0,70 |
| **M5.1** (Precisão de Tempo) | $\le 2$ min de erro | $\le 5$ min de erro | $\le 10$ min de erro | $> 10$ min de erro |
| **M5.2** (Correção Espacial do Mapa) | ≥ 0,95 | ≥ 0,85 | ≥ 0,70 | < 0,70 |
| **M6.1 / M6.2** (Completude e Cobertura) | 1,00 | ≥ 0,95 | ≥ 0,80 | < 0,80 |

### Justificativa Técnica dos Limiares de Decisão

A definição das metas numéricas e das faixas de decisão (*Thresholds*) fundamenta-se nas normas **ISO/IEC 25010** e **ISO/IEC 25023**, combinadas às restrições operacionais do aplicativo móvel **DF no Ponto** e ao perfil dos usuários do transporte público coletivo:

#### 1. Portabilidade (M1.1, M1.2, M2.1 e M2.2)
* **Faixas de Decisão:** Satisfatório ($\ge 0,90$ a $1,00$) | Tolerável ($0,75$ a $0,89$) | Crítico ($< 0,75$).
* **Justificativa:** O público do transporte coletivo no Distrito Federal e Entorno apresenta ampla heterogeneidade de dispositivos, incluindo aparelhos de entrada com telas compactas e sistemas operacionais em versões anteriores à versão 14 (sem suporte oficial). Uma taxa de adaptabilidade inferior a 75% excluiria mais de um quarto dos usuários por distorções de interface ou incompatibilidade. Além disso, falhas de instalação ou resíduos excessivos de dados pós-desinstalação penalizam severamente aparelhos com armazenamento interno restrito.

#### 2. Confiabilidade (M3.1, M3.2, M4.1 e M4.2)
* **Faixas de Decisão:** Satisfatório ($\ge 0,95$ a $0,99$) | Tolerável ($0,85$ a $0,94$) | Crítico ($< 0,85$).
* **Justificativa:** Baseado nas diretrizes do *Google Play Android Vitals*, onde taxas de encerramento forçado (*crashes*) devem ser mantidas abaixo de 1% e congelamentos de tela (*ANRs*) abaixo de 0,47% em produção. Em paradas de ônibus, um encerramento abrupto do aplicativo durante a aproximação de um coletivo acarreta perda imediata da viagem. Da mesma forma, devido às frequentes oscilações de conectividade 3G/4G e instabilidade de satélites GPS no ambiente urbano, o aplicativo precisa demonstrar tolerância a falhas em mais de 85% das ocorrências, exibindo mensagens amigáveis de recuperação em vez de quebrar a sessão.

#### 3. Adequação Funcional: Precisão Temporal e Espacial (M5.1 e M5.2)
* **Faixas de Decisão (M5.1 - Horários):** Excelente ($\le 2$ min) | Bom ($\le 5$ min) | Tolerável ($\le 10$ min) | Crítico ($> 10$ min).
* **Faixas de Decisão (M5.2 - Mapa/GPS):** Satisfatório ($\ge 0,85$ a $0,95$) | Crítico ($< 0,70$).
* **Justificativa:** No transporte público, a tolerância de atraso do passageiro é extremamente sensível. Um desvio de até 2 minutos representa alta precisão de aproximação física; até 5 minutos é considerado plenamente aceitável diante das oscilações naturais de tráfego urbano no Distrito Federal. Desvios acima de 10 minutos quebram a confiabilidade do serviço, levando o cidadão a perder compromissos ou a esperas prolongadas. No aspecto espacial (M5.2), erros cartográficos acima de 15% na localização das paradas induzem o usuário a aguardar em locais incorretos.

#### 4. Adequação Funcional: Completude e Cobertura (M6.1 e M6.2)
* **Faixas de Decisão:** Satisfatório ($\ge 0,95$ a $1,00$) | Crítico ($< 0,80$).
* **Justificativa:** O DF no Ponto é a ferramenta digital oficial de transporte do Distrito Federal. Dessa forma, as tarefas essenciais (busca de linhas, itinerários e paradas) devem possuir taxa de sucesso plena ($\ge 95\%$). Uma omissão de mais de 20% das linhas ativas em relação ao catálogo oficial da SEMOB-DF ($< 0,80$) inviabiliza o propósito central do aplicativo.

### Julgamento dos Objetivos

O veredito de cada objetivo de medição (G1 a G6) adota o **critério conservador (pior nota obtida entre suas métricas filhas)**, evitando que falhas críticas fiquem ocultas por médias aritméticas.

A pior nota respeita a ordem da escala ordinal. Para julgar o objetivo, todas as métricas filhas e os casos obrigatórios devem estar avaliados. Caso contrário, registrar **Não avaliado (dados incompletos)**, mantendo visíveis as notas e falhas observadas.

| Pior nota nas métricas do objetivo | Veredito do Objetivo | Ação Recomendada |
| :--- | :--- | :--- |
| Apenas notas 3 e 4 | **Satisfeito** | Operação regular e estável. |
| Pelo menos uma nota 2 | **Satisfeito com Ressalvas** | Abertura de *issue* corretiva; não inviabiliza o uso imediato, mas exige melhoria. |
| Pelo menos uma nota 1 | **Não Satisfeito** | Funcionalidade comprometida criticamente; exige correção imediata (*hotfix*). |

---

## Referências Bibliográficas

- ISO/IEC 25023:2016. *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*. Disponível em: <https://www.iso.org/standard/35747.html>. Acesso em: 11 nov. 2026.
- NATIONAL INSTITUTE OF STANDARDS AND TECHNOLOGY (NIST). *Metrics and Measures*. Seção “Measurement Scales”. Disponível em: <https://www.nist.gov/itl/ai/ai-standards-and-guidelines-group/metrics-and-measures>. Acesso em: 11 nov. 2026.
- FENTON, Norman; BIEMAN, James. *Software Metrics: A Rigorous and Practical Approach* (3rd Edition). CRC Press, 2014.

---

| ID  | Descrição                    | Autor                               | Data       | Revisor                              | Data     |
| :-: | :--------------------------- | :---------------------------------- | :--------- | :----------------------------------- | :------- |
| 01  | Criação inicial do documento | [Cristiano](https://github.com/CristianoMoraiss) | 31/10/2026 | [Bessa](https://github.com/bessazs) | 31/10/2026 |
| 02  | Adição das justificativas técnicas dos limiares de decisão | [João Capozzi](https://github.com/jonas3688) | 10/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
| 03  | Especificação das escalas, variáveis, unidades e métodos de cálculo das métricas | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 11/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
