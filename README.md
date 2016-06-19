StatsD InfluxDB backend
-----------------------

A fork of [https://github.com/bernd/statsd-influxdb-backend](https://github.com/bernd/statsd-influxdb-backend) with support for influxDB v0.11 and v0.12.

## Tags

Add tags to your metric by using a similar syntax to the influx line protocol.

For this to work you will need to disable `keyNameSanitize` in statsd configuration, see [https://github.com/etsy/statsd/blob/master/exampleConfig.js#L70](https://github.com/etsy/statsd/blob/master/exampleConfig.js#L70).

`echo "foo.bar,hello=world,baz=qux:1|c" | nc -u -w1 localhost`

This will increment the `foo.bar` counter and add the `hello` and `baz` tags to the metric.
