module Resources
  class Users::Show < Grape::API
    helpers APIHelpers

    resource :users do
      format :json

      before do
        authenticated_user
      end

      desc 'Return all users'
      get ':id' do
        user = User.find_by :id => params[:id]
        if user
          present user, with: Entities::User
        else
          error!('Invalid id!', 500)
        end
      end
    end
  end
end
