#!/bin/bash

clear
echo -e "\n🌟 BEM-VINDO AO TUTORIAL INTERATIVO DE GIT 🌟"
echo "Este tutorial vai te ensinar Git na prática, passo a passo."
echo "Os comandos não serão executados, apenas verificados. Boa sorte!"
echo -e "\nPressione Enter para começar..."
read

function esperar_comando() {
    local titulo="$1"
    local regex="$2"
    local dica="$3"

    echo -e "\n📌 $titulo"
    
    while true; do
        echo -e "\nDigite o comando:"
        read -e entrada

        if [[ "$entrada" =~ $regex ]]; then
            echo -e "\n✅ Muito bem! Você digitou o comando corretamente."
            break
        else
            echo -e "\n❌ Ops! Parece que o comando está errado."
            echo "💡 Dica: $dica"
        fi
    done
}

# 1. Atualizar e instalar o Git
esperar_comando "Vamos atualizar os pacotes do sistema." "^sudo apt update$" "Use: sudo apt update"
esperar_comando "Vamos atualizar os pacotes instalados." "^sudo apt upgrade$" "Use: sudo apt upgrade"
esperar_comando "Vamos instalar o Git." "^sudo apt install git$" "Use: sudo apt install git"

# 2. Configurações iniciais
esperar_comando "Vamos configurar seu nome de usuário no Git." "^git config --global user\.name \".+\"$" "Use: git config --global user.name \"Seu Nome\""
esperar_comando "Vamos configurar seu e-mail no Git." "^git config --global user\.email \".+\"$" "Use: git config --global user.email \"seu@email.com\""

# 3. Inicializar repositório
esperar_comando "Vamos iniciar um repositório Git nesta pasta." "^git init$" "Use: git init"

# 4. Verificar status
esperar_comando "Vamos verificar o status do repositório." "^git status$" "Use: git status"

# 5. Adicionar arquivos
esperar_comando "Vamos adicionar todos os arquivos ao stage." "^git add \.$" "Use: git add ."
esperar_comando "Vamos adicionar um arquivo específico." "^git add .+$" "Use: git add nome_do_arquivo"

# 6. Fazer commit
esperar_comando "Vamos fazer o primeiro commit com uma mensagem." "^git commit -m \".+\"$" "Use: git commit -m \"mensagem\""

# 7. Criar e trocar de branch
esperar_comando "Vamos criar uma nova branch." "^git branch .+$" "Use: git branch nome_da_branch"
esperar_comando "Vamos trocar para a nova branch." "^git checkout .+$" "Use: git checkout nome_da_branch"
esperar_comando "Outra forma de trocar de branch usando switch." "^git switch .+$" "Use: git switch nome_da_branch"
esperar_comando "Vamos voltar para a branch principal (main)." "^git checkout main$" "Use: git checkout main"

# 8. Merge
esperar_comando "Vamos unir o conteúdo da nova branch à main (merge)." "^git merge .+$" "Use: git merge nome_da_branch"

# 9. Pull e Push
esperar_comando "Vamos simular um pull (atualizar repositório local)." "^git pull origin main$" "Use: git pull origin main"
esperar_comando "Vamos simular um push (enviar mudanças para o remoto)." "^git push origin main$" "Use: git push origin main"

# Finalização
echo -e "\n🎉 Parabéns! Você completou o tutorial básico de Git."
echo "Para se aprofundar, acesse o guia oficial: https://git-scm.com/book/pt-br/v2"
