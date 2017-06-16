class ForcePower
  attr_accessor :id, :power_time, :redis
  def initialize(opts ={})
    @id = opts[:id]
    @redis = Redis.new(opts[:redis_opts] || {host: 'localhost', port: 6379, db: 1})
  end

  def start(power_time)
    @power_time = power_time
    @redis.setex(@id,@power_time,1)
  end

  def powered?
    !@redis.get(@id).nil?
  end

  def power
    @redis.get(@id)
  end

  def time
    @redis.ttl(@id)
  end

end
