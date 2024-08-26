#!\bin\bash
#installs and configures NVIDIA container toolkit for docker



#configure production repository

curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sleep 1

sudo apt-get update
sleep 1

sudo apt-get install -y nvidia-container-toolkit
sleep 1

#configure docker

sudo nvidia-ctk runtime configure --runtime=docker
sleep 1


sudo systemctl restart docker
sleep 1

