# Additions

Add scripts for zipping certain groups and then sending to s3 bucket.

## How to run
First fill in the values in [config.sh.example](config.sh.example). Then change its name:
```
mv config.sh.example config.sh
```
Then use the `make` to build the image:
```
make build
```
Once the image is built, you can upload the group-data specific in the `config.sh` file by running:
```
make run
```
