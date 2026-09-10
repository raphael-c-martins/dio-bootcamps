# Guia de Estudos: Automação e Gestão de Infraestrutura de TI 🖥️⚙️

Este repositório contém o projeto prático desenvolvido para o desafio da DIO explorando o uso do **NotebookLM** da Google como ferramenta de aprendizado ativo e organização do conhecimento.

## 🎯 Contexto e Objetivos

A administração de redes em ambientes corporativos exige controle rigoroso e padronização de estações de trabalho. Tarefas repetitivas, como inventário de hardware/software, configurações de segurança e otimização de sistemas operacionais (debloat), tomam muito tempo se feitas manualmente. 

**Objetivos de Estudo:**
1. Compreender as melhores práticas para implementação de Group Policy Objects (GPOs) para automação de tarefas em rede.
2. Explorar o uso de scripts (PowerShell) para rotinas de manutenção e coleta de logs de sistema.
3. Criar uma base de conhecimento rápida para consultar comandos e soluções de *troubleshooting* no dia a dia do suporte de TI.

## 📚 Curadoria de Fontes

Para treinar o NotebookLM, selecionei as seguintes fontes confiáveis

1. **[Inscrever um dispositivo Windows automaticamente com a Política de Grupo](https://learn.microsoft.com/pt-br/windows/client-management/enroll-a-windows-10-device-automatically-using-group-policy)**: Base para entender a hierarquia e aplicação de políticas de grupo.
2. **[Introdução ao PowerShell](https://learn.microsoft.com/pt-br/powershell/scripting/learn/ps101/01-getting-started?view=powershell-7.6)**: Material focado em scripts para manipulação de arquivos e leitura de logs do Windows.
3. **[Documentação sobre o que há de novo no Windows Server 2025](https://learn.microsoft.com/pt-br/windows-server/get-started/whats-new-windows-server-2025)**: Resumo das novidades e recursos da versão mais recente do Windows Server.


## 🛠️ Engenharia de Prompts e "Cicatrizes"

Nesta etapa, testei diferentes formas de extrair informações do NotebookLM para criar materiais de consulta rápidos.

**Teste 1: Criação de Script de Inventário**
*   **Prompt Inicial:** "Crie um script para inventário de máquinas."
*   **A "Cicatriz" (Problema):** A resposta foi muito genérica e sugeriu softwares de terceiros, fugindo do escopo de usar ferramentas nativas do Windows.
*   **Prompt Refinado (Sucesso):** "Com base nos documentos fornecidos, elabore um script em PowerShell que colete o nome da máquina, quantidade de RAM, modelo do processador e envie esses dados para um arquivo .csv centralizado em uma pasta de rede. Depois, explique como configurar uma GPO para rodar esse script no logon do usuário."
*   **Análise:** O prompt precisou ser muito específico quanto aos dados coletados e ao método de distribuição para que a IA consultasse as fontes de GPO corretamente.

## 📖 Miniguia de Estudo

### Resumo: Automação com GPO e Scripts
A automação eficiente depende da combinação de políticas centralizadas (GPO) e scripts de execução. Enquanto a GPO define *quando* e *com quais privilégios* uma ação ocorre (ex: no momento do logon de um usuário específico), os scripts em PowerShell ou arquivos `.bat` executam o trabalho pesado, como auditar a máquina, mapear impressoras, copiar arquivos de log de aplicativos corporativos ou remover *bloatware* padrão do sistema. É crucial estruturar as políticas em Unidades Organizacionais (OUs) corretas para evitar que scripts de manutenção travem máquinas de produção em horários indevidos.

### Glossário
*   **GPO (Group Policy Object):** Conjunto de regras configuradas no Active Directory que controlam o ambiente de trabalho de contas de usuário e contas de computador.
*   **Logon Script:** Arquivo de lote, executável ou script em PowerShell que roda automaticamente quando um usuário entra no sistema.
*   **Debloat:** Processo de remoção de softwares desnecessários, serviços em segundo plano e aplicativos pré-instalados em um sistema operacional, visando melhorar o desempenho.
*   **Execution Policy:** Recurso de segurança do PowerShell que determina as condições sob as quais o sistema carrega arquivos de configuração e executa scripts.

### 🤖 Prompts Reutilizáveis (Para Revisão Futura)
Se eu precisar relembrar ou gerar novos códigos baseados nesse material, posso usar estes prompts no NotebookLM:
1. *"Liste os passos necessários para criar uma nova GPO no Windows Server e aplicar um script `.ps1` de mapeamento de rede apenas para o setor X, utilizando as fontes carregadas."*
2. *"Aja como um analista de infraestrutura sênior e revise o seguinte script de debloat em PowerShell: [colar script]. Aponte possíveis riscos de segurança ou processos críticos do Windows que estão sendo interrompidos."*
3. *"Extraia dos documentos anexados quais são os IDs de Eventos (Event Viewer) mais importantes para monitorar falhas de logon em uma rede corporativa."*