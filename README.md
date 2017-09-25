Gitlab CI
=========

Ansible playbooks setup gitlab with gitlab-runner

Features
--------

- Gitlab 9.5
- Gitlab Container Registry
- Gitlab Runner (running job for pipeline)

Requirements
------------

- Ubuntu 16.04
- Docker 17.05-ce

Installation
------------

Assuming you have set server information in `inventories/hosts.ini`

First, setup swarm cluster.

```sh
ansible-playbook swarm.yml
```

Next, setup gitlab. (gitlab takes sometimes to bootup instance, so please be patient)

```sh
ansible-playbook gitlab.yml
```

Optionally, setup gitlab-runner, make sure you change runner token on `RUNNER_TOKEN` in `files/stack/gitlab-runner.yml` (More info about this soon)

```sh
ansible-playbook gitlab-runner.yml
```

TODO
----

- More detailed on setting up runner.
- Make code more reusable.

Authors
-------

Porawit Poboonma

Credits
-------

- https://github.com/sameersbn/docker-gitlab
- https://github.com/sameersbn/docker-gitlab-ci-multi-runner
