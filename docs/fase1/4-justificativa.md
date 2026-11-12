# Fase 1 - Justificativas da Avaliação

## 1. Introdução

A justificativa para a avaliação de qualidade do **DF no Ponto** fundamenta-se no impacto direto e imediato que o aplicativo exerce sobre a rotina diária de centenas de milhares de passageiros no Distrito Federal e Entorno. O aplicativo não opera como um software meramente informativo; ele atua como instrumento operacional de planejamento urbano em tempo real. Qualquer imprecisão, travamento ou incompatibilidade de hardware resulta em tempo de espera ampliado em paradas ermas, atrasos a compromissos laborais e perda de confiança nos serviços públicos digitais.

---

## 2. Riscos Críticos Identificados

A análise de risco operacional identificou três grandes vulnerabilidades técnicas no ciclo de uso do DF no Ponto, diretamente relacionadas às **Questões Norteadoras Transversais**:

| Risco Técnico Identificado | Impacto no Cidadão / Sociedade | Questão Norteadora Relacionada |
| :--- | :--- | :---: |
| **Incompatibilidade e Barreiras de Acesso** | Telas compactas (abaixo de 5 polegadas) podem apresentar sobreposição de controles cartográficos; aparelhos com versões legadas do Android podem sofrer erros de compatibilidade; pacotes de instalação corrompidos ou com resíduos excessivos de cache pós-desinstalação penalizam celulares com memória interna saturada. | **QN1** *(Acesso Universal e Portabilidade)* |
| **Instabilidade e Quebra sob Redes Hostis** | Paradas de ônibus no DF frequentemente coincidem com áreas de sombra de rede móvel (3G/4G instável) ou falhas momentâneas de sinal GPS. Encerramentos repentinos (*crashes*) ou congelamentos (*ANRs*) durante consultas rápidas deixam o cidadão sem orientação no momento crítico de embarque. | **QN2** *(Resiliência e Confiabilidade)* |
| **Inconsistência de Dados e Quebra de Expectativa** | Divergências entre o horário previsto no aplicativo e a chegada física do ônibus nas paradas, desvios espaciais de localização cartográfica ou omissão de itinerários e linhas ativas na base de dados geram quebra de planejamento e perda de viagens. | **QN3** *(Fidelidade e Adequação Funcional)* |

---

## 3. Motivações e Características Priorizadas

A seleção do escopo da avaliação concentrou-se nas três características mais suscetíveis aos riscos identificados, estabelecendo as bases para as **Decisões Apoiadas (D1, D2 e D3)**:

1. **Portabilidade (D1 / QN1):** Essencial em um contexto de serviço público universal. O aplicativo deve ser acessível e operar perfeitamente em aparelhos de baixo custo e telas pequenas (*Adaptabilidade*), além de garantir downloads rápidos, instalações sem erro e remoções limpas sem acúmulo de lixo no sistema (*Instalabilidade*).
2. **Confiabilidade (D2 / QN2):** Avalia a resiliência contra panes repentinas. O aplicativo deve manter alta taxa de sessões limpas (*Maturidade* contra crashes e congelamentos) e saber reagir graciosamente a quedas de internet e ausência de localização (*Tolerância a Falhas*), fornecendo mensagens claras ao passageiro em vez de quebrar a sessão.
3. **Adequação Funcional (D3 / QN3):** Verifica se o aplicativo cumpre fielmente sua promessa de serviço. As estimativas de chegada e pins de ônibus no mapa devem ser exatos (*Correção Funcional*), e o catálogo de linhas deve cobrir integralmente a malha de transportes da Semob-DF e os fluxos prioritários do passageiro (*Completude e Pertinência Funcional*).

---

## 4. Alinhamento com a Metodologia de Avaliação

A comprovação factual desses aspectos motivou o desdobramento na Fase 2 em seis objetivos de medição orientados pelo paradigma GQM (G1 a G6), utilizando métricas padronizadas da norma **ISO/IEC 25023** e testes de caixa preta com evidências auditáveis em dispositivos físicos, emuladores e coletas de campo.

---

## 5. Referências Bibliográficas

- **ISO/IEC 25010:2023.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Product quality model*.
- **ISO/IEC 25040:2011.** *Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE) — Evaluation process*.

---

## Histórico de Versões

| ID  | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação do documento | [Bessa](https://github.com/bessazs) | 17/10/2026 | — | — |
| 02 | Harmonização com Questões Norteadoras, Decisões Apoiadas e inclusão de Instalabilidade | [João Guilherme Fonseca](https://github.com/JoaoGuilherme14) | 11/11/2026 | [Cristiano Morais](https://github.com/CristianoMoraiss) | 11/11/2026 |
