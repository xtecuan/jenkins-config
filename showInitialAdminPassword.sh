#!/bin/bash

docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
