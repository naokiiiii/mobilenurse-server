#!/bin/bash
#
# deploy chainerapp
#

cd /opt/t4j

tar zcvf /tmp/t4j/mobilenurse-backup/chainerapp_`date +"%Y%m%d_%I%M"`.tar.gz chainerapp/

rm -rf chainerapp/

wget https://github.com/team4gentleman/chainerapp/archive/master.zip && \
 unzip master.zip && \
 mv chainerapp-master chainerapp  && \
 rm -f master.zip

exit 0