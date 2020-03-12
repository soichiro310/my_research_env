cd ~

wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
sh Anaconda3-2019.07-Linux-x86_64.sh

jupyter notebook --generate-config

SHA_TMP=`ipython -c 'from IPython.lib import passwd; passwd()' | cut -d ' ' -f2`

echo "c.NotebookApp.password = u${SHA_TMP}" >> ~/.jupyter/jupyter_notebook_config.py

unset SHA_TMP

echo "c.NotebookApp.ip = '133.15.24.14'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 8888" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.notebook_dir = '/'" >> ~/.jupyter/jupyter_notebook_config.py

cp ./tmux_conf.txt ~/.tmux.conf
