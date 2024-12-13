# How to deploy this on local machine?

```
docker build -t static-sites-cicd .
docker run -d -p 80:80 static-sites-cicd
```

For each site, you need to set up /etc/hosts to point to the local machine.
```
sudo vi /etc/hosts

127.0.0.1   site1.com 
127.0.0.1   site2.com
```

# How to add a new site?

1. Add a new folder in static/, e.g. site3
2. Add a new conf file in nginx/, e.g. site3.conf
3. Add a new index.html in site3/
4. Build the docker image
5. Run the docker container
6. Update /etc/hosts

# How to deploy this on github actions?

