# SSJ Plugin: Add Tools
A convenient script that lets you add more tools to [SSJ](https://github.com/thirdbyte/ssj) that are not a part of the `kali-linux-large` metapackage.

Once the [installation](https://github.com/thirdbyte/ssj#installation) is completed, follow the below steps:
1. `git clone https://github.com/thirdbyte/ssj-plugin-add-tools`
2. `cd ssj-plugin-add-tools`
3. Edit the `tools.txt` file and list all the tools, one in a line, that you want to add.
4. `docker build -t ssj:latest .`
5. `docker image rm $(docker images -a -q --filter "dangling=true") &>/dev/null`
