![Shodô](https://github.com/lzkill/shodo/blob/master/image/shodo.jpg?raw=true)

# Shodô

A atuação de peritos, assistentes, advogados, etc, nos processos da justiça do trabalho requer  a utilização de e-CPFs do tipo A3 (token), bem de um assinador customizado chamado **Shodô**.
O propósito deste projeto é congelar a configuração do assinador em uma imagem Ubuntu, permitindo que os usuários atualizem seus hosts sem quebrar as dependências do Shodô. A imagem final também contém o gerenciador de certificados **Safesign** e os drivers do token StarSign.

## Dependências

- Docker
- git-lfs

## How to

- `git lfs pull`
- Espete seu e-CPF em uma porta USB;
- `./start.sh`
- Abra o link gerado no seu navegador. No Ubuntu acessado execute o Firefox para logar no PJe usando seu token físico

![Shodô](https://github.com/lzkill/shodo/blob/master/image/url.png?raw=true)

## Todo

- Corrigir start do Shodô
- Pass `--privileged` as an argument to `x11vnc_desktop.py`
- Download dependencies with curl

