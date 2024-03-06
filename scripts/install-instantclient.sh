set -e

export architecture=`uname -m`
mkdir -p /opt/oracle/
if [ ${architecture} = 'aarch64' ]
then
  echo "Installing arm64 instantclient"
  git clone -b arm64 --single-branch --depth 1 https://github.com/yalelibrary/instantclient-binaries
else
  echo "Installing x64 instantclient"
  git clone -b x64 --single-branch --depth 1 https://github.com/yalelibrary/instantclient-binaries
fi
unzip -d /opt/oracle -o 'instantclient-binaries/instantclient-*.zip'
rm -rf instantclient-binaries
ln -s /opt/oracle/instantclient* /opt/oracle/instantclient