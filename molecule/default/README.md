# Molecule Scenario Default

## Requirements
* Vagrant
* Virtualbox, Parallels, VMware Fusion, VMware Workstation or VMware Desktop
* python-vagrant
* ruby
* inspec

## Install
```shell
sudo pip install python-vagrant
```

To verify this role you need to install `ruby` and `inspec`

## Test using Inspec
### Apt (Debian or Ubuntu)
Debian GNU/Linux and Ubuntu use the apt package manager. You can use it like this:

```shell
sudo apt-get install ruby-full
```

### Yum (CentOS, Fedora, or RHEL)
CentOS, Fedora, and RHEL use the yum package manager. You can use it like this:

```shell
sudo yum install ruby
```

### Inspec (Ruby gem)
InSpec is included in the `ChefDK` and is available as a standalone `Ruby gem`.

```shell
gem install inspec
```

The installed version is typically the latest version of Ruby available at the release time of the specific distribution version.
