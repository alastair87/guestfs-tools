# Intro

`guestfs-tools` are often broken on Arch distros due to dependency issues. This is my workaround - running them in an Ubuntu container and mounting the working directory.

Example usage:

```bash
$ cd /var/lib/libvirt/images
$ docker run --rm -it -v $PWD:/images -w /images alastair87/guestfs-tools /bin/bash
$ virt-sparsify --inplace ubuntu.qcow2
```

Pre-built image (may be out-of-date) is on DockerHub as `alastair87/guestfs-tools`.

# Building from Dockerfile

This will produce an up-to-date image based on latest Ubuntu 22.04.

In repo directory:

```bash
$ docker build . -t guestfs-tools
```

Then use as in above example but with your image name.
