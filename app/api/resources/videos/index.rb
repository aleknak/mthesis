module Resources
  class Videos::Index < Grape::API
    helpers APIHelpers

    resource :videos do
      format :json

      before do
        authenticated_user
      end

      desc 'Return all videos'
      get '/' do
        videos = Video.all
        present videos, with: Entities::Video
      end
    end
  end
end
