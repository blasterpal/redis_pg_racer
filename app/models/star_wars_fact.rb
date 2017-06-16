class StarWarsFact < ApplicationRecord
  include ForcePower
  def initialize(opts={})
    super(opts)
  end
end
