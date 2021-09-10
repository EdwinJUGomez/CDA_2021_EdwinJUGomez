Vagrant.configure("2") do |config|
  
    config.vm.box = "ubuntu/bionic64"
  
    ##
    ## se debe ejecutar en el prompt
    ##
    ##    vagrant plugin install vagrant-disksize
    ##
  
  
    # config.disksize.size = '15GB'
  
    config.vm.provider "virtualbox" do |v|
      # v.memory = 4028
      # v.cpus = 4    
    end
    
    ##
    ##
    ##  Configuración básica y herramientas de programación
    ##
    ##
    config.vm.provision "shell", inline: <<-SHELL
      sudo apt-get update && \
      sudo apt-get install -yq \
        build-essential \
        tree \
        python-dev \
        python3-minimal \
        python3-pip \
        python3-dev \       
        python3-venv \ 
        sudo apt-get update \
      pip3 install --upgrade pip 
      pip3 install pandas matplotlib 
    SHELL

  end