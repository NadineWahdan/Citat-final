class UsersController <  Api::BaseController
        def all_users
            @users = User.all
            respond_with @users
        end
end