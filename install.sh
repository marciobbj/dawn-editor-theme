#!/bin/bash

# 🌅 Dawn Theme - Script de Instalação Automatizada
# Este script facilita a instalação do tema Dawn em diferentes editores

set -e

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Função para imprimir mensagens coloridas
print_message() {
    echo -e "${GREEN}[DAWN THEME]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[AVISO]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERRO]${NC} $1"
}

print_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

# Banner
echo -e "${GREEN}"
cat << "EOF"
    ____                    __  __      _   _           
   / __ \____  ____  ____ _/ /_/ /_  __/ /_(_)___  ____ 
  / / / / __ \/ __ \/ __ `/ __/ / / / / __/ / __ \/ __ \
 / /_/ / /_/ / /_/ / /_/ / /_/ / /_/ / /_/ / /_/ / / / /
/_____/\____/\____/\__,_/\__/_/\__,_/\__/_/\____/_/ /_/ 
                                                        
EOF
echo -e "${NC}"

print_message "Script de instalação do Dawn Theme"
print_message "Tema escuro e minimalista inspirado no amanhecer"
echo ""

# Detectar sistema operacional
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        OS="linux"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        OS="macos"
    elif [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
        OS="windows"
    else
        OS="unknown"
    fi
    print_info "Sistema operacional detectado: $OS"
}

# Verificar se o diretório atual é o do projeto
check_project_directory() {
    if [[ ! -f "README.md" ]] || [[ ! -d "Dawn-JetBrains" ]] || [[ ! -d "Dawn-SublimeText" ]]; then
        print_error "Este script deve ser executado no diretório raiz do projeto Dawn Theme"
        print_error "Certifique-se de estar no diretório correto e tente novamente"
        exit 1
    fi
    print_message "Diretório do projeto verificado ✓"
}

# Instalar tema para Sublime Text
install_sublime_text() {
    print_info "Instalando tema para Sublime Text..."
    
    if [[ "$OS" == "macos" ]]; then
        SUBLIME_DIR="$HOME/Library/Application Support/Sublime Text/Packages"
    elif [[ "$OS" == "linux" ]]; then
        SUBLIME_DIR="$HOME/.config/sublime-text/Packages"
    elif [[ "$OS" == "windows" ]]; then
        SUBLIME_DIR="$APPDATA/Sublime Text/Packages"
    else
        print_warning "Sistema operacional não suportado para Sublime Text"
        return
    fi
    
    if [[ ! -d "$SUBLIME_DIR" ]]; then
        print_warning "Sublime Text não encontrado em $SUBLIME_DIR"
        print_info "Instale o Sublime Text primeiro"
        return
    fi
    
    DAWN_SUBLIME_DIR="$SUBLIME_DIR/Dawn Theme"
    
    # Criar diretório se não existir
    mkdir -p "$DAWN_SUBLIME_DIR"
    
    # Copiar arquivos
    cp -r Dawn-SublimeText/* "$DAWN_SUBLIME_DIR/"
    
    print_message "Tema Sublime Text instalado em: $DAWN_SUBLIME_DIR"
    print_info "Reinicie o Sublime Text e configure o tema nas preferências"
}

# Instalar tema para VS Code
install_vscode() {
    print_info "Instalando tema para VS Code..."
    
    if [[ "$OS" == "macos" ]]; then
        VSCODE_DIR="$HOME/.vscode/extensions"
    elif [[ "$OS" == "linux" ]]; then
        VSCODE_DIR="$HOME/.vscode/extensions"
    elif [[ "$OS" == "windows" ]]; then
        VSCODE_DIR="$USERPROFILE/.vscode/extensions"
    else
        print_warning "Sistema operacional não suportado para VS Code"
        return
    fi
    
    if [[ ! -d "$VSCODE_DIR" ]]; then
        print_warning "VS Code não encontrado em $VSCODE_DIR"
        print_info "Instale o VS Code primeiro"
        return
    fi
    
    DAWN_VSCODE_DIR="$VSCODE_DIR/dawn-theme"
    
    # Criar diretório se não existir
    mkdir -p "$DAWN_VSCODE_DIR"
    
    # Copiar arquivos
    cp -r Dawn-VSCode/* "$DAWN_VSCODE_DIR/"
    
    print_message "Tema VS Code instalado em: $DAWN_VSCODE_DIR"
    print_info "Reinicie o VS Code e selecione o tema: Ctrl+K Ctrl+T → 'Dawn Theme'"
}

# Instalar tema para JetBrains IDEs
install_jetbrains() {
    print_info "Instalando tema para JetBrains IDEs..."
    
    if [[ "$OS" == "macos" ]]; then
        JETBRAINS_DIR="$HOME/Library/Application Support/JetBrains"
    elif [[ "$OS" == "linux" ]]; then
        JETBRAINS_DIR="$HOME/.config/JetBrains"
    elif [[ "$OS" == "windows" ]]; then
        JETBRAINS_DIR="$APPDATA/JetBrains"
    else
        print_warning "Sistema operacional não suportado para JetBrains IDEs"
        return
    fi
    
    if [[ ! -d "$JETBRAINS_DIR" ]]; then
        print_warning "JetBrains IDEs não encontrados em $JETBRAINS_DIR"
        print_info "Instale um IDE JetBrains primeiro"
        return
    fi
    
    # Encontrar IDEs JetBrains instalados
    for ide_dir in "$JETBRAINS_DIR"/*; do
        if [[ -d "$ide_dir" ]]; then
            ide_name=$(basename "$ide_dir")
            print_info "Instalando tema para $ide_name..."
            
            # Diretório de plugins
            plugins_dir="$ide_dir/plugins"
            mkdir -p "$plugins_dir"
            
            # Copiar arquivo JAR
            cp Dawn-JetBrains/Dark_Dawn_Theme.jar "$plugins_dir/"
            
            print_message "Tema instalado para $ide_name"
        fi
    done
    
    print_info "Reinicie os IDEs JetBrains e aplique o tema nas configurações"
}

# Mostrar instruções pós-instalação
show_post_install_instructions() {
    echo ""
    print_message "🎉 Instalação concluída!"
    echo ""
    print_info "Próximos passos:"
    echo ""
    
    echo -e "${BLUE}Sublime Text:${NC}"
    echo "  1. Abra o Sublime Text"
    echo "  2. Vá em Preferences → Settings"
    echo "  3. Adicione: \"color_scheme\": \"Packages/Dawn Theme/Dawn_Theme.sublime-color-scheme\""
    echo ""
    
    echo -e "${BLUE}VS Code:${NC}"
    echo "  1. Abra o VS Code"
    echo "  2. Pressione Ctrl+K Ctrl+T (ou Cmd+K Cmd+T no macOS)"
    echo "  3. Selecione 'Dawn Theme'"
    echo ""
    
    echo -e "${BLUE}JetBrains IDEs:${NC}"
    echo "  1. Abra seu IDE JetBrains"
    echo "  2. Vá em Settings/Preferences → Appearance"
    echo "  3. Selecione 'Dawn Theme' no dropdown Theme"
    echo ""
    
    print_info "Para mais informações, consulte o README.md"
    echo ""
    print_message "Aproveite o conforto visual do Dawn Theme! 🌅"
}

# Menu principal
show_menu() {
    echo -e "${BLUE}Escolha as opções de instalação:${NC}"
    echo ""
    echo "1) Instalar para Sublime Text"
    echo "2) Instalar para VS Code"
    echo "3) Instalar para JetBrains IDEs"
    echo "4) Instalar para todos os editores"
    echo "5) Sair"
    echo ""
    read -p "Digite sua escolha (1-5): " choice
    
    case $choice in
        1)
            install_sublime_text
            ;;
        2)
            install_vscode
            ;;
        3)
            install_jetbrains
            ;;
        4)
            install_sublime_text
            install_vscode
            install_jetbrains
            ;;
        5)
            print_message "Saindo..."
            exit 0
            ;;
        *)
            print_error "Opção inválida. Tente novamente."
            show_menu
            ;;
    esac
}

# Função principal
main() {
    detect_os
    check_project_directory
    
    if [[ $# -eq 0 ]]; then
        show_menu
    else
        # Instalação automática baseada em argumentos
        for arg in "$@"; do
            case $arg in
                --sublime|--sublime-text)
                    install_sublime_text
                    ;;
                --vscode|--vs-code)
                    install_vscode
                    ;;
                --jetbrains|--jetbrains-ide)
                    install_jetbrains
                    ;;
                --all)
                    install_sublime_text
                    install_vscode
                    install_jetbrains
                    ;;
                --help|-h)
                    echo "Uso: $0 [OPÇÕES]"
                    echo ""
                    echo "Opções:"
                    echo "  --sublime, --sublime-text    Instalar para Sublime Text"
                    echo "  --vscode, --vs-code         Instalar para VS Code"
                    echo "  --jetbrains, --jetbrains-ide Instalar para JetBrains IDEs"
                    echo "  --all                       Instalar para todos os editores"
                    echo "  --help, -h                  Mostrar esta ajuda"
                    echo ""
                    echo "Exemplos:"
                    echo "  $0 --sublime"
                    echo "  $0 --vscode --jetbrains"
                    echo "  $0 --all"
                    exit 0
                    ;;
                *)
                    print_error "Opção desconhecida: $arg"
                    print_info "Use --help para ver as opções disponíveis"
                    exit 1
                    ;;
            esac
        done
    fi
    
    show_post_install_instructions
}

# Executar função principal
main "$@"
