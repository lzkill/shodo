![Shodô](https://github.com/lzkill/shodo/blob/master/image/shodo.jpg?raw=true)

# Shodô

A atuação de peritos, assistentes, advogados, etc, nos processos da justiça do trabalho requer  a utilização de e-CPFs do tipo A3 (token), bem de um assinador customizado chamado **Shodô**.

O propósito deste projeto é congelar a configuração do assinador em uma imagem Docker, permitindo que os usuários atualizem seus hosts sem quebrar as dependências do Shodô. A imagem final também contém o gerenciador de certificados **Safesign** e os drivers do token **StarSign**.

## Dependências

- Docker
- git-lfs

Após o clone do projeto execute `git lfs pull` para baixar os arquivos grandes do repositório.

## How to

- Espete seu e-CPF em uma porta USB;
- Instancie um container com Shodô (`./start.sh`);
- Abra no seu navegador o link gerado pelo container;
- No Ubuntu acessado execute o Firefox e efetue login no PJe usando seu token físico.

![Shodô](https://github.com/lzkill/shodo/blob/master/image/url.png?raw=true)

## Todo

- Corrigir start do Shodô;
- Injetar `--privileged` como argumento para `x11vnc_desktop.py`;
- Download das dependências com curl.

