# LINUX USEFUL COMMANDS

To list any process listening to the port 8080:
```console
lsof -i:8080
```

To kill any process listening to the port 8080:
```console
kill $(lsof -t -i:8080)
```
or more violently:
```console
kill -9 $(lsof -t -i:8080)
```
-9 corresponds to the SIGKILL - terminate immediately/hard kill

References:
https://stackoverflow.com/questions/11583562/how-to-kill-a-process-running-on-particular-port-in-linux

