# 🌅 Dawn Theme

Um tema escuro e minimalista que evoca a suavidade do amanhecer, projetado para proporcionar conforto visual durante longas sessões de programação. A paleta equilibrada combina tons suaves com alto contraste, destacando a sintaxe sem cansar a visão.

## ✨ Características

- **Paleta suave**: Cores inspiradas no amanhecer para reduzir a fadiga visual
- **Alto contraste**: Texto bem definido para melhor legibilidade
- **Minimalista**: Design limpo que não distrai do código
- **Multi-plataforma**: Suporte para JetBrains IDEs, Sublime Text e VS Code
- **Sintaxe rica**: Destaque completo para múltiplas linguagens de programação

## 🎨 Paleta de Cores

A paleta Dawn é cuidadosamente projetada para criar uma experiência visual harmoniosa:

| Elemento | Cor | Descrição |
|----------|-----|-----------|
| **Background** | `#2a2828` | Fundo escuro suave |
| **Foreground** | `#FFFFFF` | Texto principal branco |
| **Keywords** | `#d25b00` | Palavras-chave em laranja escuro |
| **Strings** | `#fee872` | Strings em amarelo suave |
| **Functions** | `#ffa500` | Funções em laranja vibrante |
| **Classes** | `#ffa500` | Classes em laranja vibrante |
| **Comments** | `#bebebe` | Comentários em cinza claro |
| **Numbers** | `#d19a66` | Números em marrom claro |
| **Errors** | `#E06C75` | Erros em vermelho suave |

![Dawn Color Palette](./imgs/dawncolor-palette.png)

## 📸 Visualizações

### JetBrains IDEs
![Dawn Jetbrains](./imgs/example_1.png)

## 🚀 Instalação

### JetBrains IDEs (IntelliJ IDEA, PyCharm, WebStorm, etc.)

#### Via Marketplace (Recomendado)
1. **Abra** seu IDE JetBrains
2. **Acesse** as configurações:
   - **macOS**: `⌘,` (Command + Vírgula)
   - **Windows/Linux**: `Ctrl+Alt+S`
3. **Navegue** para **Plugins** → **Marketplace**
4. **Busque** por **"Dawn Theme"**
5. **Clique** em **Install**
6. **Reinicie** o IDE
7. **Aplique** o tema:
   - Vá em **Appearance & Behavior** → **Appearance**
   - Em **Theme**, selecione **"Dawn Theme"**
   - Clique em **Apply** e **OK**

#### Instalação Manual
1. **Baixe** o arquivo `.jar` da pasta `Dawn-JetBrains/`
2. **Abra** as configurações do IDE
3. **Vá** em **Plugins** → **⚙️** → **Install Plugin from Disk...**
4. **Selecione** o arquivo `.jar` baixado
5. **Reinicie** o IDE e aplique o tema conforme passo 7 acima

### Sublime Text

#### Via Package Control
1. **Instale** o Package Control (se necessário):
   - Abra o console: `Ctrl+\`` (Windows/Linux) ou `Cmd+\`` (macOS)
   - Cole o script de instalação de https://packagecontrol.io/installation
   - Execute e reinicie o Sublime Text

2. **Instale** o tema:
   - Abra a **Command Palette**: `Ctrl+Shift+P` (Windows/Linux) ou `Cmd+Shift+P` (macOS)
   - Digite **"Package Control: Install Package"**
   - Busque por **"Dawn Theme"** e instale

3. **Configure** o tema:
   - Abra **Preferences** → **Settings**
   - Adicione ao User Settings:
   ```json
   {
     "theme": "Dawn.sublime-theme",
     "color_scheme": "Packages/Dawn Theme/Dawn_Theme.sublime-color-scheme"
   }
   ```

#### Instalação Manual
1. **Copie** a pasta `Dawn-SublimeText/` para:
   - **Windows**: `%APPDATA%\Sublime Text\Packages\`
   - **macOS**: `~/Library/Application Support/Sublime Text/Packages/`
   - **Linux**: `~/.config/sublime-text/Packages/`

2. **Configure** conforme passo 3 acima

### VS Code

#### Via Marketplace (Recomendado)
1. **Abra** o VS Code
2. **Pressione** `Ctrl+Shift+X` (Windows/Linux) ou `Cmd+Shift+X` (macOS)
3. **Busque** por "Dawn Theme"
4. **Clique** em Install
5. **Selecione** o tema: `Ctrl+K Ctrl+T` → "Dawn Theme"

#### Instalação Manual
1. **Baixe** a pasta `Dawn-VSCode/`
2. **Copie** para: `~/.vscode/extensions/dawn-theme/`
3. **Reinicie** o VS Code
4. **Selecione** o tema conforme passo 5 acima

#### Configuração Recomendada
Adicione ao seu `settings.json`:
```json
{
  "workbench.colorTheme": "Dawn Theme",
  "editor.fontSize": 14,
  "editor.fontFamily": "JetBrains Mono, Consolas, 'Courier New', monospace",
  "editor.lineHeight": 1.4,
  "editor.wordWrap": "on",
  "editor.rulers": [80, 120],
  "editor.renderWhitespace": "selection"
}
```

## 🎯 Linguagens Suportadas

O tema Dawn oferece suporte completo para:

- **Python** - Destaque completo para sintaxe, decorators, type hints
- **JavaScript/TypeScript** - Funções, classes, imports, exports
- **Java** - Classes, métodos, annotations
- **C/C++** - Funções, classes, macros
- **HTML/CSS** - Tags, propriedades, seletores
- **SQL** - Keywords, tabelas, funções
- **E muito mais!**

## ⚙️ Personalização

### JetBrains IDEs
1. **Abra** as configurações do IDE
2. **Vá** em **Editor** → **Color Scheme** → **Dawn Theme**
3. **Clique** no ícone de engrenagem → **Duplicate**
4. **Personalize** as cores conforme sua preferência

### Sublime Text
1. **Abra** o arquivo `Dawn_Theme.sublime-color-scheme`
2. **Modifique** as variáveis de cor na seção `variables`
3. **Salve** o arquivo
4. **Reinicie** o Sublime Text

### Exemplo de Personalização
```json
{
  "variables": {
    "bg": "#1a1a1a",        // Fundo mais escuro
    "keyword": "#ff6b35",   // Keywords mais vibrantes
    "string": "#ffd93d"     // Strings mais douradas
  }
}
```

## 🔧 Configurações Recomendadas

### Fontes
Para uma experiência visual ideal, recomendamos:

- **JetBrains Mono** - Fonte monospace otimizada para programação
- **Fira Code** - Suporte a ligaduras
- **Cascadia Code** - Excelente legibilidade

### Configurações do Editor
```json
{
  "font_size": 14,
  "line_height": 1.4,
  "word_wrap": true,
  "rulers": [80, 120],
  "draw_white_space": "selection"
}
```

## 🐛 Solução de Problemas

### Problemas Comuns

**O tema não aparece na lista**
- Verifique se o IDE foi reiniciado após a instalação
- Confirme se não há conflitos com outros temas

**Cores não estão aplicando corretamente**
- Verifique se o tema está selecionado corretamente
- Limpe o cache do IDE: **File** → **Invalidate Caches and Restart**

**Sublime Text não reconhece o tema**
- Verifique se o arquivo está no diretório correto
- Confirme se o nome do arquivo está correto nas configurações

### Logs de Erro
Se encontrar problemas, verifique os logs:
- **JetBrains**: **Help** → **Show Log in Finder/Explorer**
- **Sublime Text**: Console do Sublime Text

## 🤝 Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. **Fork** o repositório
2. **Crie** uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. **Commit** suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. **Push** para a branch (`git push origin feature/nova-feature`)
5. **Abra** um Pull Request

### Diretrizes de Contribuição
- Mantenha a consistência com a paleta de cores existente
- Teste em múltiplas linguagens de programação
- Documente novas funcionalidades
- Siga as convenções de nomenclatura existentes

## 📄 Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 🙏 Agradecimentos

- Inspirado na beleza natural do amanhecer
- Comunidade de desenvolvedores que testaram e forneceram feedback
- Contribuidores que ajudaram a melhorar o tema

## 📞 Suporte

- **Issues**: [GitHub Issues](https://github.com/seu-usuario/dawn-theme/issues)
- **Discussions**: [GitHub Discussions](https://github.com/seu-usuario/dawn-theme/discussions)
- **Email**: seu-email@exemplo.com

---

*Que seu código seja tão belo quanto o amanhecer* 🌅

