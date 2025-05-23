# Ссылка на реозиторий
https://github.com/Myash-New/Ansible05/tree/main

!! PS работа нен завершена и требует доработки, но я не успел выполнить ее в 5ти дневный срок(((

По заданию Molecule 3. "Добавьте несколько разных дистрибутивов (oraclelinux:8, ubuntu:latest) для инстансов и протестируйте роль, исправьте найденные ошибки, если они есть."
Не могу победить ошибку:
<details>
  <summary>Ошибка</summary>
  
TASK [vector : Update apt cache] ***********************************************
[WARNING]: Updating cache and auto-installing missing dependency: python3-apt
fatal: [instance-oraclelinux]: FAILED! => {"changed": false, "cmd": "update", "msg": "[Errno 2] No such file or directory: b'update'", "rc": 2, "stderr": "", "stderr_lines": [], "stdout": "", "stdout_lines": []}
changed: [instance-ubuntu]

TASK [vector : Reload systemd after creating unit] *****************************
fatal: [instance-ubuntu]: FAILED! => {"changed": false, "msg": "Failed to find required executable \"systemctl\" in paths: /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"}

PLAY RECAP *********************************************************************
instance-oraclelinux       : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
instance-ubuntu            : ok=5    changed=3    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
</details>
По описанию ошибки - проблема свзана с отсутствием Python версии 3, но в образе он установлен.

По заданию Molecule 4."Добавьте несколько assert в verify.yml-файл для проверки работоспособности vector-role (проверка, что конфиг валидный, проверка успешности запуска и др.)."
Так же есть ошибки.


# Tox

![1](https://github.com/Myash-New/Ansible05/blob/main/21.jpg)

![2](https://github.com/Myash-New/Ansible05/blob/main/tox%2021.jpg)

![3](https://github.com/Myash-New/Ansible05/blob/main/tox%2022.jpg)

# Облегчённый сценарий для molecule с драйвером molecule_podman

![1](https://github.com/Myash-New/Ansible05/blob/main/podman%2021.jpg)

![2](https://github.com/Myash-New/Ansible05/blob/main/podman%2022.jpg)

![3](https://github.com/Myash-New/Ansible05/blob/main/podman%2023.jpg)
