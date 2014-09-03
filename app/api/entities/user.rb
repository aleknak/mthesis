module Entities
  class User < Grape::Entity
    expose :id
    expose :email
    expose :sign_in_count
    expose :created_at
    expose :updated_at
  end
end
