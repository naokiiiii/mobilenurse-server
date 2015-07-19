#!/bin/bash
#
# deploy serverapp
#

cd /opt/t4j

tar zcvf /tmp/t4j/mobilenurse-backup/serverapp_`date +"%Y%m%d_%I%M"`.tar.gz serverapp/

rm -rf serverapp/

wget https://github.com/team4gentleman/serverapp/archive/master.zip && \
 unzip master.zip && \
 mv serverapp-master serverapp  && \
 rm -f master.zip

exit 0