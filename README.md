# Avaliação de Qualidade de Software — Equipe Carol Shaw (2026.2)

Repositório do projeto acadêmico da disciplina **Qualidade de Software**, da Universidade de Brasília (UnB — FCTE). O trabalho documenta a avaliação de qualidade do aplicativo **DF no Ponto**, ferramenta de consulta do transporte público coletivo do Distrito Federal.

> 🌐 **Portal Oficial da Documentação (GitHub Pages):**  
> [https://fcte-qualidade-de-software-1.github.io/2026-2_T02_CAROL_SHAW/](https://fcte-qualidade-de-software-1.github.io/2026-2_T02_CAROL_SHAW/)

> Este repositório contém a documentação técnica, o artigo científico e o portal do projeto acadêmico. Ele não contém o código-fonte proprietário do aplicativo DF no Ponto.

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
        <img src="https://avatars.githubusercontent.com/u/97805440?v=4" width="100" alt="RODRIGO"/><br />
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

## Sobre o DF no Ponto

O DF no Ponto permite que passageiros planejem deslocamentos no Distrito Federal consultando informações de linhas, horários e itinerários. Entre as funcionalidades consideradas na documentação estão:

- busca de linhas por número ou destino;
- consulta de horários;
- visualização de itinerários e paradas em mapa;
- acompanhamento da localização dos ônibus por GPS;
- favoritos para linhas e pontos; e
- avisos e alertas do transporte público.

## Objetivo do Trabalho

O projeto analisa aspectos de qualidade do aplicativo com base no modelo **ISO/IEC 25010**, considerando as necessidades de passageiros, equipe de avaliação, docentes e órgãos mantenedores. O escopo documentado prioriza:

- **Portabilidade:** adaptação da interface a diferentes dispositivos e ambientes móveis, além da instalação e da desinstalação do aplicativo;
- **Confiabilidade:** maturidade do aplicativo e tolerância a falhas, como instabilidade de conexão; e
- **Adequação Funcional:** completude e correção das funcionalidades de transporte, com a pertinência delimitando as tarefas essenciais avaliadas.

A avaliação é acadêmica e se limita à versão do sistema observada durante a análise. O escopo cobre o aplicativo móvel (Android); versão web, tablets, *backend* e APIs da Semob-DF ficam de fora.

## Documentação do Projeto

A documentação completa está organizada no portal MkDocs na pasta [`docs/`](docs/):

- **Fase 1 — Requisitos da Avaliação:**
  - [Propósito da Avaliação](docs/fase1/1-proposito.md)
  - [Requisitantes e Partes Interessadas](docs/fase1/2-requisitantes.md)
  - [Descrição do Produto](docs/fase1/3-descricao.md)
  - [Justificativas e Riscos](docs/fase1/4-justificativa.md)
  - [Modelo de Qualidade e Escopo](docs/fase1/5-modelo.md)
  - [Tabela de Contribuição](docs/fase1/6-tabela_de_contribuicao.md)
- **Fase 2 — Especificação da Avaliação (GQM):**
  - [Planejamento e Objetivos](docs/fase2/planejamento-objetivos.md)
  - [Métricas e Critérios de Julgamento](docs/fase2/metricas-julgamento.md)
  - [Rastreabilidade e Diagrama GQM](docs/fase2/rastreabilidade-diagrama-gqm.md)
- **Fase 3 — Planejamento da Avaliação:**
  - [Método de Avaliação](docs/fase3/1-metodo.md)
  - [Procedimentos de Execução](docs/fase3/2-procedimentos.md)
  - [Recursos de Teste](docs/fase3/3-recursos.md)
  - [Cronograma de Execução](docs/fase3/4-cronograma.md)
- **Fase 4 — Execução e Resultados:**
  - [Coleta de Dados](docs/fase4/1-coleta.md)
  - [Análise de Dados](docs/fase4/2-analise.md)
  - [Resultados e Parecer Técnico](docs/fase4/3-resultados.md)
- **Gestão do Projeto (Framework PSM-CID):**
  - [Visão Geral](docs/gestao/visao-geral.md)
  - [Calendário e Progresso](docs/gestao/calendario.md)
  - [Recursos e Custos](docs/gestao/recursos.md)
  - [Desempenho do Processo](docs/gestao/desempenho.md)
  - [Acompanhamento do Projeto](docs/gestao/acompanhamento.md)
- **Artigo Científico:**
  - Código-fonte em LaTeX e referências em [`artigo/`](artigo/)

## Estrutura do Repositório

```text
2026-2_T02_CAROL_SHAW
├── .github/                  # Workflows de CI/CD e templates de Issue/PR
│   ├── ISSUE_TEMPLATE/       # Templates padronizados (tarefa.md, bug.md)
│   └── PULL_REQUEST_TEMPLATE.md
├── artigo/                   # Artigo científico em LaTeX (SBC), figuras e referências BibTeX
├── docs/                     # Fonte da documentação em Markdown (MkDocs)
│   ├── fase1/                # Fase 1: Requisitos da Avaliação (ISO/IEC 25040)
│   ├── fase2/                # Fase 2: Especificação e Desdobramento GQM
│   ├── fase3/                # Fase 3: Planejamento dos Ensaios e Roteiros
│   ├── fase4/                # Fase 4: Evidências, Coletas e Resultados
│   ├── gestao/               # Gestão PSM-CID (Calendário, Recursos, Desempenho, Acompanhamento)
│   └── uso_de_IA/            # Declaração ética e uso de LLMs no projeto
├── scripts/                  # Scripts utilitários de instrumentação e coleta
├── mkdocs.yml                # Configuração e estrutura de navegação do portal MkDocs
└── README.md                 # Apresentação do projeto e índice geral
```

## Referências

- [DF no Ponto](https://dfnoponto.com.br/)
- [ISO/IEC 25010 — ISO 25000](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010)
- [ISO/IEC 25040 — Processo de Avaliação de Qualidade](https://iso25000.com/index.php/en/iso-25000-standards/iso-25040)
- [MkDocs Material](https://squidfunk.github.io/mkdocs-material/)
