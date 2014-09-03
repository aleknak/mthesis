module APIHelpers

  def warden
    env['warden']
  end

  def current_user
    warden.user
  end

  def authenticated?
    if warden.authenticated?
      return true
    else
      error!('401 Unauthorized', 401)
    end
  end

  # returns 401 if there's no current user
  def authenticated_user
    authenticated?
    error!('401 Unauthorized', 401) unless current_user
  end

  def logger
    API.logger
  end

  def check?(param)
    ['true', 'false'].include?(param.to_s)
  end

end
