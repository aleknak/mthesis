require 'grape-swagger'

class API < Grape::API
  use ApiLogger

  # videos
  mount Resources::Videos::Index
  mount Resources::Videos::Show

  # users
  mount Resources::Users::Index
  mount Resources::Users::Show

  base_path = Rails.env == "development" ? "http://localhost:3000/api" : ""
  add_swagger_documentation base_path: base_path, hide_documentation_path: true
end
