FROM ubuntu:latest

RUN /bin/bash -c "apt update; \
    echo -e '6\n73\n' | apt install -y software-properties-common; \
    apt install -y gnupg wget vim; \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9; \
    apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'; \
    apt update; \
    apt install -y zulu-11; \
    echo 'JAVA_HOME=\"/usr/lib/jvm/zulu-11-amd64\"' >> /etc/environment; \
    source /etc/environment; \
    wget https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh; \
    chmod +x ./thinkorswim_installer.sh; \
    echo -e '\n\n1\n1\n1\n\nn\nn\n' | ./thinkorswim_installer.sh;"

WORKDIR /usr/local/thinkorswim/
CMD /bin/bash
