#!/bin/bash

# your_project_pid 取得.
your_project_pid=$(MSYS_NO_PATHCONV=1 tasklist /FI "IMAGENAME eq Your Project" /FO CSV | awk -F"," 'NR==2 {print $2}')
your_project_pid=${your_project_pid//\"/}

# your_project_pid 取得.
your_project_pid=$(MSYS_NO_PATHCONV=1 tasklist /FI "IMAGENAME eq Your Project" /FO CSV | awk -F"," 'NR==2 {print $2}')
your_project_pid=${your_project_pid//\"/}

echo "Stopping Your Project (PID: $your_project_pid)..."
echo "Stopping Your Project (PID: $your_project_pid)..."

# your_project_pid 停止.
# your_project_pid 停止.
MSYS_NO_PATHCONV=1 taskkill /PID $your_project_pid /F
MSYS_NO_PATHCONV=1 taskkill /PID $your_project_pid /F