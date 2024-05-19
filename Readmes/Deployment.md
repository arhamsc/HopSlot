# Production Deployment

Expected Storage Required: 10GB (Including the system if using amazon linux)

1. SSH into the EC2 instance or your server.

2. Verify if rsync has copied the files correctly.

3. Order of running the file remains the same as in the local setup but all the commands should be run via `docker-compose -f docker-compose.deployment.yaml [...]`.

4. Apply migrations if necessary.

5. Verify logs of the services.

6. Verify if NestAPI has connected to kafka and the logs are good.

7. Caddy can be used to reverse_proxy the services.