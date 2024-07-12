function ports(){
    sudo lsof -iTCP -sTCP:LISTEN -iUDP -n -P
}
