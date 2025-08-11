# 📥 Guia de Instalação - Dawn Theme

## Pré-requisitos

### JetBrains IDEs
- IntelliJ IDEA 2021.1+
- PyCharm 2021.1+
- WebStorm 2021.1+
- PhpStorm 2021.1+
- Rider 2021.1+
- CLion 2021.1+
- Android Studio 2021.1+

### Sublime Text
- Sublime Text 3.2+
- Package Control (opcional, mas recomendado)

## 🚀 Instalação Rápida

### JetBrains IDEs

#### Método 1: Marketplace (Mais Fácil)
```bash
# 1. Abra seu IDE JetBrains
# 2. Vá em Settings/Preferences (⌘, no macOS, Ctrl+Alt+S no Windows/Linux)
# 3. Plugins → Marketplace
# 4. Busque "Dawn Theme"
# 5. Clique Install
# 6. Reinicie o IDE
# 7. Settings → Appearance → Theme → Dawn Theme
```

#### Método 2: Arquivo JAR
```bash
# 1. Baixe Dawn-JetBrains/Dark_Dawn_Theme.jar
# 2. Settings → Plugins → ⚙️ → Install Plugin from Disk
# 3. Selecione o arquivo .jar
# 4. Reinicie e aplique o tema
```

### Sublime Text

#### Método 1: Package Control
```bash
# 1. Ctrl+Shift+P (Windows/Linux) ou Cmd+Shift+P (macOS)
# 2. "Package Control: Install Package"
# 3. Busque "Dawn Theme"
# 4. Instale
# 5. Configure nas preferências
```

#### Método 2: Instalação Manual
```bash
# Windows
copy "Dawn-SublimeText\*" "%APPDATA%\Sublime Text\Packages\Dawn Theme\"

# macOS
cp -r Dawn-SublimeText/ ~/Library/Application\ Support/Sublime\ Text/Packages/Dawn\ Theme/

# Linux
cp -r Dawn-SublimeText/ ~/.config/sublime-text/Packages/Dawn\ Theme/
```

## ⚙️ Configuração Detalhada

### JetBrains IDEs

#### Configuração do Tema
1. **Abra** as configurações do IDE
2. **Navegue** para `Appearance & Behavior → Appearance`
3. **Selecione** "Dawn Theme" no dropdown Theme
4. **Clique** em Apply e OK

#### Configuração da Fonte
1. **Vá** em `Editor → Font`
2. **Configure**:
   - Font: JetBrains Mono (recomendado)
   - Size: 14-16
   - Line height: 1.4
   - Enable ligatures: ✓

#### Configuração do Editor
1. **Vá** em `Editor → General → Appearance`
2. **Configure**:
   - Show line numbers: ✓
   - Show method separators: ✓
   - Show parameter name hints: ✓
   - Show whitespaces: Selection

### Sublime Text

#### Configuração do Tema
1. **Abra** `Preferences → Settings`
2. **Adicione** ao User Settings:
```json
{
  "theme": "Dawn.sublime-theme",
  "color_scheme": "Packages/Dawn Theme/Dawn_Theme.sublime-color-scheme",
  "font_size": 14,
  "font_face": "JetBrains Mono",
  "line_height": 1.4,
  "word_wrap": true,
  "rulers": [80, 120],
  "draw_white_space": "selection",
  "show_line_numbers": true,
  "show_minimap": false,
  "highlight_line": true
}
```

#### Configuração de Pacotes Recomendados
1. **Instale** via Package Control:
   - **BracketHighlighter** - Destaque de parênteses
   - **GitGutter** - Indicadores do Git
   - **SideBarEnhancements** - Melhorias na barra lateral
   - **AutoFileName** - Autocompletar de arquivos

## 🔧 Personalização Avançada

### JetBrains IDEs

#### Duplicar e Personalizar
1. **Vá** em `Editor → Color Scheme → Dawn Theme`
2. **Clique** no ícone de engrenagem → **Duplicate**
3. **Renomeie** para "Dawn Custom"
4. **Personalize** as cores conforme desejado

#### Configurações de Código
```json
// settings.json (se disponível)
{
  "editor.fontSize": 14,
  "editor.fontFamily": "JetBrains Mono",
  "editor.lineHeight": 1.4,
  "editor.wordWrap": "on",
  "editor.rulers": [80, 120],
  "editor.renderWhitespace": "selection"
}
```

### Sublime Text

#### Personalização do Tema
1. **Abra** `Packages/Dawn Theme/Dawn_Theme.sublime-color-scheme`
2. **Modifique** as variáveis na seção `variables`:
```json
{
  "variables": {
    "bg": "#1a1a1a",        // Fundo mais escuro
    "keyword": "#ff6b35",   // Keywords mais vibrantes
    "string": "#ffd93d",    // Strings mais douradas
    "function": "#ff8c00"   // Funções mais laranja
  }
}
```

#### Configurações de Projeto
Crie um arquivo `.sublime-project`:
```json
{
  "folders": [
    {
      "path": "."
    }
  ],
  "settings": {
    "color_scheme": "Packages/Dawn Theme/Dawn_Theme.sublime-color-scheme",
    "theme": "Dawn.sublime-theme",
    "font_size": 14,
    "font_face": "JetBrains Mono"
  }
}
```

## 🐛 Solução de Problemas

### Problemas Comuns

#### JetBrains IDEs

**Tema não aparece na lista**
```bash
# Solução:
1. Verifique se o IDE foi reiniciado
2. Vá em File → Invalidate Caches and Restart
3. Reinstale o plugin se necessário
```

**Cores não aplicam corretamente**
```bash
# Solução:
1. Verifique se o tema está selecionado
2. Limpe o cache: File → Invalidate Caches
3. Verifique conflitos com outros plugins
```

#### Sublime Text

**Tema não carrega**
```bash
# Solução:
1. Verifique se o arquivo está no diretório correto
2. Confirme o nome do arquivo nas configurações
3. Reinicie o Sublime Text
```

**Cores não aparecem**
```bash
# Solução:
1. Verifique a sintaxe do arquivo .sublime-color-scheme
2. Confirme se as variáveis estão definidas
3. Teste com um tema padrão primeiro
```

### Logs de Debug

#### JetBrains IDEs
```bash
# Localização dos logs:
# Windows: %APPDATA%\JetBrains\[Product]\log\
# macOS: ~/Library/Logs/JetBrains/[Product]/
# Linux: ~/.cache/JetBrains/[Product]/log/
```

#### Sublime Text
```bash
# Abra o console: Ctrl+` ou Cmd+`
# Verifique mensagens de erro
# Logs detalhados aparecerão aqui
```

## 📋 Checklist de Instalação

### JetBrains IDEs
- [ ] IDE atualizado para versão compatível
- [ ] Plugin Dawn Theme instalado
- [ ] IDE reiniciado após instalação
- [ ] Tema aplicado nas configurações
- [ ] Fonte configurada (JetBrains Mono recomendado)
- [ ] Configurações de editor ajustadas
- [ ] Testado com diferentes linguagens

### Sublime Text
- [ ] Sublime Text atualizado
- [ ] Package Control instalado (opcional)
- [ ] Tema Dawn instalado
- [ ] Arquivo de configuração atualizado
- [ ] Fonte configurada
- [ ] Configurações de editor ajustadas
- [ ] Testado com diferentes linguagens

## 🎯 Próximos Passos

Após a instalação:

1. **Teste** o tema com diferentes linguagens
2. **Ajuste** as configurações conforme sua preferência
3. **Explore** as opções de personalização
4. **Compartilhe** feedback na comunidade
5. **Contribua** com melhorias se possível

## 📞 Suporte

Se encontrar problemas:

1. **Verifique** esta documentação
2. **Consulte** a seção de solução de problemas
3. **Abra** uma issue no GitHub
4. **Entre** em contato com a comunidade

---

*Instalação concluída! Aproveite o conforto visual do Dawn Theme* 🌅
