# This repo contains sample - how to iterate two file with lists of IPs

### Requirements 
- Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Install [Terraform](https://www.terraform.io/downloads.html)
- Start project
    
```
git clone https://github.com/chavo1/ip-list-terraform.git
cd ip-list-terraform
terraform init
terraform apply
```
- The result should be as follow:

```
null_resource.firewall[1]: Creating...
null_resource.firewall[4]: Creating...
null_resource.firewall[2]: Creating...
null_resource.firewall[0]: Creating...
null_resource.firewall[3]: Creating...
null_resource.firewall[2]: Provisioning with 'local-exec'...
null_resource.firewall[0]: Provisioning with 'local-exec'...
null_resource.firewall[3]: Provisioning with 'local-exec'...
null_resource.firewall[1]: Provisioning with 'local-exec'...
null_resource.firewall[4]: Provisioning with 'local-exec'...
null_resource.firewall[3] (local-exec): Executing: ["/bin/sh" "-c" "echo 'start 3: 192.168.0.4'"]
null_resource.firewall[4] (local-exec): Executing: ["/bin/sh" "-c" "echo 'start 4: 192.168.0.5'"]
null_resource.firewall[0] (local-exec): Executing: ["/bin/sh" "-c" "echo 'start 0:192.168.0.1'"]
null_resource.firewall[1] (local-exec): Executing: ["/bin/sh" "-c" "echo 'start 1: 192.168.0.2'"]
null_resource.firewall[2] (local-exec): Executing: ["/bin/sh" "-c" "echo 'start 2: 192.168.0.3'"]
null_resource.firewall[0] (local-exec): start 0:192.168.0.1
null_resource.firewall[0]: Provisioning with 'local-exec'...
null_resource.firewall[0] (local-exec): Executing: ["/bin/sh" "-c" "echo 'end 0:192.168.0.6'"]
null_resource.firewall[0] (local-exec): end 0:192.168.0.6
null_resource.firewall[0]: Creation complete after 0s [id=8049747826391496115]
null_resource.firewall[2] (local-exec): start 2: 192.168.0.3
null_resource.firewall[3] (local-exec): start 3: 192.168.0.4
null_resource.firewall[3]: Provisioning with 'local-exec'...
null_resource.firewall[2]: Provisioning with 'local-exec'...
null_resource.firewall[3] (local-exec): Executing: ["/bin/sh" "-c" "echo 'end 3: 192.168.0.9'"]
null_resource.firewall[2] (local-exec): Executing: ["/bin/sh" "-c" "echo 'end 2: 192.168.0.8'"]
null_resource.firewall[4] (local-exec): start 4: 192.168.0.5
null_resource.firewall[1] (local-exec): start 1: 192.168.0.2
null_resource.firewall[4]: Provisioning with 'local-exec'...
null_resource.firewall[1]: Provisioning with 'local-exec'...
null_resource.firewall[4] (local-exec): Executing: ["/bin/sh" "-c" "echo 'end 4: 192.168.0.10'"]
null_resource.firewall[1] (local-exec): Executing: ["/bin/sh" "-c" "echo 'end 1: 192.168.0.7'"]
null_resource.firewall[3] (local-exec): end 3: 192.168.0.9
null_resource.firewall[3]: Creation complete after 1s [id=2640313777702243260]
null_resource.firewall[2] (local-exec): end 2: 192.168.0.8
null_resource.firewall[4] (local-exec): end 4: 192.168.0.10
null_resource.firewall[1] (local-exec): end 1: 192.168.0.7
null_resource.firewall[1]: Creation complete after 1s [id=8936153394032017215]
null_resource.firewall[4]: Creation complete after 1s [id=8481782813767202757]
null_resource.firewall[2]: Creation complete after 1s [id=7229860564918906860]
```