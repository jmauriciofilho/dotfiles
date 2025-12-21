# Meus dotfiles

Este repositório contem os arquivos dotfiles bases para meu setup pessoal do arch linux

## Requerimentos

Certifique-se de ter os seguintes items instalados no seu sistema

### Git

    sudo pacman -S git

### Stow

    sudo pacman -S stow

## Instalação

Primeiro, verifique o repositório de arquivos de configuração (dotfiles) no seu diretório $HOME usando o Git.

    git clone git@github.com:jmauriciofilho/dotfiles.git
    cd dotfiles

Em seguida, use o GNU stow para criar links simbólicos.

    stow .
    