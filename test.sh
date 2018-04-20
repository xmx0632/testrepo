PATH=$WORKSSPACE/venv/bin:/usr/local/bin:$PATH
echo "test - - test"

which python3
which pip3
which virtualenv

python3 --version

if [ ! -d "~/.pip" ]; then
    echo "create .pip"
    mkdir ~/.pip
fi

if [ ! -f "~/.pip/pip.conf" ]; then
    echo "pip not exist"
    cat > ~/.pip/pip.conf <<EOF
[global]
index-url=https://pypi.tuna.tsinghua.edu.cn/simple
EOF
    echo "pip updated"
fi

if [ ! -d "venv" ]; then
    echo "no venv"
fi

virtualenv -p /usr/bin/python3 venv
echo "activate"

. venv/bin/activate

#. $WORKSSPACE/$JOB_NAME/venv/bin/activate
echo "install ..."
# pip3 install -r requirements-dev.txt
pip3 install -r requirement.txt

