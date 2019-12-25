FROM debian:buster

RUN apt-get update && \
    apt-get install -y sudo curl git openssh-client wget vim gnupg gnupg1 gnupg2 nmap mc \
        postgresql postgresql-client postgresql-doc pgadmin3 phppgadmin && \
    echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config && \
    wget -c "https://github.com/fullstorydev/grpcurl/releases/download/v1.4.0/grpcurl_1.4.0_linux_x86_64.tar.gz" && \
    gzip -cd grpcurl_1.4.0_linux_x86_64.tar.gz | tar xfv - && \
    mv grpcurl /usr/bin/ && \
    wget -c "https://github.com/ktr0731/evans/releases/download/0.8.4/evans_linux_amd64.tar.gz" && \
    tar -C /usr/bin -xzf evans_linux_amd64.tar.gz && \
    wget -c "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian10-4.2.1.tgz" && \
    tar -C /usr/local -xzf mongodb-linux-x86_64-debian10-4.2.1.tgz && \
    mv /usr/local/mongodb-linux-x86_64-debian10-4.2.1 /usr/local/mongodb