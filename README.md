# Ссылка на реозиторий
https://github.com/Myash-New/Ansible05/tree/main

!! PS работа нен завершена и требует доработки, но я не успел выполнить ее в 5ти дневный срок(((

По заданию Molecule 3. "Добавьте несколько разных дистрибутивов (oraclelinux:8, ubuntu:latest) для инстансов и протестируйте роль, исправьте найденные ошибки, если они есть."
Не могу победить ошибку:
<details>
  <summary>Ошибка</summary>
  
TASK [vector : Get vector distrib] *********************************************
An exception occurred during task execution. To see the full traceback, use -vvv. The error was: SyntaxError: future feature annotations is not defined
fatal: [instance-ubuntu]: FAILED! => {"ansible_facts": {"discovered_interpreter_python": "/usr/bin/python3"}, "changed": false, "module_stderr": "Traceback (most recent call last):\n  File \"/root/.ansible/tmp/ansible-tmp-1747766243.3797088-22509-148437779812340/AnsiballZ_get_url.py\", line 107, in <module>\n    _ansiballz_main()\n  File \"/root/.ansible/tmp/ansible-tmp-1747766243.3797088-22509-148437779812340/AnsiballZ_get_url.py\", line 99, in _ansiballz_main\n    invoke_module(zipped_mod, temp_path, ANSIBALLZ_PARAMS)\n  File \"/root/.ansible/tmp/ansible-tmp-1747766243.3797088-22509-148437779812340/AnsiballZ_get_url.py\", line 44, in invoke_module\n    from ansible.module_utils import basic\n  File \"<frozen importlib._bootstrap>\", line 971, in _find_and_load\n  File \"<frozen importlib._bootstrap>\", line 951, in _find_and_load_unlocked\n  File \"<frozen importlib._bootstrap>\", line 894, in _find_spec\n  File \"<frozen importlib._bootstrap_external>\", line 1157, in find_spec\n  File \"<frozen importlib._bootstrap_external>\", line 1131, in _get_spec\n  File \"<frozen importlib._bootstrap_external>\", line 1112, in _legacy_get_spec\n  File \"<frozen importlib._bootstrap>\", line 441, in spec_from_loader\n  File \"<frozen importlib._bootstrap_external>\", line 544, in spec_from_file_location\n  File \"/tmp/ansible_ansible.builtin.get_url_payload_76sksqm9/ansible_ansible.builtin.get_url_payload.zip/ansible/module_utils/basic.py\", line 5\nSyntaxError: future feature annotations is not defined\n", "module_stdout": "", "msg": "MODULE FAILURE: No start of json char found\nSee stdout/stderr for the exact error", "rc": 1}
changed: [instance-oraclelinux]

TASK [vector : Update apt cache] ***********************************************
[WARNING]: Updating cache and auto-installing missing dependency: python3-apt
fatal: [instance-oraclelinux]: FAILED! => {"changed": false, "cmd": "update", "msg": "[Errno 2] No such file or directory: b'update'", "rc": 2, "stderr": "", "stderr_lines": [], "stdout": "", "stdout_lines": []}

PLAY RECAP *********************************************************************
instance-oraclelinux       : ok=2    changed=1    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
instance-ubuntu            : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0

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
