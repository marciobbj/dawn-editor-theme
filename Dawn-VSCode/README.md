# 🌅 Dawn Theme para VS Code

Uma extensão do tema Dawn para Visual Studio Code, trazendo a mesma paleta suave e minimalista inspirada no amanhecer.

## ✨ Características

- **Paleta suave**: Cores inspiradas no amanhecer para reduzir a fadiga visual
- **Alto contraste**: Texto bem definido para melhor legibilidade
- **Minimalista**: Design limpo que não distrai do código
- **Sintaxe rica**: Destaque completo para múltiplas linguagens de programação
- **Interface consistente**: Todas as áreas do VS Code seguem a paleta Dawn

## 🎨 Paleta de Cores

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

## 🚀 Instalação

### Via Marketplace (Recomendado)
1. **Abra** o VS Code
2. **Pressione** `Ctrl+Shift+X` (Windows/Linux) ou `Cmd+Shift+X` (macOS)
3. **Busque** por "Dawn Theme"
4. **Clique** em Install
5. **Selecione** o tema: `Ctrl+K Ctrl+T` → "Dawn Theme"

### Instalação Manual
1. **Baixe** a pasta `Dawn-VSCode/`
2. **Copie** para: `~/.vscode/extensions/dawn-theme/`
3. **Reinicie** o VS Code
4. **Selecione** o tema conforme passo 5 acima

## ⚙️ Configuração

### Configurações Recomendadas
Adicione ao seu `settings.json`:

```json
{
  "workbench.colorTheme": "Dawn Theme",
  "editor.fontSize": 14,
  "editor.fontFamily": "JetBrains Mono, Consolas, 'Courier New', monospace",
  "editor.lineHeight": 1.4,
  "editor.wordWrap": "on",
  "editor.rulers": [80, 120],
  "editor.renderWhitespace": "selection",
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": true,
  "editor.minimap.enabled": false,
  "workbench.iconTheme": "vs-seti",
  "terminal.integrated.fontFamily": "JetBrains Mono"
}
```

### Configurações de Projeto
Crie um arquivo `.vscode/settings.json` no seu projeto:

```json
{
  "workbench.colorTheme": "Dawn Theme",
  "editor.fontSize": 14,
  "editor.fontFamily": "JetBrains Mono"
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
- **PHP** - Classes, funções, variáveis
- **Go** - Structs, interfaces, métodos
- **Rust** - Traits, enums, macros
- **E muito mais!**

## 🔧 Personalização

### Configurações de Cores
Você pode personalizar cores específicas no `settings.json`:

```json
{
  "workbench.colorCustomizations": {
    "editor.background": "#1a1a1a",
    "editor.foreground": "#ffffff",
    "editor.lineHighlightBackground": "#2c313c",
    "editor.selectionBackground": "#3e4451",
    "sideBar.background": "#2a2828",
    "statusBar.background": "#2a2828"
  },
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": ["keyword"],
        "settings": {
          "foreground": "#ff6b35"
        }
      },
      {
        "scope": ["string"],
        "settings": {
          "foreground": "#ffd93d"
        }
      }
    ]
  }
}
```

### Extensões Recomendadas
Para uma experiência completa, instale:

- **Bracket Pair Colorizer 2** - Destaque de parênteses
- **GitLens** - Informações do Git
- **Auto Rename Tag** - HTML/XML
- **Prettier** - Formatação de código
- **ESLint** - Linting JavaScript
- **Python** - Suporte Python
- **Java Extension Pack** - Suporte Java

## 🐛 Solução de Problemas

### Problemas Comuns

**O tema não aparece na lista**
- Verifique se a extensão foi instalada corretamente
- Reinicie o VS Code
- Verifique se não há conflitos com outros temas

**Cores não aplicam corretamente**
- Verifique se o tema está selecionado
- Limpe o cache: `Ctrl+Shift+P` → "Developer: Reload Window"
- Verifique configurações de personalização

**Sintaxe highlighting não funciona**
- Verifique se a linguagem está sendo reconhecida
- Instale extensões de linguagem específicas
- Verifique configurações de token colors

### Logs de Debug
1. **Abra** o Developer Tools: `Help → Toggle Developer Tools`
2. **Verifique** a aba Console para erros
3. **Reporte** problemas com logs detalhados

## 🤝 Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. **Fork** o repositório
2. **Crie** uma branch para sua feature
3. **Modifique** o arquivo `dawn-theme.json`
4. **Teste** com diferentes linguagens
5. **Abra** um Pull Request

### Diretrizes de Contribuição
- Mantenha a consistência com a paleta de cores existente
- Teste em múltiplas linguagens de programação
- Documente mudanças significativas
- Siga as convenções de nomenclatura do VS Code

## 📄 Licença

Este projeto está licenciado sob a MIT License.

## 🙏 Agradecimentos

- Inspirado na beleza natural do amanhecer
- Comunidade VS Code por feedback e suporte
- Contribuidores que ajudaram a melhorar o tema

## 📞 Suporte

- **Issues**: [GitHub Issues](https://github.com/marcionb/dawn-theme/issues)
- **Discussions**: [GitHub Discussions](https://github.com/marcionb/dawn-theme/discussions)

---

*Que seu código seja tão belo quanto o amanhecer* 🌅
