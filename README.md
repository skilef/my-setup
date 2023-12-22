# my-setup

Operating System: Pop!\_OS

## Setup

Install zsh

```bash
sudo apt install zsh fonts-powerline
```

Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./oh-my-zsh/.zshrc ~/.zshrc
cp ./oh-my-zsh/felix.zsh ~/.oh-my-zsh/custom/felix.zsh
```

Install nvm

```bash
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'
```

Install node 18

```bash
nvm install node 18
```

Install PNPM

```bash
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

Install aws-cli

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

Install docker

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Install and configure ECR credential helper
```bash
sudo apt install amazon-ecr-credential-helper

echo '{"credsStore": "ecr-login"}' > ~/.docker/config.json
```

Install Granted
```bash
curl -OL releases.commonfate.io/granted/v0.20.3/granted_0.20.3_linux_x86_64.tar.gz
sudo tar -zxvf ./granted_0.20.3_linux_x86_64.tar.gz -C /usr/local/bin/
```

Things to install from PopShop (.deb):
* VSCode
* Discord
* Firefox
* Firmware Manager
* Gnome Tweaks
* Logseq
* Thunderbird
* Slack
* VLC
