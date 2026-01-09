# Wireguard

```file
sudo apt-get install wireguard -y
sudo nano /etc/wireguard/wg0.conf
# paste config

sudo wg-quick up wg0
sudo systemctl enable wg-quick@wg0.service
sudo systemctl status wg-quick@wg0.service

```
