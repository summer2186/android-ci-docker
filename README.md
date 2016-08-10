# android-ci-docker

## intro

an Android CI(Continuous Integration) docker that include :
* Android SDK(build-tools, api23, api19, api17)
* openjdk-7
* maven
* gradle
* ssh server (for jenkins slave)

## useage

### pull image

```shell
sudo docker pull season/android-ci-docker
```

### run image whit params

```shell
sudo docker run -d --hostname android-ci-slave -p 10022:22 season/android-ci-docker
```
