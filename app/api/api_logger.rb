class ApiLogger < Grape::Middleware::Base

  def before
    Rails.logger.info "[api] Requested: #{request_log_data.to_json}\n" +
     "[api] #{response_log_data[:description]} #{response_log_data[:source_file]}:#{response_log_data[:source_line]}"
  end

  private

  def request_log_data
    # request_params = request.params
    # request_params.delete("route_info")
    # request_params = delete_nested_key(request_params, "tempfile")
    request_data = {
      method: env['REQUEST_METHOD'],
      path:   env['PATH_INFO'],
      query:  env['QUERY_STRING']
      # params: request_params
    }
    request_data
  end

  def response_log_data
    {
      description: env['api.endpoint'].options[:route_options][:description],
      source_file: env['api.endpoint'].block.source_location[0][(Rails.root.to_s.length+1)..-1],
      source_line: env['api.endpoint'].block.source_location[1]
    }
  end

  def delete_nested_key(hash, key)
    hash.each { |k, v| v.delete(key) if v.is_a? Hash }
    hash
  end

end
