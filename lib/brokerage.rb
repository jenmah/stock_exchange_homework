class Brokerage

  attr_accessor :clients

  def initialize(options = {})
    @clients = options[:clients] || []
  end

end
