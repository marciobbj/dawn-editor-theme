## Instalação no JetBrains IDEs
O tema Dawn pode ser instalado em qualquer IDE da JetBrains (como IntelliJ IDEA, PyCharm, WebStorm, etc.) seguindo os passos abaixo:

### Instalação Manual
Se preferir instalar manualmente:
1. Baixe o arquivo `.jar` da pasta `Dawn-JetBrains`
2. No IDE, vá para `Settings/Preferences → Plugins → ⚙️ → Install Plugin from Disk...`
3. Selecione o arquivo `.jar` baixado
4. Reinicie o IDE e siga o passo 5 acima para aplicar o tema

## Instalação no Sublime Text
Para instalar o tema Dawn no Sublime Text:
1. **Instale o Package Control** (caso ainda não tenha):
    - Abra o Sublime Text
    - Pressione `Ctrl+`` para abrir o console
    - Cole o código disponível em [packagecontrol.io](https://packagecontrol.io/installation) e pressione Enter
    - Reinicie o Sublime Text

2. **Instalação via Package Control**:
    - Pressione `Ctrl+Shift+P` (Windows/Linux) ou `Cmd+Shift+P` (macOS) para abrir a paleta de comandos
    - Digite "Package Control: Install Package" e pressione Enter
    - Procure por "Dawn Theme" e selecione para instalar

3. **Instalação Manual**:
    - Copie a pasta para o diretório de pacotes do Sublime Text:
        - No Windows: `%APPDATA%\Sublime Text\Packages\`
        - No macOS: `~/Library/Application Support/Sublime Text/Packages/`
        - No Linux: `~/.config/sublime-text/Packages/`

`Dawn-SublimeText`

4. **Aplicar o tema**:
    - Vá para `Preferences → Settings`
    - Adicione ou modifique as seguintes linhas:
``` json
   {
     "theme": "Dawn.sublime-theme",
     "color_scheme": "Packages/Dawn-SublimeText/Dawn.tmTheme"
   }
```
- Salve o arquivo

## Personalização
Ambas as versões do tema Dawn permitem personalizações. Consulte a documentação específica de cada plataforma para mais detalhes sobre como personalizar cores, fontes e outros aspectos do tema.

## Problemas Comuns
Se encontrar algum problema durante a instalação ou uso do tema, verifique:
- Se o seu IDE/editor está atualizado para a versão mais recente
- Se há conflitos com outros temas ou plugins instalados
- Tente reiniciar o IDE/editor após a instalação

## Suporte
Para reportar bugs ou sugerir melhorias, por favor abra uma issue no repositório GitHub deste projeto.
