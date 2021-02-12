#!/bin/bash

### We set up the user used to access to the vogsphere

mkdir -p ~/.ssh &&
cat >> ~/.ssh/config << EOF
Host vgs vgs.42quebec.com vgse vgse.42quebec.com vogsphere vogsphere.42quebec.com vogsphere-exam vogsphere-exam.42quebec.com
	User vogsphere
EOF

echo "user part finished, welcome in the freedom !"
