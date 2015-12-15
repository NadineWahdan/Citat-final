class UsersController <  Api::BaseController
before_action :authenticate_user! , only: [:show,:follower]

        def all_users
            @users = User.all
            respond_with @users
        end
        
        def new
        @user = User.new
        end

    def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to root_path, notice: 'Registered! Please login'
    else
      render action: :new
    end
    end

  def user_params
    params.require(:user).permit(:facebook, :password)
  end
  
end