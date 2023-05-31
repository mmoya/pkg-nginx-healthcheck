# nginx+healtcheck ubuntu package

The PPA is [mmoyar/nginx-healthcheck](https://launchpad.net/~mmoyar/+archive/ubuntu/nginx-healthcheck).

## Prerequisites

- [debspawn](https://repology.org/project/debspawn/versions)
- [devscripts](https://repology.org/project/devscripts/versions)

## Building

### Create container base image

```
debspawn create --components main,restricted,universe --extra-suites 'bionic-updates bionic-backports bionic-security' bionic
```

### Build package

```
make package
```

## Upload package

```
dput ppa:mmoyar/nginx-healthcheck <source.changes>
```
