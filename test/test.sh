# check health
echo health | nc docker.local 8126

# post counter
echo "foo:1|c" | nc docker.local -u -w0 8125

# wait for flush interval
sleep 3

# check influx
curl -i "http://docker.local:8086/query?db=statsd&q=SELECT%20value%20FROM%20\"foo.counter\""
