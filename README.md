# nginx-mitm
Simple example of using nginx to serve downloadable files (primarily for MITM services)

# Build
```
docker build -t nginx-mitm .
```

# Run
```
docker run --rm --name mitm -d -p 8080:80 nginx-mitm
```

# How to download files:
```
$ wget http://localhost:8080/file1 -O testfile
--2018-09-27 22:40:23--  http://localhost:8080/file1
Resolving localhost... ::1, 127.0.0.1
Connecting to localhost|::1|:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 6 [application/octet-stream]
Saving to: ‘testfile’

100%[============================================================================================================>] 6           --.-K/s   in 0s

2018-09-27 22:40:23 (533 KB/s) - ‘testfile’ saved [6/6]

$ ls
testfile
$ cat testfile
hello
```

