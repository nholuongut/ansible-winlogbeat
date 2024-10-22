# Stone Payments - Winlogbeat
![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

This role installs and configures Winlogbeat service.

## Requirements
This roles needs to be run agains a Windows machine - of course - and requires the presence of [Chocolatey](https://chocolatey.org/).

## Role Variables
```yaml
winlogbeat_version: 6.2.4
winlogbeat_installation_path: C:\ProgramData\chocolatey\lib\winlogbeat\tools\winlogbeat-{{ winlogbeat_version }}-windows-x86_64\winlogbeat.yml
```

These vars are to be given on your playbook:

```yaml
winlogbeat_event_logs:
  - name: Application
    ignore_older: 72h
  - name: Security
  - name: System

winlogbeat_output_elaticsearch: false
winlogbeat_elaticsearch_hosts:
  - "http://localhost:9200"

winlogbeat_output_beats: false
winlogbeat_beats_hosts:
  - "127.0.0.1:5044"
```

Use the logstash ones to configure the output to logstash and the elasticsearch ones to output to elasticsearch.

## Example Playbook
Here is an example setting the output to logstash:

```yaml
- hosts: all
  vars:
    winlogbeat_version: 0.0.0
    winlogbeat_output_logstash: true
    winlogbeat_logstash_hosts:
      - "localhost:5044"
  roles:
    - role: stone-payments.winlogbeat
```

Here is an example setting the output to elasticsearch:

```yaml
- hosts: all
  vars:
    winlogbeat_version: ''
    winlogbeat_output_elaticsearch: false
    winlogbeat_elaticsearch_hosts:
      - "http://localhost:9200"
  roles:
    - role: stone-payments.winlogbeat
```

## Testing
This role implements unit tests with Molecul and Vagrant. Notice that we only support Molecule 2.0 or greater. You can install molecule with:

```shell
pip install molecule
```

After having Molecule setup, you can run the tests with:

```shell
molecule test
```

# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟