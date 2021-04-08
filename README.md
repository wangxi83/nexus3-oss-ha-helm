
# a master-slave nexus3 oss ha helm charts

a nexus3 oss ha app  

using rsync for file sync


- after started，slave POD will watch master POD, tag "STANDBY" on self POD when master POD has "UP" tag on it. When master is down, slave POD choose one as new master and startup
- Service use "status: UP" to select POD
- if disater crash, it can easily point one POD as master by manually `echo "UP" /nexus-data/pod_status`

