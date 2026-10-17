## Fase 1 - Modelo de Qualidade e Escopo

## Introdução

O objetivo desta etapa é apresentar o modelo de qualidade **ISO/IEC 25010**, destacando as três características escolhidas: **Portabilidade, Confiabilidade e Adequação Funcional**.

_(Nota para a equipe: Lembrem-se de atualizar a "Imagem 1" do diagrama no repositório para refletir a inclusão da Portabilidade)._

## Adaptação ao Modelo

O modelo foi adaptado para priorizar os aspectos mais críticos ao uso móvel do DF no Ponto, garantindo a sua compatibilidade em diferentes aparelhos, a sua resiliência a travamentos e a precisão da informação de transporte.

### Portabilidade

Refere-se à facilidade com que o aplicativo pode ser operado em diferentes ambientes móveis (Android, iOS) e condições de hardware.

| Subcaracterística   | Impacto | Risco | Justificativa                                                                                            |
| ------------------- | ------- | ----- | -------------------------------------------------------------------------------------------------------- |
| **Adaptabilidade**  | Alto    | Alto  | O app deve se adaptar eficientemente a diferentes resoluções de tela e versões de sistemas operacionais. |
| **Instalabilidade** | Médio   | Baixo | Avalia a facilidade de instalar e desinstalar o app nas lojas oficiais (Play Store/App Store).           |

Para o escopo, selecionamos a **Adaptabilidade**, pois falhas de interface em diferentes aparelhos inviabilizam o uso das funcionalidades geográficas (mapas).

### Confiabilidade

Refere-se à capacidade do DF no Ponto de executar pesquisas e carregar mapas sem interrupções inesperadas.

| Subcaracterística       | Impacto | Risco | Justificativa                                                                                          |
| ----------------------- | ------- | ----- | ------------------------------------------------------------------------------------------------------ |
| **Maturidade**          | Alto    | Alto  | Avalia a ocorrência de travamentos (_crashes_) durante operações como abrir o mapa ou pesquisar rotas. |
| **Tolerância a Falhas** | Alto    | Alto  | Avalia o comportamento do app ao perder conexão com a internet ou receber erros do servidor de GPS.    |

Selecionamos **Maturidade e Tolerância a Falhas**, as duas subcaracterísticas que determinam diretamente se o cidadão conseguirá ou não consultar seu ônibus na rua sob redes instáveis.

### Adequação Funcional

Refere-se ao grau em que o app entrega as informações de mobilidade prometidas de forma exata.

| Subcaracterística         | Impacto | Risco | Justificativa                                                                       |
| ------------------------- | ------- | ----- | ----------------------------------------------------------------------------------- |
| **Completude Funcional**  | Alto    | Alto  | Avalia se o app cobre as tarefas especificadas (busca, favoritos, horários, mapas). |
| **Correção Funcional**    | Alto    | Médio | Avalia se os resultados da busca e o pin do GPS no mapa são exibidos com precisão.  |
| **Pertinência Funcional** | Médio   | Médio | Avalia se as funções facilitam de fato a mobilidade do usuário.                     |

Selecionamos todas as três subcaracterísticas para garantir uma validação completa da jornada do usuário de transporte público.# Referências Bibliográficas

> ISO. ISO/IEC 25010 — ISO 25000 Software and Data Quality. Disponível em: [ISO/IEC 25010](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010). Acesso em: 17 out. 2026.

## **Histórico de Versão**

| ID  | Descrição                                                                              | Autor                               | Data       | Revisor                                 |  Data   |
| :-: | :------------------------------------------------------------------------------------- | :---------------------------------- | :--------- | :-------------------------------------- | :-----: |
| 01  | Criação do documento e documentação da Introdução, Escopo e Referências Bibliográficas | [Bessa](https://github.com/bessazs) | 17/10/2026 | [-------](https://github.com/---------) | ------- |
