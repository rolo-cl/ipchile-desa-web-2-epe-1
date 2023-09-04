apk add sshpass
DIR_REMOTE=$(pwd)
echo "--------------------------------------------------------"
echo "Remote directory   -> $DIR_REMOTE"
echo "Remote file script -> $FILE_REMOTE_DEPLOY"
echo "--------------------------------------------------------"
sshpass -p "$LDWSSTUDIOSDESA_MACHINE_DEVOPS_PASS" \
	ssh  -o StrictHostKeyChecking=no -l $LDWSSTUDIOSDESA_MACHINE_DEVOPS_USER \
	-p $LDWSSTUDIOSDESA_MACHINE_DEVOPS_PORT $LDWSSTUDIOSDESA_MACHINE_DEVOPS_HOST \
	"cd $(echo $DIR_REMOTE) ; $LOCATION_FILE_SH_LOGIN_DOCKER ; sh $(echo $FILE_REMOTE_DEPLOY)"