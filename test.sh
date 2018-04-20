PATH=$WORKSSPACE/venv/bin:/usr/local/bin:$PATH
echo "test - - test"

which python3
which pip3
which virtualenv

python3 --version

if [ ! -d "venv" ]; then
    pwd
fi

virtualenv -p /usr/bin/python3 venv
echo "activate"

ls $WORKSSPACE/$JOB_NAME/venv/

. $WORKSSPACE/$JOB_NAME/venv/bin/activate
echo "install ..."
pip install -r requirements-dev.txt --download-cache=/tmp/$JOB_NAME
