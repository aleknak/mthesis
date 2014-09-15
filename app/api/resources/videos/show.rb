module Resources
  class Videos::Show < Grape::API
    helpers APIHelpers

    resource :videos do
      format :json

      before do
        authenticated_user
      end

      desc 'Return a video'
      get ':id' do
        video = Video.find_by :id => params[:id]
        if video
          present video, with: Entities::Video
        else
          error!('Invalid id!', 500)
        end
      end
    end
  end
end
