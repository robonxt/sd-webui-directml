import os
from pathlib import Path
from modules import shared

from modules.paths_internal import script_path


def is_restartable() -> bool:
    """
    Return True if the webui is restartable (i.e. there is something watching to restart it with)
    """
    return bool(os.environ.get('SD_WEBUI_RESTART'))


def restart_program() -> None:
    """creates file tmp/restart and immediately stops the process, which webui.bat/webui.sh interpret as a command to start webui again"""
    
    # (Path(script_path) / "tmp" / "restart").touch()
    
    shared.state.request_restart()


def stop_program() -> None:
    shared.state.server_command("stop")
