module ForcePower
  attr_accessor :id, :force_power_force_time

  def redis
    REDIS
  end

  def force_start(force_power_force_time)
    @force_power_force_time = force_power_force_time
    redis.setex(@id,@force_power_force_time,1)
  end

  def force_powered?
    !redis.get(@id).nil?
  end

  def force_power
    redis.get(@id)
  end

  def force_time
    redis.ttl(@id)
  end

end
