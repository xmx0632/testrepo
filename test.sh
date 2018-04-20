PATH=$WORKSSPACE/venv/bin:/usr/local/bin:$PATH
echo "test - - test"

which python3
which pip3
which virtualenv

python3 --version

if [ ! -d "venv" ]; then
    echo "no venv"
fi

virtualenv -p /usr/bin/python3 venv
echo "activate"

pwd
ls
. venv/bin/activate

#. $WORKSSPACE/$JOB_NAME/venv/bin/activate
echo "install ..."
# pip3 install -r requirements-dev.txt
pip3 install -r requirement.txt

