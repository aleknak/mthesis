module Entities
  class Video < Grape::Entity
    expose :id
    expose :title
    expose :source
    expose :thumbnail
    expose :description
    expose :created_at
    expose :updated_at
  end
end
