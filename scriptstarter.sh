    #!/bin/bash
     
    #var SERVICE starts the script with nohup and & in the background. the shell can still be used even with the script running.
    SERVICE=nohup /home/script/script.sh &
     
    #var SERVICENAME is without nohup and & so it will not be shown in the scriptname
    SERVICENAME=/home/script/script.sh
     
    #if the running script is started with start it will echo "was started", stop = stop, restart = stop,start, anything else will return what you can do.
    case "$1" in
    start)
    	$SERVICE
    	[ $? -eq 0 ] && echo "$SERVICENAME was started"
    ;;
    stop)
    	pkill -f $SERVICENAME
    	[ $? -eq 0 ] && echo "$SERVICENAME was stopped"
    ;;
    restart) 
    	$0 stop
    	$0 start
    ;;
    *)
    	echo "Usage: $0 (start|stop|restart)"
    ;;
    esac
