export GOBIN=/root/tutorial/go/bin
curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
#switch user to tutorial directory

#setup operator
#Temporarily update operator sdk to v1.9 to fix initialization error
wget https://github.com/operator-framework/operator-sdk/releases/download/v1.9.0/operator-sdk_linux_amd64
chmod +x operator-sdk_linux_amd64
mv operator-sdk_linux_amd64 /root/tutorial/go/bin/operator-sdk -f

#setup Memcached-operator
oc new-project myproject
mkdir -p /root/projects/memcached-operator
cd /root/projects/memcached-operator
operator-sdk init --domain example.com --repo github.com/example/memcached-operator
operator-sdk create api --group cache --version v1alpha1 --kind Memcached --resource --controller

#Get Memcached-operator
#wget -e robots=off -r -nH -np --cut-dirs=7 https://github.com/operator-framework/operator-sdk/tree/master/testdata/go/v3/memcached-operator -P /root/tutorial/temp
#rsync -a -v /root/tutorial/temp/memcached-operator /root/projects/memcached-operator
wget -q https://raw.githubusercontent.com/operator-framework/operator-sdk/master/testdata/go/v3/memcached-operator/config/samples/cache_v1alpha1_memcached.yaml -O config/samples/cache_v1alpha1_memcached.yaml
wget -q https://raw.githubusercontent.com/operator-framework/operator-sdk/master/testdata/go/v3/memcached-operator/api/v1alpha1/memcached_types.go -O api/v1alpha1/memcached_types.go


make generate
make manifests


cd ~/tutorial
clear
