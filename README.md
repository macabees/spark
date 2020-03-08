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
Earthquake Data (example)
`$ curl https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.csv --silent | sed '1d' | cut -d, -f5 | docker run -i --rm macabees/spark`

OptionsTadingTips (example)
`curl https://www.optiontradingtips.com/resources/historical-data/sp500/%5EGSPC.TXT --silent | grep "20100331" -A  31 | awk -F' ' '{print $5/20}' | docker run -i --rm macabees/spark`

For some cool uses of the command, check out:
[https://github.com/holman/spark/wiki/Wicked-Cool-Usage](https://github.com/holman/spark/wiki/Wicked-Cool-Usage)

## Help
`$ docker run -it --rm macabees/spark --help`
