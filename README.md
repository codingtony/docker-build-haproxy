docker-build-haproxy
====================

CentOS 6 based image to build HAProxy with LibreSSL

This is a basic image containing everything to build HAProxy 1.5.x from source.

It uses a [Gist that I wrote](https://gist.github.com/codingtony/24fab751202dff4d547c)

I think that using Docker for creating an image to build software is very interesting since it is small, fast, reproductible and you can build without messing with your own system (installing build dependencies).


This build is "semi-static", and it compiles against pcre 8.36 and libressl 2.2.3
```
        linux-vdso.so.1 =>  (0x00007fff209fe000)
        libcrypt.so.1 => /lib64/libcrypt.so.1 (0x00007ff5be82e000)
        libz.so.1 => /lib64/libz.so.1 (0x00007ff5be618000)
        libdl.so.2 => /lib64/libdl.so.2 (0x00007ff5be413000)
        librt.so.1 => /lib64/librt.so.1 (0x00007ff5be20b000)
        libc.so.6 => /lib64/libc.so.6 (0x00007ff5bde77000)
        libfreebl3.so => /lib64/libfreebl3.so (0x00007ff5bdbfd000)
        /lib64/ld-linux-x86-64.so.2 (0x00007ff5bea6c000)
        libpthread.so.0 => /lib64/libpthread.so.0 (0x00007ff5bd9e0000)
```



**Instructions to build the docker file**
```
git clone https://github.com/codingtony/docker-build-haproxy.git
cd docker-build-haproxy
docker build -t codingtony/build-haproxy .
```

You can also pull it from the repo
```
docker pull codingtony/build-haproxy
```

**Run and build haproxy**
```
docker run --rm -ti codingtony/build-haproxy
```

Once in the shell, simply do :
```
build.sh
```

This will start the build, the compiled haproxy will be in ```/usr/local/sbin/haproxy```

Enjoy!





