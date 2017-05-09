# monitor based on bosun

## bosun-conf
* OpenTSDBConf.Host 修改为opentsdb:4242，如果需要在一个容器里运行两个服务，请把容器主机名修改为opentsdb
* DBConf.RedisHost 增加redis:6379，暂时注释，以后可以用外部redis做bosun缓存
* supervisor.conf 保留bosun，opentsdb，hbase，以备需要在一个容器中运行三个服务的情况

## opentsdb-conf
* logback.xml 修改日志级别为WARN，默认的INFO级别输出太多
* opentsdb.conf 
    * 增加`hbase.nsre.high_watermark=100`
    * 增加`tsd.storage.enable_compaction=false`
> 参考[opentsdb-troubleshooting](http://opentsdb.net/docs/build/html/user_guide/troubleshooting.html)
* supervisor.conf 保留opentsdb，hbase，这个容器只用作存储
* 这个容器启动时需要设置环境变量TZ=Asia/Shanghai