# simple_motd
Puppet module to generate a motd, and be reply on all servers using Foreman.

#### Table of Contents
1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with simple_motd](#setup)
    * [What simple_motd affects](#what-simple_motd-affects)
    * [Beginning with simple_motd](#beginning-with-simple_motd)
4. [Limitations - OS compatibility, etc.](#limitations)

### What simple_motd affects
The simple_motd class just modify the /etc/motd with the content passed by the variables, or the motd.erb file on template folder.

### Beginning with simple_motd
To be used just need to place the simple_motd folder on your Puppet's module folder, import the class and it's ready to be used.

## Limitations
Just tested on Red Hat Family distros.
