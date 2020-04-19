sudo apt install nfs-kernel-server
sudo mkdir -p /pv/nfs/test-volume
sudo chmod 777 /pv/nfs/test-volume
sudo systemctl status nfs-server
sudo systemctl stop nfs-server
sudo systemctl start nfs-server
sudo systemctl restart nfs-server
sudo vi /etc/exports

/mnt/nfs/test-volume *(rw,sync,no_subtree_check,insecure)
/pv/nfs/test-volume *(rw,sync,no_subtree_check,insecure)
sudo exportfs -a
sudo exportfs -v

kubectl expose deploy nginx-deploy --port 80 --type NodePort

apt update
apt install curl
curl http://localhost/