# spark
Graph productivity gains after using 'spark' command: ▁▂▃▅▇

## spark (Project Info)
[Website](https://zachholman.com/spark/)

## Docker Hub
[Website](https://hub.docker.com/r/macabees/spark/)

## Build image
`$ docker build -t macabees/spark:latest .`

## Docker Push
`$ docker push -t macabees/spark:latest`

Note: requires `docker login`

## Run image
`$ curl https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.csv --silent | sed '1d' | cut -d, -f5 | docker run -i --rm macabees/spark`

## Help
`$ docker run -it --rm macabees/spark --help`
