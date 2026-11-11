# Fase 2: Rastreabilidade e Diagrama GQM

Este documento garante que todas as métricas geradas estejam atreladas aos propósitos e partes interessadas mapeadas na Fase 1. Nenhum indicador foi criado aleatoriamente; todos derivam da utilidade pública do **DF no Ponto**.

## Matriz de Rastreabilidade GQM

A tabela abaixo explicita como os objetivos de medição foram derivados das características priorizadas. O contexto vem das decisões apoiadas.

| Necessidade da Parte Interessada (Fase 1) | Objetivo / Decisão | Característica / Subcaracterística (ISO 25010) | Questões | Métricas |
|---|---|---|---|---|
| **Cidadão:** Acessar o app independente da renda/modelo de celular. | G1 (D1) | Portabilidade / Adaptabilidade | Q1.1, Q1.2 | M1.1, M1.2 |
| **Cidadão:** Não sobrecarregar a memória do celular ao baixar/apagar. | G2 (D1) | Portabilidade / Instalabilidade | Q2.1, Q2.2 | M2.1, M2.2 |
| **Passageiro / Órgão Público:** O app não pode fechar sozinho quando o ônibus estiver chegando. | G3 (D2) | Confiabilidade / Maturidade | Q3.1, Q3.2 | M3.1, M3.2 |
| **Passageiro:** Funcionar minimamente em paradas com sinal ruim. | G4 (D2) | Confiabilidade / Tolerância a Falhas | Q4.1, Q4.2 | M4.1, M4.2 |
| **Passageiro:** Confiar no horário para não perder a condução. | G5 (D3) | Adequação Funcional / Correção | Q5.1, Q5.2 | M5.1, M5.2 |
| **Semob/Cidadão:** Poder favoritar rotas diárias e encontrar sua linha. | G6 (D3) | Adequação Funcional / Completude | Q6.1, Q6.2 | M6.1, M6.2 |

<p class="legenda">Tabela 1. Mapeamento das origens das métricas às necessidades do transporte público.</p>

## Verificação e Conformidade (SQuaRE)

| Requisito de Conformidade | Atendido? |
|---|---|
| As métricas correspondem à ISO/IEC 25023? | Sim. Derivadas diretamente de medidas estipuladas na norma para adaptabilidade, instalabilidade, densidade de falhas e corretude de dados. |
| Foram evitadas métricas puras de "Usabilidade" (ex: tempo de clique)? | Sim. O foco esteve na mecânica, resiliência e precisão técnica. |
| Todos os dados podem ser obtidos via Teste de Caixa Preta? | Sim. Através de simulações reais no aplicativo em produção ou via emulador de dispositivos (Android Studio), acessíveis à equipe. |

---

## Diagrama GQM

Abaixo apresentamos a hierarquia estabelecida para a nossa análise, dividida por características de qualidade e utilizando as normas GQM nas três camadas exigidas (*Conceitual*, *Operacional* e *Quantitativo*). Os diagramas ilustram o desdobramento natural dos propósitos de qualidade até as taxas objetivas que serão medidas em campo na Fase 4.

### 1. Característica: Portabilidade

```mermaid
flowchart TD
    G1["G1: Avaliar Adaptabilidade"] --> Q11["Q1.1: Redimensiona em tela pequena?"]
    G1 --> Q12["Q1.2: Roda em Android antigo?"]

    G2["G2: Avaliar Instalabilidade"] --> Q21["Q2.1: Instala sem erro na loja?"]
    G2 --> Q22["Q2.2: Limpa arquivos ao desinstalar?"]

    Q11 --> M11["M1.1: Adaptabilidade de Telas"]
    Q12 --> M12["M1.2: Adaptabilidade de SO"]
    Q21 --> M21["M2.1: Sucesso de Instalação"]
    Q22 --> M22["M2.2: Resíduo pós-desinstalação"]
```

<p class="legenda">Figura 1. Diagrama GQM focado na característica de Portabilidade (Adaptabilidade e Instalabilidade) com seus níveis conceitual, operacional e quantitativo para o app DF no Ponto.</p>

---

### 2. Característica: Confiabilidade

```mermaid
flowchart TD
    G3["G3: Avaliar Maturidade"] --> Q31["Q3.1: Evita encerramento forçado (crash)?"]
    G3 --> Q32["Q3.2: Previne congelamento de tela (ANR)?"]

    G4["G4: Avaliar Tolerância a Falhas"] --> Q41["Q4.1: Trata queda de conexão 4G/Wi-Fi?"]
    G4 --> Q42["Q4.2: Reage à desativação de GPS?"]

    Q31 --> M31["M3.1: Densidade de Falhas (Crashes)"]
    Q32 --> M32["M3.2: Densidade de ANRs (Travamentos)"]
    Q41 --> M41["M4.1: Evitação de Quebra (Conexão)"]
    Q42 --> M42["M4.2: Tratamento de Perda de GPS"]
```

<p class="legenda">Figura 2. Diagrama GQM focado na característica de Confiabilidade (Maturidade e Tolerância a Falhas) com seus níveis conceitual, operacional e quantitativo para o app DF no Ponto.</p>

---

### 3. Característica: Adequação Funcional

```mermaid
flowchart TD
    G5["G5: Avaliar Correção de Dados"] --> Q51["Q5.1: Horários de chegada refletem a realidade?"]
    G5 --> Q52["Q5.2: Posição do ônibus no mapa está correta?"]

    G6["G6: Avaliar Completude de Linhas"] --> Q61["Q6.1: Funções essenciais executam sem erro?"]
    G6 --> Q62["Q6.2: Base de linhas bate com a Semob?"]

    Q51 --> M51["M5.1: Precisão de Tempo (Desvio em min)"]
    Q52 --> M52["M5.2: Correção Espacial do Mapa"]
    Q61 --> M61["M6.1: Cobertura de Tarefas Essenciais"]
    Q62 --> M62["M6.2: Completude do Banco de Linhas"]
```

<p class="legenda">Figura 3. Diagrama GQM focado na característica de Adequação Funcional (Correção e Completude) com seus níveis conceitual, operacional e quantitativo para o app DF no Ponto.</p>

## Referências Bibliográficas 

*   **BASILI, Victor R.; CALDIERA, Gianluigi; ROMBACH, H. Dieter.** *The Goal Question Metric Approach*. Encyclopedia of Software Engineering, 1994.   
*   **ISO/IEC 25010 / 25023 (Família SQuaRE).**

## Histórico de Versões

| ID  | Descrição                    | Autor                               | Data       | Revisor                              | Data     |
| :-: | :--------------------------- | :---------------------------------- | :--------- | :----------------------------------- | :------- |
| 01  | Criação inicial do documento | [Cristiano](https://github.com/CristianoMoraiss) | 31/10/2026 | [Bessa](https://github.com/bessazs) | 31/10/2026 |
| 02  | Refatoração dos diagramas para Mermaid nativo | [João Capozzi](https://github.com/jonas3688) | 11/11/2026 | - | - |