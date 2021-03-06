Rails.application.routes.draw do

  get 'requester/index'

  get 'requester/is_valid'

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method, constraints: { email: /[0-z\.]+/ }
  end

  # Webservice 2
  add_swagger_route 'POST', '/rest/verify_user/{email}', controller_name: 'web_service2', action_name: 'VerifyUser'

  # Webservice 1
  add_swagger_route 'POST', '/rest/login', controller_name: 'web_service1', action_name: 'Login'

end
