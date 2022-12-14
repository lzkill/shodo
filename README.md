![Shodô](https://github.com/lzkill/shodo/blob/master/docs/img/shodo.jpg?raw=true)

# Shodô

A atuação de peritos, advogados, etc, nos processos da justiça do trabalho requer  a utilização de e-CPFs do tipo A3 (token), bem como de um assinador customizado chamado **Shodô**.

O propósito deste projeto é congelar a configuração do assinador em uma imagem Docker, permitindo que os usuários atualizem seus hosts sem quebrar as dependências do Shodô. A imagem final também contém o gerenciador de certificados **SafeSign** e os drivers do token **StarSign**.

![Starsign](https://github.com/lzkill/shodo/blob/master/docs/img/starsign.png?raw=true)

## Dependências

- Docker
- git-lfs

:heavy_check_mark: Após o clone do projeto execute `git lfs pull` para baixar os arquivos grandes do repositório.

## How to

- Espete seu e-CPF em uma porta USB;
- Instancie um container com Shodô (`./run.sh`);
- Abra no seu navegador o link gerado pelo container;

![Url](https://github.com/lzkill/shodo/blob/master/docs/img/url.png?raw=true)

- No terminal exibido execute o Shodô (`sudo -E ./start_shodo`);

:bulb: Arquivos existentes no `Desktop` do host são vizíveis e editáveis no `Desktop` do container.

:warning: O container gerado roda em modo privilegiado (`--privileged`) e faz bind de `/dev/bus/usb`.