# pydaemon-server

The approach is pretty straight forward, I decided to daemonize the python app instead of running it as a daemon ( ``` python app.py & ```) wich is very easy, but I guess is not what you expect.
Used Flask as an integrated web requests framework. The requested paths are mapped.
I will update this with the the domain to test it without the need to modify your hosts file.

To build the app you can build your own docker image or use the one already configured and stored in a public docker image registry.

To locally build the docker image run :
```
"docker build -t marcelodevops/pydaemon-server ./"
```

It expects you have a kubernetes cluster where to be deployed.
If you don't have the nginx-ingress-controller installed in your cluster you just need using Helm.
```
helm install stable/nginx-ingress --name my-nginx-ingress --set rbac.create=true
```
Now you just run it to use the public image and build your Kubernetes objects
```
./build.sh
```
And you're done.
 it wil deploy the application with its service in your local enviroment, then you need adding ``` 127.0.0.1    kubexp.com ``` to your hosts file