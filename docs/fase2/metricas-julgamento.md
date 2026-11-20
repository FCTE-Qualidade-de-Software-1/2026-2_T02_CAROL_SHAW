---
title: Métricas e Julgamento
description: Detalhamento das métricas baseadas na ISO/IEC 25023 e critérios de julgamento para a avaliação do aplicativo DF no Ponto
---

# Métricas e Critérios de Julgamento

As métricas respondem às questões da [hierarquia GQM](planejamento-objetivos.md) e adaptam a medição de qualidade da **ISO/IEC 25023:2016** ao **DF no Ponto**. Onze expressam proporções entre 0 e 1, nas quais maior é melhor; a M5.1 expressa o erro temporal absoluto mediano, em minutos, no qual menor é melhor.

O embasamento teórico, a adaptação e o impacto técnico de cada métrica estão resumidos na [seção 3.1 de Abordagem GQM e Metas de Avaliação](planejamento-objetivos.md#31-fundamentacao-adaptacao-e-relevancia-das-metricas). O planejamento operacional para a coleta e avaliação de cada uma dessas 12 métricas é projetado na **[Fase 3 — Planejamento da Avaliação](../fase3/introducao.md)**, estruturado no **[Método de Avaliação](../fase3/1-metodo.md)**, nos **[Procedimentos de Execução](../fase3/2-procedimentos.md)**, nos **[Recursos](../fase3/3-recursos.md)** e no **[Cronograma](../fase3/4-cronograma.md)**.

## Escalas de Medição e Tipos de Dados

A escala define o significado dos valores e as operações permitidas; o intervalo numérico, como 0 a 1, não determina sua classificação. Adota-se a classificação de Stevens apresentada pelo NIST:

| Escala | Propriedade | Aplicação nesta avaliação |
| :--- | :--- | :--- |
| **Nominal** | Categorias sem distâncias numéricas entre elas. | Aprovado/reprovado; ocorrência/ausência de crash; identificadores de dispositivo, SO ou linha. A codificação 0/1 identifica categorias antes da contagem. |
| **Ordinal** | Categorias ordenadas, sem intervalos necessariamente iguais. | Notas de 1 a 4: Crítico, Insuficiente, Bom e Excelente. |
| **Intervalo** | Diferenças comparáveis e origem convencional. | Instantes de previsão e chegada da M5.1 na mesma referência temporal; zero não representa ausência de tempo. |
| **Razão** | Diferenças e razões comparáveis; zero representa ausência da quantidade medida. | Contagens, proporções favoráveis e durações de erro absoluto. É a escala dos resultados das 12 métricas. |

<p class="legenda">Tabela 1. Escalas de medição adotadas. Fonte: elaboração própria (2026), com base na classificação apresentada pelo NIST.</p>

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
| <a id="m11-adaptabilidade-de-hardware-telas"></a><a id="m1-1"></a>**M1.1 - Adaptabilidade de Hardware (Telas)** *(Q1.1)* | $M_{1.1} = \frac{T_s}{T_t}$ | $T_s$: casos de tela × configuração aprovados, sem sobreposição ou distorção que impeça a tarefa.<br>$T_t$: total de casos de tela × configuração avaliados. | **Razão**; adimensional; $[0,1]$. | Proporção de casos com interface adaptada; maior é melhor. |
| <a id="m12-adaptabilidade-de-sistema-operacional"></a><a id="m1-2"></a>**M1.2 - Adaptabilidade de SO** *(Q1.2)* | $M_{1.2} = \frac{O_s}{O_t}$ | $O_s$: versões de SO aprovadas em todos os fluxos críticos definidos.<br>$O_t$: total de versões de SO avaliadas, identificadas pelo sistema e sua versão. | **Razão**; adimensional; $[0,1]$. | Proporção de versões compatíveis na amostra; maior é melhor. |
| <a id="m21-sucesso-de-instalacao"></a><a id="m2-1"></a>**M2.1 - Sucesso de Instalação** *(Q2.1)* | $M_{2.1} = \frac{I_s}{I_t}$ | $I_s$: ciclos de instalação limpa concluídos na primeira tentativa sem erro.<br>$I_t$: total de ciclos de instalação limpa avaliados. | **Razão**; adimensional; $[0,1]$. | Proporção de ciclos com instalação bem-sucedida; maior é melhor. |
| <a id="m22-residuo-pos-desinstalacao"></a><a id="m2-2"></a>**M2.2 - Resíduo Pós-Desinstalação** *(Q2.2)* | $M_{2.2} = 1 - \frac{D_r}{D_t}$ | $D_r$: desinstalações com pelo menos um arquivo residual atribuível ao app nos locais inspecionados.<br>$D_t$: total de desinstalações com inspeção válida dos locais definidos. | **Razão**; adimensional; $[0,1]$. | Proporção de desinstalações sem resíduos observados; maior é melhor. Não mede bytes residuais. |
| <a id="m31-sessoes-sem-crashes"></a><a id="m3-1"></a>**M3.1 - Sessões sem Crashes** *(Q3.1)* | $M_{3.1} = 1 - \frac{S_c}{S_t}$ | $S_c$: sessões com pelo menos um encerramento inesperado.<br>$S_t$: total de sessões avaliadas quanto a crashes, incluindo as interrompidas por crash. | **Razão**; adimensional; $[0,1]$. | Proporção de sessões sem crash; maior é melhor. |
| <a id="m32-sessoes-sem-congelamentos"></a><a id="m3-2"></a>**M3.2 - Sessões sem Congelamentos** *(Q3.2)* | $M_{3.2} = 1 - \frac{S_a}{S_t}$ | $S_a$: sessões com pelo menos um congelamento da interface por mais de 5 segundos.<br>$S_t$: total de sessões avaliadas quanto a congelamentos, incluindo as afetadas. | **Razão**; adimensional; $[0,1]$. | Proporção de sessões sem congelamento observado; maior é melhor. |
| <a id="m41-mitigacao-de-perda-de-conexao"></a><a id="m4-1"></a>**M4.1 - Mitigação de Perda de Conexão** *(Q4.1)* | $M_{4.1} = \frac{R_s}{R_t}$ | $R_s$: interrupções de rede induzidas com tratamento aprovado.<br>$R_t$: total de interrupções de rede induzidas e avaliadas. | **Razão**; adimensional; $[0,1]$. | Proporção de interrupções de rede tratadas; maior é melhor. |
| <a id="m42-tratamento-de-perda-de-gps"></a><a id="m4-2"></a>**M4.2 - Tratamento de Perda de GPS** *(Q4.2)* | $M_{4.2} = \frac{G_s}{G_t}$ | $G_s$: desativações de localização induzidas com tratamento aprovado.<br>$G_t$: total de desativações de localização induzidas e avaliadas. | **Razão**; adimensional; $[0,1]$. | Proporção de perdas de localização tratadas; maior é melhor. |
| <a id="m51-precisao-de-tempo"></a><a id="m5-1"></a>**M5.1 - Precisão de Tempo** *(Q5.1)* | $e_i = \frac{\lvert t_i^{obs} - t_i^{prev} \rvert}{60}$<br>$M_{5.1} = \operatorname{mediana}(e_1,\ldots,e_n)$ | $t_i^{obs}$: instante de chegada observado, em segundos.<br>$t_i^{prev}$: instante de chegada previsto pelo app para o mesmo evento, em segundos.<br>$n$: número de pares válidos de previsão/chegada.<br>$e_i$: erro absoluto do par $i$, em minutos. | **Razão**; minutos; $[0,+\infty)$. | Erro absoluto mediano da previsão; menor é melhor. |
| <a id="m52-correcao-de-dados-mapa"></a><a id="m5-2"></a>**M5.2 - Correção de Dados (Mapa)** *(Q5.2)* | $M_{5.2} = \frac{P_s}{P_t}$ | $P_s$: observações posicionais com distância $d_i \le \varepsilon$ da referência.<br>$P_t$: total de observações posicionais válidas.<br>$d_i$: distância à posição de referência, em metros.<br>$\varepsilon$: tolerância espacial previamente fixada, em metros. | **Razão**; adimensional; $[0,1]$. | Proporção de posições dentro da tolerância; maior é melhor. |
| <a id="m61-cobertura-de-tarefas-essenciais"></a><a id="m6-1"></a>**M6.1 - Cobertura de Tarefas Essenciais** *(Q6.1)* | $M_{6.1} = 1 - \frac{F_f}{F_t}$ | $F_f$: tarefas do catálogo essencial que falharam na execução.<br>$F_t$: total de tarefas do catálogo essencial, com avaliação completa de cada tarefa. | **Razão**; adimensional; $[0,1]$. | Proporção de tarefas essenciais concluídas com sucesso; maior é melhor. |
| <a id="m62-completude-do-banco"></a><a id="m6-2"></a>**M6.2 - Completude do Banco** *(Q6.2)* | $M_{6.2} = \frac{L_c}{L_t}$ | $L_c$: linhas/itinerários da amostra oficial encontrados no app com código, sentido e itinerário correspondentes.<br>$L_t$: total de linhas/itinerários oficiais auditados na amostra. | **Razão**; adimensional; $[0,1]$. | Proporção de itens oficiais cobertos pelo catálogo consultável do app; maior é melhor. |

<p class="legenda">Tabela 2. Equações, variáveis, escalas e interpretação das 12 métricas. Fonte: elaboração própria (2026), com base na ISO/IEC 25023:2016.</p>

Em M3.1 e M3.2, cada sessão afetada é contada uma vez por métrica. As contagens devem atender a $0 \le S_c \le S_t$ e $0 \le S_a \le S_t$; informar separadamente a amostra válida $S_t$ de cada métrica.

### Fontes dos Dados e Procedimentos de Coleta

A tabela a seguir consolida a origem dos dados e os critérios conceituais de classificação para cada métrica. A operacionalização detalhada dessas fontes, incluindo roteiros passo a passo, matrizes de ensaio e formulários de registro, encontra-se especificada no **[Método de Avaliação da Fase 3](../fase3/1-metodo.md#3-tecnicas-de-avaliacao-por-metrica)** e nos **[Procedimentos de Execução](../fase3/2-procedimentos.md)**. O inventário de ambientes e dispositivos necessários está em **[Recursos](../fase3/3-recursos.md)**.

| Métrica | Fonte dos dados | Procedimento e critério de classificação |
| :--- | :--- | :--- |
| **M1.1** | Capturas de tela e registros em dispositivos físicos ou emuladores do escopo. | Registrar resolução, orientação e tamanho de fonte de cada par tela × configuração. Executar a tarefa e aprovar se os controles e informações necessários estiverem visíveis e utilizáveis, sem corte ou sobreposição impeditivos. |
| **M1.2** | Relatório de compatibilidade por SO e versão. | Executar o mesmo catálogo de fluxos críticos em cada versão, registrando dispositivo e configuração. Aprovar somente se todos os fluxos terminarem sem erro de compatibilidade impeditivo. |
| **M2.1** | Registro de download e instalação, com logs quando disponíveis. | Começar com o app ausente e usar a distribuição oficial definida. Registrar o resultado da primeira tentativa de cada ciclo; tentativas posteriores não alteram uma falha inicial. |
| **M2.2** | Inspeção de arquivos e armazenamento antes e depois da remoção. | Definir locais acessíveis e arquivos atribuíveis ao app antes da coleta. Inspecionar após cada desinstalação concluída e contar uma vez em $D_r$ se houver resíduos. Inspeção inviável deve ser registrada como não observável, com o motivo. |
| **M3.1** | Relatório de sessões, gravação da execução e logs disponíveis. | Fixar roteiro e duração planejada. Registrar os encerramentos inesperados e manter sessões interrompidas por crash na amostra, classificadas como afetadas. A retomada inicia nova sessão identificada. |
| **M3.2** | Gravação das interações com marcação temporal e logs disponíveis. | Em sessões padronizadas, medir a ausência de resposta à ação do usuário e contar cada sessão com congelamento superior a 5 segundos. Carregamento com interface responsiva não conta; diagnóstico de ANR do SO exige evidência específica em log. |
| **M4.1** | Gravação da interface e registro das interrupções de rede. | Induzir uma interrupção por ensaio, com rede disponível inicialmente. Aprovar se o app permanece aberto, informa a indisponibilidade, mantém a interface responsiva e permite retomar a consulta após a reconexão. Definir previamente, no roteiro, os tempos máximos de aviso e retomada, em segundos. |
| **M4.2** | Alertas, mapa e registro das alterações do serviço de localização. | Induzir uma desativação por ensaio, com localização disponível inicialmente. Aprovar se o app permanece aberto, informa a indisponibilidade, mantém disponíveis as funções que não dependem da posição do usuário e retoma a localização após a reativação. Definir previamente, no roteiro, os tempos máximos de aviso e retomada, em segundos. |
| **M5.1** | Previsão exibida e registro da chegada física do ônibus. | Parear por linha, sentido, parada e veículo/viagem identificável. Fixar a regra de captura antes da coleta; registrar data completa, fuso e instante da captura. Aplicar a mesma regra a toda a amostra, sem selecionar retrospectivamente previsões de menor erro. |
| **M5.2** | Posição exibida no app e referência independente, obtida em campo. | Registrar posições, horários, referência e precisão informada. Fixar previamente a tolerância espacial. Aplicar a verificação espacial abaixo. |
| **M6.1** | Catálogo de tarefas essenciais e relatório de execução funcional. | Fixar antes da coleta o catálogo com entradas e resultados esperados. Executar cada tarefa de ponta a ponta e contar uma vez cada tarefa que falhar. Calcular após avaliar todo o catálogo; casos pendentes mantêm o resultado incompleto. |
| **M6.2** | Catálogo oficial da Semob-DF, com data de referência, e consultas ao app. | Selecionar a amostra da fonte oficial antes da coleta, identificando código, sentido e variante de itinerário, quando houver. Auditar todos os itens; ausência ou divergência não incrementa $L_c$, e consultas repetidas não ampliam a amostra. |

<p class="legenda">Tabela 3. Fontes dos dados e critérios de classificação por métrica. Fonte: elaboração própria (2026).</p>

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

Antes da coleta, registrar a tolerância espacial $\varepsilon > 0$ (metros) entre a posição exibida pelo aplicativo e a referência. Esse parâmetro classifica as posições; os limiares de pontuação se aplicam à proporção aprovada. A entidade medida deve ser fixa no intervalo entre a última atualização da posição e a captura, condição que a Fase 3 restringe às paradas.

A distância $d_i$ entre a posição exibida no aplicativo e a referência pode ser obtida de dois modos. O modo usado é registrado em cada observação:

1. **Medição direta no mapa:** quando a posição de referência e o marcador do aplicativo aparecem na mesma captura do mapa, mede-se a distância entre os dois na imagem e converte-se o valor em metros pela escala do mapa naquele nível de zoom.
2. **Cálculo por coordenadas:** quando há latitude e longitude das duas posições (WGS84), calcula-se a distância de grande círculo pela fórmula de haversine, com raio terrestre convencional $R = 6\,371\,000$ metros:

$$
a_i = \sin^2\!\left(\frac{\varphi_i^{app} - \varphi_i^{ref}}{2}\right)
+ \cos(\varphi_i^{app})\cos(\varphi_i^{ref})
\sin^2\!\left(\frac{\lambda_i^{app} - \lambda_i^{ref}}{2}\right)
$$

$$
d_i = 2R\arcsin\!\left(\sqrt{a_i}\right)
$$

Na fórmula, $\varphi$ e $\lambda$ são latitude e longitude em radianos; $app$ e $ref$ identificam aplicativo e referência. Nos dois modos, para cada observação válida, incrementar $P_t$ e, se $d_i \le \varepsilon$, também $P_s$. Sem tolerância e referência documentadas, a métrica permanece não avaliada.

Havendo consolidação de amostras obtidas sob os mesmos critérios, somar seus acertos e totais antes de dividir, preservando os resultados por tipo de entidade.

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

<p class="legenda">Tabela 4. Escala de notas. Fonte: elaboração própria (2026).</p>

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

<p class="legenda">Tabela 5. Limites de pontuação por métrica. Fonte: elaboração própria (2026).</p>

### Justificativa Técnica dos Limiares de Decisão

Os limiares da Tabela 5 são decisões do projeto, fixadas antes da coleta. A ISO/IEC 25023 define as medidas, mas não atribui faixas de valores a níveis de pontuação; por isso, cada faixa abaixo é justificada pelo contexto do **DF no Ponto**. As proporções referem-se aos casos, versões, sessões, ensaios ou itens da amostra, e não a percentuais de usuários.

1. **Adaptabilidade (M1.1 e M1.2): 1,00 | ≥ 0,90 | ≥ 0,75 | < 0,75.** O público do transporte coletivo usa aparelhos heterogêneos, inclusive de entrada, com telas compactas e versões anteriores do Android. A nota 4 exige que todos os casos ou versões da amostra sejam aprovados. Abaixo de 0,75, mais de um quarto dos casos ou versões avaliados apresenta barreira impeditiva.
2. **Instalabilidade (M2.1 e M2.2): 1,00 | ≥ 0,95 | ≥ 0,85 | < 0,85.** As faixas são mais rígidas que as de adaptabilidade porque a falha de instalação impede qualquer uso posterior e porque resíduos ocupam armazenamento escasso em aparelhos de entrada.
3. **Maturidade (M3.1 e M3.2): ≥ 0,99 | ≥ 0,95 | ≥ 0,90 | < 0,90.** Os patamares do *Android vitals* (1,09% para *crashes* e 0,47% para ANRs percebidos pelo usuário) servem como ordem de grandeza: lá a unidade é o usuário ativo diário; aqui, a sessão. Um encerramento ou congelamento durante a aproximação do ônibus pode custar a viagem, o que justifica exigir pelo menos 0,90 para evitar a nota 1.
4. **Tolerância a falhas (M4.1 e M4.2): 1,00 | ≥ 0,85 | ≥ 0,70 | < 0,70.** Quedas de rede e perda de localização são rotineiras no deslocamento urbano. As faixas são menos rígidas que as de maturidade porque a falha tem origem externa; ainda assim, abaixo de 0,70 o aplicativo deixa o passageiro sem orientação em quase um terço das ocorrências ensaiadas.
5. **Precisão de tempo (M5.1): ≤ 2 min | ≤ 5 min | ≤ 10 min | > 10 min.** Até 2 minutos, o erro é compatível com a aproximação do veículo; até 5 minutos, com as oscilações normais de tráfego; acima de 10 minutos, a previsão deixa de servir para decidir entre esperar e buscar alternativa.
6. **Correção espacial (M5.2): ≥ 0,95 | ≥ 0,85 | ≥ 0,70 | < 0,70.** A nota 4 não exige 1,00 porque a referência de campo tem erro próprio (ver [Verificação Espacial](#verificacao-espacial-m52)). Abaixo de 0,70, quase um terço das posições leva o usuário a esperar no local errado.
7. **Completude e cobertura (M6.1 e M6.2): 1,00 | ≥ 0,95 | ≥ 0,80 | < 0,80.** Por ser a ferramenta oficial, espera-se que todas as tarefas essenciais sejam concluídas e que todos os itens oficiais auditados estejam no aplicativo. A ausência de mais de 20% dos itens da amostra compromete o propósito central do aplicativo.

### Amostras Pequenas e Resultados Parciais

Em uma proporção com total válido $n$, cada unidade altera o resultado em $1/n$. Quando $n < 20$, algumas faixas da Tabela 5 não têm total possível: é o caso de M1.2 (três versões), M2.1 e M2.2 (dez ciclos), M5.2 para paradas (cinco paradas) e M6.1 (oito tarefas). Nessas métricas, os limiares são aplicados sem alteração, e as notas que cada amostra pode produzir estão na tabela de [Amostras e limitação](../fase3/2-procedimentos.md#5-amostras-e-limitacao) da Fase 3. A contagem (por exemplo, "9 de 10") é sempre informada junto da nota, e os resultados são tratados como indicativos para a amostra observada.

A M5.2 é apurada somente com paradas, pela restrição registrada na ficha da métrica em [Procedimentos de Execução](../fase3/2-procedimentos.md): a posição dos veículos exibida pelo aplicativo tem defasagem da ordem de um minuto, e compará-la com a referência mediria o deslocamento do veículo, não o erro do aplicativo.

### Julgamento dos Objetivos

O veredito de cada objetivo de medição (G1 a G6) adota o **critério conservador (pior nota obtida entre suas métricas filhas)**, evitando que falhas críticas fiquem ocultas por médias aritméticas. A padronização da contagem e o protocolo de contabilização tabular e evidência por exceção que alimentam este veredito são detalhados no **[Método de Avaliação da Fase 3](../fase3/1-metodo.md#2-como-o-metodo-funciona-fluxo-de-utilizacao)**.

A pior nota respeita a ordem da escala ordinal. Para julgar o objetivo, todas as métricas filhas e os casos obrigatórios devem estar avaliados. Caso contrário, registrar **Não avaliado (dados incompletos)**, mantendo visíveis as notas e falhas observadas.

| Pior nota nas métricas do objetivo | Veredito do Objetivo | Ação Recomendada |
| :--- | :--- | :--- |
| Apenas notas 3 e 4 | **Satisfeito** | Operação regular e estável. |
| Pelo menos uma nota 2 | **Satisfeito com Ressalvas** | Abertura de *issue* corretiva; não inviabiliza o uso imediato, mas exige melhoria. |
| Pelo menos uma nota 1 | **Não Satisfeito** | Funcionalidade comprometida criticamente; exige correção imediata (*hotfix*). |

<p class="legenda">Tabela 6. Veredito dos objetivos de medição pelo critério conservador. Fonte: elaboração própria (2026).</p>

### Julgamento por Característica e Resposta às Questões Norteadoras

O julgamento sobe da métrica até o propósito da Fase 1 sem médias:

1. **Característica:** recebe o pior veredito entre seus dois objetivos (Portabilidade: G1 e G2; Confiabilidade: G3 e G4; Adequação Funcional: G5 e G6).
2. **Questão norteadora:** QN1, QN2 e QN3 são respondidas com o veredito da característica correspondente e com as métricas que o determinaram.
3. **Decisão apoiada:** para D1, D2 e D3, o relatório da Fase 4 indica a recomendação decorrente (manter, corrigir com prioridade ou corrigir de imediato), sempre citando a evidência.

Não se calcula nota global do aplicativo: as três características são apresentadas lado a lado, na ordem de prioridade definida em [Modelo de Qualidade e Escopo](../fase1/5-modelo.md).

---

## Referências Bibliográficas

- ISO/IEC 25023:2016. *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Measurement of system and software product quality*. Disponível em: <https://www.iso.org/standard/35747.html>. Acesso em: 11 nov. 2026.
- NATIONAL INSTITUTE OF STANDARDS AND TECHNOLOGY (NIST). *Metrics and Measures*. Seção “Measurement Scales”. Disponível em: <https://www.nist.gov/itl/ai/ai-standards-and-guidelines-group/metrics-and-measures>. Acesso em: 11 nov. 2026.
- GOOGLE. *Android vitals — bad behavior thresholds*. Disponível em: <https://developer.android.com/google/play/vitals>. Acesso em: 13 nov. 2026.
- FENTON, Norman; BIEMAN, James. *Software Metrics: A Rigorous and Practical Approach* (3rd Edition). CRC Press, 2014.

---

## Histórico de Versões

| ID  | Descrição                    | Autor                               | Data       | Revisor                              | Data     |
| :-: | :--------------------------- | :---------------------------------- | :--------- | :----------------------------------- | :------- |
| 01  | Criação inicial do documento | [Cristiano](https://github.com/CristianoMoraiss) | 31/10/2026 | [Bessa](https://github.com/bessazs) | 31/10/2026 |
| 02  | Adição das justificativas técnicas dos limiares de decisão | [João Capozzi](https://github.com/jonas3688) | 10/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
| 03  | Especificação das escalas, variáveis, unidades e métodos de cálculo das métricas | [Rodrigo Gontijo](https://github.com/rodrigogontijoo) | 11/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 11/11/2026 |
| 04  | Vínculo com a fundamentação das métricas e correção do patamar de crashes do Android vitals (1,09%) | [Pedro Ramos](https://github.com/PedroRSR) | 13/11/2026 | [Bessa](https://github.com/bessazs) | 18/11/2026 |
| 05  | Inclusão de links cruzados e rastreabilidade com a Fase 3 (Planejamento, Método, Procedimentos e Recursos) e âncoras para métricas | [João Fonseca](https://github.com/joaoguilherme14) | 15/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 15/11/2026 |
| 06  | Justificativa dos limiares alinhada à tabela de notas, regra para amostras pequenas, nota de M5.2, julgamento por característica, legendas das tabelas e nome único de M4.1 | [Bessa](https://github.com/bessazs) | 16/11/2026 | [Pedro Ramos](https://github.com/PedroRSR) | 20/11/2026 |