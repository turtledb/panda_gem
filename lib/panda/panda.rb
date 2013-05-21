module Panda

  extend self
  extend Forwardable

  attr_reader :cloud, :clouds
  attr_reader :connection

  def_delegators :connection, :get, :post, :put, :delete, :api_url, :setup_bucket, :signed_params

  def configure(auth_params=nil, &block)
    raise ArgumentError, "missing auth params or block" unless auth_params || block_given?

    if !auth_params
      config = Config.new
      if (block.arity > 0)
        block.call(config)
      else
        config.instance_eval(&block)
      end
    elsif auth_params.is_a?(String)
      config = Config.from_panda_url(auth_params)
    else
      config = Config.from_hash(auth_params)
    end

    configure_with_auth_params(config)
    true
  end

  def configure_heroku
    configure_with_auth_params Config.from_panda_url(ENV['PANDASTREAM_URL'])
    true
  end

  def connect!(auth_params)
    @connection = Connection.new(auth_params)
  end

  def connection
    raise Panda::ConfigurationError, "Panda is not configured!" unless @connection
    @connection
  end

  def to_curl(method, request_uri, params={}, headers={})
    c = self.connection
    method = method.upcase
    query = c.signed_query(method, request_uri, params)
    heads = headers.map do |kv|
      '"-H'+kv.join(':')+'" '
    end.join
    "curl -X#{method} #{heads}\"#{c.api_url}/#{c.prefix}#{request_uri}?#{query}\""
  end

  private

  def configure_with_auth_params(config)
    config.validate!
    connect!(config.to_hash)
    @clouds = {}
    @cloud = Cloud::new(:id => @connection.cloud_id)
  end

end
