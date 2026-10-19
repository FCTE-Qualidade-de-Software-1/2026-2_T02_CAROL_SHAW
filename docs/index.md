# Avaliação de Qualidade de Software — Equipe Carol Shaw (2026.2)

<p align="center">
  <strong>Universidade de Brasília (UnB) — Faculdade de Ciências e Tecnologias em Engenharia (FCTE)</strong><br/>
  Disciplina: Qualidade de Software 1 — Profª. Cristiane Soares Ramos<br/>
  Turma T02 — 2º semestre de 2026
</p>

<p align="center">
  <img alt="Versão" src="https://img.shields.io/badge/versão-v1.0--E1-pink"/>
  <img alt="Atualização" src="https://img.shields.io/badge/atualizado-26%2F10%2F2026-pink"/>
  <img alt="Fase" src="https://img.shields.io/badge/fase-Fase%201%20e%202-pink"/>
  <img alt="Status" src="https://img.shields.io/badge/status-Entrega%201%20concluída-pink"/>
</p>

---

## Sobre este site

Este site é o **portal oficial de documentação** do projeto de avaliação de qualidade do aplicativo **DF no Ponto**, conduzido pela equipe **Carol Shaw** como Trabalho Final da disciplina Qualidade de Software 1. Aqui você encontra todos os artefatos produzidos nas Fases 1 e 2 do processo de avaliação de produto de software recomendado pela norma **ISO/IEC 25040**, com rastreabilidade completa entre as decisões tomadas.

Avaliamos o aplicativo **DF no Ponto** — ferramenta oficial de consulta ao Sistema de Transporte Público Coletivo do Distrito Federal (STPC-DF) — sob a perspectiva do usuário final, com foco em três características de qualidade da norma **ISO/IEC 25010**: **Adequação Funcional**, **Confiabilidade** e **Portabilidade**. A escolha dessas três características foi derivada diretamente das necessidades dos stakeholders mapeados na Fase 1, conforme detalhado nas seções seguintes.

> ℹ️ Este repositório contém apenas a documentação e o site do projeto acadêmico. Ele **não** contém o código-fonte do aplicativo DF no Ponto.

---

## Integrantes

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/164538943?s=64&v=4" width="100px;" alt="CRISTIANO"/><br />
        <sub><b>CRISTIANO BORGES DE MORAIS</b></sub><br />
        <sub>Matrícula: 222033952</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/186613952?s=400&u=cd72fbb297c1eed4c5594b777ac75f8651c5ad50&v=4" width="100px;" alt="JOÃO C."/><br />
        <sub><b>JOAO GUILHERME CAPOZZI GONCALVES</b></sub><br />
        <sub>Matrícula: 232027476</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/168047871?v=4" width="100px;" alt="JOÃO L"/><br />
        <sub><b>JOAO GUILHERME LIMA VERAS FONSECA</b></sub><br />
        <sub>Matrícula: 232014039</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/127259012?v=4" width="100px;" alt="PEDRO"/><br />
        <sub><b>PEDRO RAMOS SOUSA REIS</b></sub><br />
        <sub>Matrícula: 222031680</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/97805440?v=4" width="100" alt="RODRIGO"/>
        <sub><b>RODRIGO BRAZ FERREIRA GONTIJO</b></sub><br />
        <sub>Matrícula: 190116498</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/118318004?v=4" width="100px;" alt="VITOR"/><br />
        <sub><b>VITOR PEREIRA BESSA</b></sub><br />
        <sub>Matrícula: 180132466</sub>
      </td>
    </tr>
  </table>
</div>

---

## A história do projeto

O **DF no Ponto** tornou-se a ferramenta oficial e amplamente utilizada por milhares de cidadãos diariamente para planejar rotas, verificar horários e acompanhar as linhas de ônibus em tempo real no Distrito Federal. No entanto, inconsistências no fornecimento de dados, instabilidades de uso e problemas de compatibilidade em diferentes dispositivos afetam diretamente a experiência do usuário final.

Diante desse cenário, a equipe **Carol Shaw** estruturou uma avaliação rigorosa de qualidade de software com o objetivo de **identificar fragilidades técnicas e propor melhorias concretas** que possam ser incorporadas ao produto. O trabalho segue o processo formal de avaliação de produto da família SQuaRE (ISO/IEC 25040), com quatro fases:

| Fase | Descrição | Status |
| :-: | :-- | :-: |
| **Fase 1** | Estabelecimento dos requisitos da avaliação (propósito, stakeholders, escopo, modelo de qualidade) | ✅ Concluída |
| **Fase 2** | Especificação da avaliação (objetivos GQM, questões, hipóteses, métricas e critérios de julgamento) | ✅ Concluída |
| **Fase 3** | Planejamento da avaliação (método, recursos, ambiente e cronograma) | ⏳ Prevista para a Entrega 2 |
| **Fase 4** | Execução e julgamento (coleta de dados, análise, conclusões e ações de melhoria) | ⏳ Prevista para a Entrega 2 |

---

## Como navegar neste site

A documentação está organizada em duas grandes seções, que espelham as fases do processo de avaliação:

### 📌 [Fase 1 — Requisitos da Avaliação](fase1/introducao.md)

Apresenta o propósito da avaliação, os requisitantes e partes interessadas, a descrição do produto avaliado, a justificativa para o recorte do escopo, o modelo de qualidade adotado (ISO/IEC 25010) e a tabela de contribuição da equipe. É a base que justifica todas as decisões metodológicas subsequentes.

### 📌 [Fase 2 — Especificação da Avaliação](fase2/introducao.md)

Detalha o desdobramento GQM (Goal–Question–Metric) a partir das três características priorizadas na Fase 1, formalizando três objetivos de medição, seis questões operacionais, hipóteses e seis métricas quantitativas com seus respectivos critérios de julgamento. Inclui também a representação gráfica da hierarquia GQM completa.

> 💡 **Dica de leitura:** comece pela [Introdução da Fase 1](fase1/introducao.md) e siga pela ordem do menu. As seções foram escritas para serem lidas em sequência, com referências cruzadas entre si.

---

## Características de qualidade avaliadas

O escopo documentado prioriza três características da norma ISO/IEC 25010, listadas abaixo por ordem de prioridade:

- **Adequação Funcional (P1):** completude, correção e pertinência das funcionalidades de transporte — se os horários e rotas exibidos estão corretos, o aplicativo cumpre sua função social básica.
- **Confiabilidade (P2):** maturidade do aplicativo e tolerância a falhas, como instabilidade de conexão móvel — essencial para quem usa o app em trânsito, frequentemente sob rede instável.
- **Portabilidade (P3):** adaptação da interface a diferentes dispositivos móveis e versões de sistema operacional — necessário dado o perfil demográfico diverso dos usuários do transporte público do DF.

A ordem de prioridade reflete o impacto direto de cada característica na tarefa central do passageiro: primeiro os dados precisam estar corretos, depois o sistema precisa estar disponível e, por fim, precisa funcionar no aparelho que o usuário tem em mãos.

A avaliação é acadêmica e se limita à versão do sistema observada durante o período de análise. Os resultados não representam uma certificação do aplicativo nem necessariamente se aplicam a versões futuras.

---

## Links oficiais do projeto

| Recurso | Link |
| :-- | :-- |
| 📦 Repositório GitHub | [FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW) |
| 🚀 Release da Entrega 1 (E1) | [v1.0-E1](https://github.com/FCTE-Qualidade-de-Software-1/2026-2_T02_CAROL_SHAW/releases/tag/v1.0-E1) |
| 🌐 GitPage (este site) | [fcte-qualidade-de-software-1.github.io/2026-2_T02_CAROL_SHAW](https://fcte-qualidade-de-software-1.github.io/2026-2_T02_CAROL_SHAW/) |
| 🚌 DF no Ponto (produto avaliado) | [dfnoponto.com.br](https://dfnoponto.com.br/) |

---

## Referências

- [ISO/IEC 25010 — ISO 25000](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010)
- [ISO/IEC 25040 — Evaluation process](https://www.iso.org/standard/35641.html)
- [MkDocs](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

---

## Histórico de Versão

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :-- | :-- | :-- | :-- | :--: |
| 01 | Criação da página inicial | Equipe Carol Shaw | 17/10/2026 | — | — |
| 02 | Revisão geral: narrativa para leitor externo, badges de versão, links de repositório e release, tabela de fases | Equipe Carol Shaw | 26/10/2026 | — | — |
