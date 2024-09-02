import subprocess

cmd =  ["curl", "http://universities.hipolabs.com/search?country=United%20States"]

process = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)

data = process.stdout.decode()
