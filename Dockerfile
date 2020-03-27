FROM amazonlinux

# Make able to install Node 6.x from upstream
# Install Python3.6 and Python2.7 with pip and devel
# Install GCC, Make and MySQL-devel, NodeJS, Nano, findutils, and libyaml for parsing .yml (serverless) via Python
# Clean-up after ourselves
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash - && \
  yum install -y wget curl zip unzip python3-pip python3-devel python2-devel \
  python2-pip gcc-c++ make mysql-devel nodejs nano findutils libyaml libyaml-devel git && \
  yum clean all && rm -rf /var/cache/yum

RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip && \
  unzip terraform_0.12.24_linux_amd64.zip && \
  chmod +x terraform && \
  mv terraform /usr/bin/terraform && \
  wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.2/terragrunt_linux_amd64 && \
  chmod +x terragrunt_linux_amd64 && \
  mv terragrunt_linux_amd64 /usr/bin/terragrunt

# Install the serverless framework globally
RUN npm install -g serverless

# Install/upgrade pip, awscli, mysqlclient for both Python 2.7 and Python 3.6
RUN pip-3 install --no-cache-dir --upgrade pip awscli mysqlclient pyyaml pipenv && \
  pip-2 install --no-cache-dir --upgrade pip awscli mysqlclient pyyaml pipenv
  
ENTRYPOINT ["/bin/bash", "-c"]
