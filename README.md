# E-commerce de livros
    Trabalho de programação Web quarto periodo criando com Ruby on Rails + MongoDB



# Tutorial para configurar a aplicação usando vagrant  

## Links para instalação da maquina virtual e do vagrant  
  Instale [https://www.virtualbox.org/]  
  Instale [https://www.vagrantup.com/]  
## Inicializando o projeto  
  Depois de instalar o vagrant e a virtualbox, usando o terminal ou o cmd, navegue até a pasta /elivros/web  
  Estando no diretório /elivros/web rode o seguinte comando para inicializar a maquina virtual com o projeto configurado  
  >`vagrant up`  

  Depois de concluir a inicialização da maquina virtual rode o seguinte comando para acessar a maquina virtual pelo terminal  

  >`vagrant ssh`  

  Se tudo deu certo após o comando anterior o seu terminal vai estar com a seguinte linha

  >vagrant@vagrant-ubuntu-trusty-64:~$

  Navegue até a pasta da aplicação

  >vagrant@vagrant-ubuntu-trusty-64:~$ `cd /vagrant/elivrosapp`

  Execute o seguinte comando para instalar as dependencias

  >vagrant@vagrant-ubuntu-trusty-64:~$ `bundle`

  Execute o seguinte comando para iniciar a aplicação

  >vagrant@vagrant-ubuntu-trusty-64:~$ `rails s`

  Se a aplicação startar corretamente, sua linha de comando estará assim:

  >=> Booting Puma  
    => Rails 5.2.0 application starting in development  
    => Run `rails server -h` for more startup options  
    Puma starting in single mode...  
    * Version 3.11.4 (ruby 2.5.1-p57), codename: Love Song  
    * Min threads: 5, max threads: 5  
    * Environment: development  
    * Listening on tcp://0.0.0.0:3000  
    Use Ctrl-C to stop

  Após ter startado o servidor, abre um navegador e coloque a seguinte url:  

  >localhost:3000

  Pronto, feito isso você verá a aplicação rodando  

# Para sair do terminal da maquina virtual e voltar para maquina host
  Execute o seguinte comando  
  >vagrant@vagrant-ubuntu-trusty-64:~$ `exit`  

# Para pausar a maquina virtual
  Dentro do diretorio no projeto /elivros/web da sua maquina, rode o comando:  
  >`vagrant halt`  

# Para acessa o Banco de Dados fora da maquina virtual
    Caso você queira acessar o banco de dados da maquina virtual  
    pela sua maquina usando uma ferramenta de interface gráfica  
    como o mongodb compass ou o robo 3t siga este tutorial  

  Dentro da maquina virtual siga as seguntes intruções:  
  
  Abre o aquivo de configuração do mongo com o comando:  

  >vagrant@vagrant-ubuntu-trusty-64:~$ `sudo vim /etc/mongod.conf`  

  Aperte i  
  altere a seguinte linha do arquivo  
  
  >bindIp: 127.0.0.1  
  
  para  
  
  >bindIp: 0.0.0.0  
  
  aperte `esc`  
  digite `:wq` 

  >vagrant@vagrant-ubuntu-trusty-64:~$ `:wq`  

  Pressione enter 

  Pronto, agora é só **reiniciar a maquina virtual** que você poderá acessar o banco da maquina virtual pela sua maquina


