@echo off


IF NOT EXIST log\nul mkdir log
IF NOT EXIST log\php-fpm\nul mkdir log\php-fpm
IF NOT EXIST www\nul mkdir www
pushd www
IF EXIST www\rf-mainweb\.git\nul GOTO launch

git clone --depth=10 --single-branch -b dev "https://git-codecommit.eu-west-3.amazonaws.com/v1/repos/rf-mainweb"
popd

:launch
docker-compose up -d
exit
exit

