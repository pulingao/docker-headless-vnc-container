#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Add User"
useradd -m -s /bin/bash user

# 添加密码，非 Ubuntu 使用 echo "123" | passwd --stdin user
echo "user:user" | chpasswd

# 赋予sudo操作权限
#tee /etc/sudoers.d/user <<< 'user ALL=(ALL) ALL'

# 赋予sudo操作权限，无需密码
tee /etc/sudoers.d/user <<< 'user ALL=(ALL) NOPASSWD: ALL'




