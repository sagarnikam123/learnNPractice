# DevOps/SRE Engineer - Advanced Test

#### Section - 1 - Multi-Choice questions (Generic)

1) ##### Successful Log out
	You attempt to log out but receive an error message that you cannot, When you issue the jobs command, you see a process that is running in the background. How can you fix this so that you can logout?
	- [ ] Kill PID-of-the-process
	- [ ] kill job-number-of-process
	- [ ] kill
	- [ ] kill PID-of-the-last-command

2) ##### Linux 'find' command
	`find / -name '*'` will _______
	
	- [ ] List all files belongs to the current user
	- [ ] List all files and directories recursively starting from `/`
	- [ ] List all files in `/` directory
	- [ ] List all files and directories in `/` directory
	
3) ##### Linux user attributes file
	Which one among the following files saves the user attributes in text format?
	- [ ] `/root/passwd`
	- [ ] `/etc/password`
	- [ ] `/etc/passwd`
	- [ ] `/bin/user`

4) ##### Maven Projects
	Using Maven, which of the following project scopes can be managed? (pick one or more)
	- [ ] SCMs
	- [ ] Dependencies
	- [ ] Releases
	- [ ] Packaging

5) ##### Linux memory management
	Which command can force all buffers to disk in a Linux operating system?
	- [ ] `sync`
	- [ ] `save`
	- [ ] `flush`
	- [ ] None of the above
	
6) ##### Linux User Shell name
	Which one among the below can be used to determine the shell of the current logged-in user?
	- [ ] `cat /etc/shell`
	- [ ] `echo $SHELL`
	- [ ] `cat /etc/current/shell`
	- [ ] None
	
7) ##### Linux Processes (ps)
	`ps -ef --forest` is a linux command used for which purposes? 
	
	- [ ] Gives you a hierarchical way inter-processes dependency
	- [ ] give information related to threads corresponding to a particular process
	- [ ] produces a snapshot of all running processes
	- [ ] All of the above
	
8) ##### Linux /dev/null importance
	What is the meaning of below command in Linux?
	
	`some_command 2> /dev/null`
	
	- [ ] Send error messages from command to a file called `/dev/null`
	- [ ] Append the output of command to a file called `/dev/null`
	- [ ] Discard standard error entirely
	- [ ] Send the output of command to a file called `/dev/null`
	
9) ##### Linux commands from history
	Which of the folling runs the previous command you entered in the terminal?
	- [ ] `!~`
	- [ ] `!!`
	- [ ] `~!`
	- [ ] `~#`
	
10) ##### Git branches commandline
	How to pull changes from a specific branch from GitHub?
	- [ ] `git pull origin <branch_name>`
	- [ ] `git checkout <branch_name>`
	- [ ] `git pull <branch_name>`
	- [ ] None
---

   #### Section - 2 - Multi Choice (Docker & Kubernetes)

11) ##### What is the naming convention of a docker image?
    What is the naming convention of a docker image?
    - [ ] registry.docker.net/appname:1.0-snapshot
    - [ ] registry.docker.net/appname:1.0-SNAPSHOT
    - [ ] registry.docker.net/APPNAME:LATEST
    - [ ] Docker image name can be of any name in any case

12) ##### Command to check for Docker Client and Docker Server version
    Command to check for Docker Client and Docker Server version
    - [ ] `docker version`
    - [ ] `docker info`
    - [ ] Both
    - [ ] None

13) ##### What are the types of kubenetes persistent volume access modes?
    In kubernetes, each PV gets its own set of access modes describing that specific PV's capabilities. (pick one or more)
    - [ ] ReadWriteOnce
    - [ ] ReadOnlyMany
    - [ ] ReadWriteMany
    - [ ] None of the above

14) ##### In Kubenetes cluster, nodes plays a major role in maintaining the high availability of the application resources
    In Kubernetes, a node is:
    - [ ] A tool for starting a kubernetes cluster session on a client machine
    - [ ] A worker machine
    - [ ] A machine that coordinates the scheduling and management of application containers on the cluster.
    - [ ] All of the above

15) ##### Kubernetes uses various resources to manage the cluster and etcd is one of them.
    How does Kubernetes use etcd? (pick one or more)
    - [ ] To store the actual and desired state of the system
    - [ ] To store the configuration of the kubernetes cluster
    - [ ] Ensures that all (or some) Nodes run a copy of a Pod
    - [ ] To maintain a stable set of replica Pods running at any given time

16) ##### Kubernetes Authentication
    Kubernetes uses __ to connect to oauth2 providers to offload the authentication to external services
    - [ ] Keystone Password
    - [ ] Webhook Token Authentication
    - [ ] OpenID Connect Tokens
    - [ ] Authentication Proxy

17) ##### Kubernetes Resource pooling
    Which one among the following manages the assigning nodes to pods depending on resource availability?
    - [ ] Kubectl
    - [ ] Etcd
    - [ ] Flanneld
    - [ ] Scheduler

18) ##### Kubernetes internal components
    When a service starts, __ daemon running one each node add a set of environment variables on the pod for each active service.
    - [ ] Kubeadm
    - [ ] Kubectl
    - [ ] Kubelet
    - [ ] Service Discovery

19) ##### Stopping docker containers
    Which command is helpful to bring down a container gracefully without corrupting the in-fight transactions by sending __SITERM__, **SIGKILL** signals?
    - [ ] `docker kill`
    - [ ] `docker stop`
    - [ ] `docker rm`
    - [ ] All of the above

20) ##### Set metadata on container
    Which one among the following helps to set the **key=value** pair based metadata on a container?
    - [ ] `--env`
    - [ ] `--label`
    - [ ] `-e`
    - [ ] `--env-file`
    ---

    #### Section 3 - DevOps project Easy

21) ##### Count All the Files in a Directory

    Create a puppet script `countfiles.pp` in the directory `/var/save/puppet_count_1`. The script should count the total number of files present in the directory `/var/save/puppet_count_1/files` and write the count to the file `/var/save/puppet_count_1/countfiles.txt`

    Note :

    - To install puppet run `apt-get -y install puppet` in ubuntu.
    - The directory `/var/save/puppet_count_1/files` will be created after your submission and it will not contain any sub-directories.
    - You have `sudo` permissions

    ---

    #### Section 4 - DevOps project Medium

22) ##### Git: Rebase/Merge

    In this challenge, install `git` and configure the user:

    - The name should be `hackerrank`
    - The email should be `me@hackerrank.com`

    Initialize `/var/save/my-repo` directory as a git repository and set the local repository as the remote repository called `origin`. Perform the following set of actions.

    - Check out the `master` branch.
    - Create a commit.
    - Pushthe changes to `master` branch.
    - Check out the `test` branch.
    - Create three commits.
    - Push the changes to `test` branch.
    - Check out the `master` brnach.
    - Apply the changes of `test` branch on `master` branch.
    - Push the chanegs to `master` branch.

    **Evaluation**:

    The evaluation is done under `/var/save/my-repo` directory:

    - Verifying git installation: `which git` command should return the binary.
    - Verifying user configs: `git config --list` command should list the specified name and email.
    - Verifying commits on master: `git rev-list --date-order --abbrev-commit --reverse HEAD` command on master lists all the commits SHA. Fetch the first four rows from the output.
    - Verifying commits on test: `git rev-list --date-order --abbrev-commit --reverse HEAD` command on test lists all the commits SHA. Fetch the first four rows from the output.
    - Verifying commit SHA: The commits SHA on master and test must match.
    - Finally, the evaluation script commits and pushes to master as the last validation step.

    **Note**: Issue all the command as root

    ---
