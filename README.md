# SqlToStringDelphi
Conversão de consulta em SQL para String simples em Delphi.

## 💾 Instalação
- Necessário instalar o **SynEdit** na IDE do Delphi em *Tools -> GetIt Package Manager* para compilar o projeto.

## ⚡️ Como utilizar
### SQL para String simples
- Informar a consulta em SQL no campo "SQL".
- Utilizar o botão "String[F3]".
- A String simples será gerada no campo "String".
- É possível copiar o texto para a área de transferência através do atalho F5 ou pelo menu ao utilizar o botão direito do mouse.
#### Opções de formatação
- ***"Var. Inicio":*** o texto informado será concatenado a String no começo de cada linha.
- ***"Var. Fim":*** o texto informado será concatenado a String no final de cada linha.

- ***"Var. Inicio" na primeira linha:*** desmarcada por padrão, não apresenta o texto do campo "Var. Inicio" na primeira linha.
- ***"Var. Fim" na última linha:*** desmarcada por padrão, não apresenta o texto do campo "Var. Fim" na última linha.
- ***Considerar maior linha:*** desmarcada por padrão, considera a linha que possuí a maior quantidade de texto informado no campo "SQL" para informar o final da String.

### String simples para SQL
- Informar a String simples no campo "String".
- Utilizar o botão "SQL[F2]".
- A consulta SQL será gerada no campo "SQL".
- É possível copiar o texto para a área de transferência através do atalho F4 ou pelo menu ao utilizar o botão direito do mouse.
