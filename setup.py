import os
import shutil

if __name__ == '__main__':

    if not os.path.exists("~/data/wx"):
        os.makedirs("~/data/wx", exist_ok=True)

    if not os.path.exists("build"):
        os.mkdir("build")
    else:
        shutil.rmtree("build")
        os.mkdir("build")

    shutil.copy("requirements.txt", "build")
    shutil.copy("wx_gzh.py", "build")

    shutil.copytree("conf", "build/conf")
    shutil.copytree("bin", "build/bin")
    shutil.copytree("consumer", "build/consumer")
    shutil.copytree("lib", "build/lib")
    shutil.copytree("log", "build/log")
    shutil.copytree("output", "build/output")
    shutil.copytree("producter", "build/producter")

    cmd = 'docker build -t mp-wx-spider .'
    os.popen(cmd).read()

    # cmd = 'docker network create wx_app_net'
    # os.popen(cmd).read()
