# Avaliação de Qualidade de Software — Equipe Carol Shaw (2026.2)

Repositório do projeto acadêmico da disciplina **Qualidade de Software**, da Universidade de Brasília (UnB — FCTE). O trabalho documenta a avaliação de qualidade do aplicativo **DF no Ponto**, ferramenta de consulta do transporte público coletivo do Distrito Federal.

> Este repositório contém a documentação e o site do projeto acadêmico. Ele não contém o código-fonte do aplicativo DF no Ponto.

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
        <img src="https://avatars.githubusercontent.com/u/186613952?s=400&u=cd72fbb297c1eed4c5594b777ac75f8651c5ad50&v=4" width="100px;" alt="JOÃO C." width="100px;" alt="JOÃO C."/><br />
        <sub><b>JOAO GUILHERME CAPOZZI GONCALVES</b></sub><br />
        <sub>Matrícula: 232027476</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/168047871?v=4"    width="100px;" alt="JOÃO L"/><br />
        <sub><b>JOAO GUILHERME LIMA VERAS FONSECA</b></sub><br />
        <sub>Matrícula: 232014039</sub>
      </td>
      <td align="center">
        <img src="https://avatars.githubusercontent.com/u/127259012?v=4" width="100px;" alt="PEDRO"/><br />
        <sub><b>PEDRO RAMOS SOUSA REIS</b></sub><br />
        <sub>Matrícula: 222031680</sub>
      </td> 
      </td>
      <td align="center">
        <img src="coloque o seu link aqui" width="100px;" alt="RODRIGO"/><br />
        <sub><b>RODRIGO BRAZ FERREIRA CONTIJO</b></sub><br />
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

## Objetivo do trabalho

O projeto analisa aspectos de qualidade do aplicativo com base no modelo **ISO/IEC 25010**, considerando as necessidades de passageiros, equipe de avaliação, docentes e órgãos mantenedores. O escopo documentado prioriza:

- **Portabilidade:** adaptação da interface a diferentes dispositivos e ambientes móveis;
- **Confiabilidade:** maturidade do aplicativo e tolerância a falhas, como instabilidade de conexão; e
- **Adequação funcional:** completude, correção e pertinência das funcionalidades de transporte.

A avaliação é acadêmica e se limita à versão do sistema observada durante a análise. Os resultados não representam uma certificação do aplicativo nem necessariamente se aplicam a versões futuras.

## Documentação

A documentação está escrita em Markdown na pasta [`docs/`](docs/) e organizada para publicação com MkDocs:

- [`docs/index.html`](docs/index.html): página inicial;
- [`docs/fase1/index.html`](docs/fase1/index.html): introdução à primeira fase;
- [`docs/fase1/1-proposito.html`](docs/fase1/1-proposito.html): propósito da avaliação;
- [`docs/fase1/2-requisitantes.html`](docs/fase1/2-requisitantes.html): requisitantes e partes interessadas;
- [`docs/fase1/3-descricao.html`](docs/fase1/3-descricao.html): descrição do produto;
- [`docs/fase1/4-justificativa.html`](docs/fase1/4-justificativa.html): justificativa e riscos;
- [`docs/fase1/5-modelo.html`](docs/fase1/5-modelo.html): modelo de qualidade e escopo;
- [`docs/fase1/6-tabela_de_contribuicao.html`](docs/fase1/6-tabela_de_contribuicao.html): contribuições da equipe; e
- [`docs/fase1/7-uso_de_IA.html`](docs/fase1/7-uso_de_IA.html): declaração de uso de ferramentas de IA.

## Estrutura do repositório

```text
2026-2_T02_CAROL_SHAW
├── assets/                   # CSS, JavaScript, mapas de código e favicon
├── fase1/                    # Documentos da primeira fase
│   ├── 1-proposito/
│   │   └── index.html
│   ├── 2-requisitantes/
│   │   └── index.html
│   ├── 3-descricao/
│   │   └── index.html
│   ├── 4-justificativa/
│   │   └── index.html
│   ├── 5-modelo/
│   │   └── index.html
│   ├── 6-tabela_de_contribuicao/
│   │   └── index.html
│   ├── 7-uso_de_IA/
│   │   └── index.html
│   └── fase1/                # Páginas HTML da documentação
│       └── index.html
├── search/                   # Índice usado pela busca do site
│   └── search_index.json
├── .gitignore                # Arquivos locais, caches e temporários ignorados pelo Git
├── .nojekyll
├── 404.html                  # Página exibida para rotas não encontradas
├── index.html                # Página inicial do site
├── README.md                 # Apresentação do projeto
└── sitemap.xml               # Mapa do site
```

## Referências

- [DF no Ponto](https://dfnoponto.com.br/)
- [ISO/IEC 25010 — ISO 25000](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010)
- [MkDocs](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
