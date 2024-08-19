import requests
import subprocess


ip_adress = requests.get("https://api64.ipify.org?format=json").json()["ip"]

server_jar = "/usr/local/games/minecraft_server/Java/server.jar"

cmd = ["Java", "-Xmx1024M", "-Xms1024M", "-jar", server_jar, "nogui"]

def run():
    result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    print(result.stdout)
    print(result.stderr)

run()