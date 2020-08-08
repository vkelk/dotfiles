# Install software
sudo apt-get update && sudo apt-get install -y \
	git \
	gpg \
	curl \
	rsync \
	unzip \
	htop \
	python3-pip \
	zsh

# Install pipenv
pip3 install --user \
	ansible \
	pipenv

Install AWS CLI v2.
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip && sudo ./aws/install && rm awscliv2.zip && rm -rf aws

# Install Terraform.
curl "https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip" -o "terraform.zip" \
  && unzip terraform.zip && chmod +x terraform && mv terraform ~/.local/bin && rm terraform.zip

# Install pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
ln -s ~/.pyenv/libexec/pyenv ~/.local/bin/pyenv
echo 'eval "$(pyenv init -)"' >>  ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"'  ~/.bashrc

# Set zsh to be default shell
chsh -s $(which zsh)

# Restart shell 
exec $SHELL

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'eval "$(pyenv init -)"' >>  ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"'  ~/.zshrc

# Install Python build dependencies
sudo apt-get install -y --no-install-recommends \
	make \
	build-essential \
	libssl-dev \
	zlib1g-dev \
	libbz2-dev \
	libreadline-dev \
	libsqlite3-dev \
	llvm \
	libncurses5-dev \
	xz-utils \
	tk-dev \
	libxml2-dev \
	libxmlsec1-dev \
	libffi-dev \
	liblzma-dev

pyenv install 3.6.11 && pyenv global 3.6.11

