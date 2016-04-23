module.exports = {
  backends: [ 'statsd-influxdb-backend' ],

  influxdb: {
    host: 'influxdb',
    version: 0.12,
    ssl: false,
    database: 'statsd',
    username: 'root',
    password: 'root',
    flush: {
      enable: true
    },
    includeStatsdMetrics: true,
    includeInfluxdbMetrics: true
  },
  flushInterval: 3000
}
