# back-api
A python back api for movies, actors etc..

## How to run the container in local
```bash
docker build -t movie-manager-backapi .
```

```bash
docker run -d \
  --name backapi \
  --network my-network \
  --env-file .env \
  -p 5000:5000 \
  movie-manager-backapi
```