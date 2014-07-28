hadoop jar /opt/cloudera/parcels/CDH-5.1.0-1.cdh5.1.0.p0.53/lib/solr/contrib/mr/search-mr-1.0.0-cdh5.1.0-job.jar \
  org.apache.solr.hadoop.MapReduceIndexerTool \
  --morphline-file read-bird-strikes.conf \
  --output-dir hdfs://brock-c51-test0-5.vpc.cloudera.com:8020/user/brock/bird_strikes_indexer \
  --verbose \
  --go-live \
  --zk-host brock-c51-test0-5.vpc.cloudera.com:2181/solr \
  --collection  bird_strikes0 \
  hdfs://brock-c51-test0-5.vpc.cloudera.com:8020/user/hive/warehouse/bird_strikes_parquet/
