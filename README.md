h1. namespaced_redis

The namespaced_redis gem is a wrapper gem for the standard redis gem that prepends a value to each key that is written and read from redis.  It is used to seperate out logical sections of data while keeping your app clean.

Usage:

pre. redis_options = {:host => "localhost", :port => 6379}
pre. @redis = NamespacedRedis.new(redis_options, "your-unique-id")

redis_options is a hash that is passed into the redis object and is unaltered as it is passed through, so please refer to the redis gem for details of this.  The second parameter is a unique id set by you, I would suggest that this contains a unique id for the data (possibly the id of the object that the data relates to) and also the version of your application, as the data in redis may remain after an upgrade and may be in an invalid format.

