# Pre-Deployment Steps

Relative to `HopSlot-FullStack`

1. Check all environment variables in their respective projects and also in `docker/secrets/prod` the examples can be found in `env-examples` folder.

2. Build Nest API and django API images.

3. Verify and Push the images to docker hub.

4. Copy the docker file and docker-compose file to the EC2 instance.
    Example using rsync: `rsync -avr -e "ssh -i <path to .pem file>" docker-compose.deployment.yaml secrets <user>@<host>:<path>`