dir=$(cd $(dirname $0); pwd)

cd $dir

curl -L https://github.com/cloudfoundry-incubator/spiff/releases/download/v1.0.7/spiff_darwin_amd64.zip > spiff_darwin

unzip spiff_darwin

mkdir -p /usr/local/bin

mv spiff /usr/local/bin/

rm spiff_darwin