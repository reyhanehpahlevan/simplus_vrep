pid=$(lsof -ti tcp:8080)
if [[ $pid ]]; then
  kill -9 $pid
fi

pid=$(lsof -ti tcp:50051)
if [[ $pid ]]; then
  kill -9 $pid
fi

