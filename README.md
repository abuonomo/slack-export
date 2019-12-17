# Additions

Add scripts for zipping certain groups and then sending to s3 bucket.

## How to run
First make a copy of [config.sh.example](config.sh.example) and call this copy `config.sh`:
```
cp config.sh.example config.sh
```
Then, change the values in `config.sh` to reflect the values for your use case.  
**BE SURE NOT TO COMMIT THIS `config.sh` FILE.**  
Then use the `make` to build the image:
```
make build
```
Once the image is built, you can upload the group-data specific in the `config.sh` file by running:
```
make run
```
Alternatively, you can run the docker commands directly. Refer to the [Makefile](Makefile) to see how.
