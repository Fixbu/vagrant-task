curl https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20220805.0.0/providers/virtualbox.box >bionic.box
vagrant box add bionic bionic.box  # регистрируем этот образ во внутреннем реестре Vagrant
vagrant init bionic  # создаём Vagrantfile

ansible-galaxy install timorunge.freeipa_server

vagrant up  # запускаем машину по описанию в Vagrant
# По сути Vagrant переводит описание из своего формата в формат VirtualBox, запускает машину и сам отключается.
