# 42quebec_vogsphere
Script to access your 42's data outside of the clusters. Compatible with GNU/Linux or MacOS only.
Make sure krb5-user is installed on your system, and clone the repo.
run the run.sh
then kinit 42username
you should then be able to git clone/push/pull your stuff from the Intra.
To close your Kerberos session, simply kdestroy

Only usable if you are a student of 42quebec. 
