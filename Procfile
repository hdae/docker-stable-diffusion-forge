webui: bash /workspace/webui.sh
notebook: python -m jupyter lab --no-browser --port=8888 --ip=0.0.0.0 --FileContentsManager.delete_to_trash=False --ServerApp.terminado_settings='{"shell_command":["/bin/bash"]}' --ServerApp.token=$JUPYTER_PASSWORD --ServerApp.allow_origin=* --ServerApp.preferred_dir=/workspace &>>/jupyter.log
