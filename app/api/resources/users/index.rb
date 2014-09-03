module Resources
  class Users::Index < Grape::API
    helpers APIHelpers

    resource :users do
      format :json

      before do
        authenticated_user
      end

      desc 'Return all users'
      get '/' do
        users = User.all
        present users, with: Entities::User
      end
    end
  end
end
