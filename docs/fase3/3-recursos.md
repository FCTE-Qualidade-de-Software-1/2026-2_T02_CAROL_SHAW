# Fase 3 — Recursos

## 1. Objetivo

Este documento lista os recursos necessários para executar a avaliação do aplicativo **DF no Ponto** para Android, conforme o método descrito em [Método de Avaliação](1-metodo.md) e os procedimentos definidos em [Procedimentos de Execução](2-procedimentos.md).

Os itens marcados como **a confirmar** dependem da conclusão dos parâmetros, catálogos e roteiros de execução. Eles devem ser revisados antes do início da coleta.

## 2. Dispositivos e ambientes de execução

### 2.1 Dispositivos físicos

| Identificador | Fabricante e modelo | Tamanho/resolução da tela | Versão do Android | Métricas atendidas | Disponibilidade/observações |
| :--- | :--- | :--- | :--- | :--- | :--- |
| DISP-01 | A confirmar | A confirmar | A confirmar | A confirmar após definição dos catálogos de M1.1 e M1.2 | A confirmar |
| DISP-02 | A confirmar | A confirmar | A confirmar | A confirmar após definição dos catálogos de M1.1 e M1.2 | A confirmar |

A seleção final dos dispositivos deve ser conferida em relação às combinações de tela × configuração de M1.1 e às versões do Android de M1.2, definidas em [Procedimentos de Execução](2-procedimentos.md).

### 2.2 Emuladores

| Identificador | Ferramenta e versão | Perfil do dispositivo | Resolução/configuração | Versão do Android | Métricas atendidas | Observações |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| EMU-01 | A confirmar | A confirmar | A confirmar | A confirmar | A confirmar após definição dos catálogos de M1.1 e M1.2 | A confirmar |

Os emuladores complementam os dispositivos físicos, mas não substituem testes que dependam de sensores, conectividade ou condições reais de campo. A adequação de cada emulador deve ser registrada após a definição dos procedimentos correspondentes.

## 3. Ferramentas

| Ferramenta | Uso previsto | Versão | Métrica(s) relacionada(s) | Disponibilidade/observações |
| :--- | :--- | :--- | :--- | :--- |
| Android Studio e emulador Android | Executar o aplicativo em ambiente emulado | A confirmar | M1.1, M1.2 e outras aplicáveis | A confirmar |
| Android Debug Bridge (`adb`) | Interagir com dispositivos e apoiar inspeções e coleta de registros | A confirmar | A confirmar conforme os procedimentos | A confirmar |
| `logcat` | Consultar registros do sistema e do aplicativo, quando disponíveis | A confirmar | M3.1, M3.2, M4.1 e M4.2, conforme aplicável | A confirmar |
| Gravação de tela | Registrar execuções e eventos observáveis na interface | A confirmar | Conforme os procedimentos | A confirmar |
| Ferramenta ou procedimento para interromper a conexão de rede | Induzir a condição de falha prevista para M4.1 | A confirmar | M4.1 | A confirmar |
| Configurações ou ferramenta para desativar a localização | Induzir a condição de perda de GPS prevista para M4.2 | A confirmar | M4.2 | A confirmar |
| Referência independente de localização | Comparar posições observadas no aplicativo com posições de referência para M5.2 | A confirmar | M5.2 | Método, equipamento e precisão a confirmar |
| Planilha ou formulário de coleta | Registrar execuções, resultados, horários e observações | A confirmar | Todas, conforme aplicável | Formato a definir na issue 46 |

As ferramentas e versões finais devem ser registradas antes da coleta. Caso uma ferramenta planejada não esteja disponível, registrar a alternativa utilizada e qualquer impacto na execução ou interpretação dos resultados.

## 4. Ambientes de avaliação

### 4.1 Ambiente de laboratório

- **Local:** a confirmar.
- **Dispositivos e emuladores:** conforme inventário da seção 2.
- **Condições de conectividade:** a confirmar nos procedimentos.
- **Condições de execução e preparação dos dispositivos:** a confirmar nos procedimentos.
- **Métricas executadas neste ambiente:** a confirmar após a consolidação dos roteiros da issue 46.

### 4.2 Ambiente de campo

- **Região e pontos de parada selecionados:** a confirmar.
- **Critério para seleção dos locais:** a confirmar.
- **Datas e faixas de horário previstas:** a confirmar.
- **Condições de conectividade e localização:** a confirmar.
- **Métricas executadas neste ambiente:** a confirmar nos procedimentos, especialmente para as medições de M5.1 e M5.2.

Os locais e horários finais devem ser definidos antes da coleta e registrados junto aos dados de cada execução. Não selecionar ou substituir locais retrospectivamente em função dos resultados observados.

## 5. Dados de entrada

| Dado | Uso previsto | Fonte | Data de referência/versão | Situação |
| :--- | :--- | :--- | :--- | :--- |
| Versão do aplicativo avaliado | Identificar a versão objeto da avaliação | Aplicativo DF no Ponto | `5.25.1(1149)`, conforme definido no método | Confirmar disponibilidade para os testes |
| Catálogo de telas e configurações | Preparar os casos de M1.1 | Definido nos procedimentos | A confirmar | Pendente da issue 45 |
| Lista de versões do Android e fluxos críticos | Preparar os casos de M1.2 | Definida nos procedimentos | A confirmar | Pendente da issue 45 |
| Catálogo de tarefas essenciais | Executar M6.1 | Definido nos procedimentos | A confirmar | Pendente da issue 45 |
| Catálogo oficial de linhas e itinerários | Comparar a cobertura do aplicativo em M6.2 | Fonte oficial da Semob-DF | Data de referência a confirmar | Pendente da issue 45 |
| Previsões do aplicativo e registros de chegada | Calcular M5.1 | Aplicativo e observação em campo | Datas, horários e fuso a registrar | Regras de pareamento a confirmar |
| Coordenadas do aplicativo e posições de referência | Calcular M5.2 | Aplicativo e referência independente | Datas e horários a registrar | Referência e tolerâncias a confirmar |
| Contas e dados de teste | Executar tarefas sem expor informações pessoais de terceiros | A definir | A confirmar | Verificar necessidade nos procedimentos |

A fonte, a versão ou a data de referência dos dados devem ser registradas de forma que outra pessoa consiga identificar quais dados foram usados na avaliação.

## 6. Papéis e responsabilidades

| Papel | Responsabilidades | Integrante |
| :--- | :--- | :--- |
| Responsável pela execução | Preparar o ambiente, seguir os procedimentos e registrar os resultados | A definir |
| Responsável pelos registros | Conferir o preenchimento dos formulários e a identificação das evidências | A definir |
| Responsável pela coleta de campo | Organizar as observações em campo e registrar data, horário e local | A definir |
| Revisor dos procedimentos | Verificar se os recursos e instruções permitem executar os testes sem ambiguidades | A definir |

Uma mesma pessoa pode exercer mais de um papel. Os responsáveis finais devem ser registrados antes da coleta.

## 7. Riscos e alternativas

| Risco ou dependência | Impacto possível | Alternativa ou mitigação | Situação |
| :--- | :--- | :--- | :--- |
| Indisponibilidade de dispositivo planejado | Redução da cobertura de telas ou versões do Android | Usar dispositivo ou emulador alternativo que atenda ao mesmo caso, registrando a substituição | Confirmar após as issues 45 e 46 |
| Indisponibilidade de emulador ou ferramenta | Impossibilidade de executar parte dos testes planejados | Usar dispositivo físico compatível ou registrar a limitação | A confirmar |
| Falha ou indisponibilidade de ferramenta de coleta | Perda de logs, gravações ou medições | Registrar manualmente os dados observáveis quando isso não comprometer a métrica; documentar a limitação | A confirmar |
| Indisponibilidade ou alteração da fonte oficial da Semob-DF | Dificuldade para reproduzir M6.2 | Arquivar ou registrar a versão consultada, a URL e a data de acesso, quando permitido | Pendente da definição da amostra |
| Chuva, condições inseguras ou impossibilidade de acesso ao local | Interrupção ou adiamento da coleta de campo | Reagendar conforme regra definida antes da coleta e registrar a alteração | Locais e regra a confirmar |
| Conectividade insuficiente ou instável em campo | Impossibilidade de observar previsões ou posições no aplicativo | Registrar a condição; repetir apenas conforme regra de reexecução definida nos procedimentos | Pendente da issue 46 |
| Exposição de dados pessoais em gravações ou capturas | Risco de privacidade | Usar contas e dispositivos de teste; evitar registrar informações de terceiros e revisar evidências antes de armazená-las | Confirmar nos procedimentos |

## 8. Relação com os procedimentos

Os recursos listados neste documento devem corresponder aos parâmetros, catálogos e amostras definidos em [Procedimentos de Execução](2-procedimentos.md). Antes da coleta, conferir se:

- os dispositivos e emuladores cobrem os casos definidos para M1.1 e M1.2;
- as ferramentas permitem executar e registrar os ensaios previstos;
- os dados de entrada e as fontes possuem identificação e data de referência;
- os ambientes de campo e laboratório estão disponíveis;
- as alternativas para riscos relevantes estão definidas.

## Histórico de versões

| ID | Descrição | Autor | Data | Revisor | Data |
| :-: | :--- | :--- | :---: | :--- | :---: |
| 01 | Criação da estrutura inicial do inventário de recursos da avaliação | Pedro Ramos | A definir | — | — |