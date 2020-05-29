# pydaemon-server
bp-pydaemon-server
https://8080-dot-7278381-dot-devshell.appspot.com/

Hello
the approach is pretty straight forward, I decided to daemonize the python app instead of running it as a daemon (python app.py &) wich is very easy, but I guess is not what you expect.
Used Flask as an integrated web requests framework. The requested paths are mapped.
I will update this with the the domain to test it without the need to modify your hosts file.

To build the app you can build your own docker image or use the one already configured and stored in a public docker image registry.

To locally build the docker image run :
"docker build -t marcelodevops/pydaemon-server ./"

Or you just run
./build.sh
