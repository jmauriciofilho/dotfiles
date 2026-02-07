# Meus dotfiles

Este repositório contem os arquivos dotfiles bases para configurar meus setups pessoais para o (Arch linux)[https://archlinux.org/] e o (Cachyos)[https://cachyos.org/]

## Requerimentos

Certifique-se de ter os seguintes items instalados no seu sistema

### Git

    sudo pacman -S git

### Stow

    sudo pacman -S stow

## Instalação

Primeiro, clone o repositório de arquivos de configuração (dotfiles) no seu diretório $HOME usando o Git.

    git clone git@github.com:jmauriciofilho/dotfiles.git

Em seguida remova os arquivos das pastar correspondentes na pasta .config do sistema

Exemplo de comando para remoção do conteúdo em uma das pastas de configuração

    rm -r ~/.config/waybar/*

Em seguida, use o GNU stow para criar links simbólicos.

    cd dotfiles
    stow .

## TO-DO - Pontos para melhorar e ajustar nos meus dotfiles

- [] Ajustar cor de alerta da waybar para um próximo do amarelo
- [] Melhorar cores e layout do Rofi
- [] Ajustar icone zen browser no Rofi
- [] Melhorar transparência e adicionar blur no swaync
- [] Criar seletor mais estiloso para wallpapers
