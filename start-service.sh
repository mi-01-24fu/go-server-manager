#!/bin/bash

export PATH=$PATH:c/Go/bin/go.exe

# 対象の階層まで移動. Your Project build. Your Project実行.
cd Your Project Path
go build -o Your Project
./Your Project &

# 対象の階層まで移動. Your Project build. Your Project実行.
cd Your Project Path
go build -o Your Project
./Your Project &

sleep 1

# your_project_pid 取得.
your_project_pid=$(MSYS_NO_PATHCONV=1 tasklist /FI "IMAGENAME eq Your Project" /FO CSV | awk -F"," 'NR==2 {print $2}')
your_project_pid=${your_project_pid//\"/}

# your_project_pid 取得.
your_project_pid=$(MSYS_NO_PATHCONV=1 tasklist /FI "IMAGENAME eq Your Project" /FO CSV | awk -F"," 'NR==2 {print $2}')
your_project_pid=${your_project_pid//\"/}

echo "your_project PID:$your_project_pid"
echo "your_project PID:$your_project_pid"
