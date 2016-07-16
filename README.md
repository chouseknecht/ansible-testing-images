# Ansible Testing Images

Maintain images used in Ansible integration tests. 

Current images include:

- [docker](https://github.com/chouseknecht/ansible-testing-images/tree/master/docker)

## Prerequisites 

Before you can start building images using this repo, you'll need the followoing:

- [Ansible](http://docs.ansible.com/ansible/intro_installation.html)
- [Ansible Container](https://github.com/ansible/ansible-container)

## Building a Project

Use the image_build.yml playbook to build a project and push the image(s) to Docker hub. Run the playbook from the root your local 
copy of the repository. Pass in *project* set to the name of the project you wish to build. For example, to build the docker project: 

```
$ cd ansible-testing-images
$ ansible-playbook image_build.yml -e "project=docker" --ask-vault-pass
```

## Pushing Images

The image_build.yml playbook includes vault.yml in *vars_files*, which contains Docker Hub credentials. You'll want to use your own 
credentials of course. The easiest way to do that is to replace the local copy of vault.yml with a version containing your credentials.
You can create a new vault file by running the following in the root of the project directory: 

```   
$ cd ansible-testing-images
$ ansible-vault create vault.yml
```

The new file will contain:

```
---
dockerhub_username: <your username>
dockerhub_password: <your password>
dockerhub_email: <your email address>
```

Images are pushed to the *ansibletesting* organization on Docker Hub. To push images you'll need to be a member of the group.








