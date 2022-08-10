curl https://app.vagrantup.com/debian/boxes/bullseye64/versions/11.20220718.1/providers/virtualbox.box >debian11.box
vagrant box add debian11 debian11.box  # регистрируем этот образ во внутреннем реестре Vagrant
vagrant init debian11  # создаём Vagrantfile

vagrant up  # запускаем машину по описанию в Vagrant
# По сути Vagrant переводит описание из своего формата в формат VirtualBox, запускает машину и сам отключается.
