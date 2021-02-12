#!/bin/bash
cat >> /etc/krb5.conf << EOF
[libdefaults]
    default_realm = 42QUEBEC.COM
    forwardable = true
    proxiable = true
    dns_lookup_kdc = no
    dns_lookup_realm = no
    allow_weak_crypto = true
[realms]
    42QUEBEC.COM = {
        kdc = ldap.42quebec.com
        admin_server = ldap.42quebec.com
        default_domain = 42quebec.com
        default_lifetime = 7d
        ticket_lifetime = 7d
    }
[domain_realm]
    .42quebec.com = 42QUEEBC.COM
    42quebec.com = 42QUEBEC.COM
EOF

### We set up the ssh config file to access to 42's git server (vogsphere)
### using your kerberos identification

cat >> /etc/ssh/ssh_config << EOF
Host *.42quebec.com
     SendEnv LANG LC_*
     StrictHostKeyChecking no
     GSSAPIAuthentication yes
     GSSAPIDelegateCredentials yes
     PasswordAuthentication yes
EOF

echo "root part finished !"
