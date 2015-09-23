company="drecchia"
software="csvn"
version="1.0.0-internal-5.1.0"

docker build -t ${company}/${software}:${version} .  | tee build.log || exit 1
ID=$(tail -1 build.log | awk '{print $3;}')

docker tag -f $ID ${company}/${software}:${version}
