MAILAFTER_HOME=$(pwd)
echo "export MAILAFTER_HOME=$MAILAFTER_HOME" >> ~/.bashrc
echo 'export PATH=$MAILAFTER_HOME:$PATH' >> ~/.bashrc
source ~/.bashrc
