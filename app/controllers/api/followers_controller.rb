class Api::FollowersController <  Api::BaseController
    def all_followers
        @follows = Follow.where(followed_id: params[:id])
        @followers = []
        @follows.each do |f|
            @followers << User.find(f.follower_id)
        end
        respond_with @followers  
    end
    
    def follow
        if Follow.create(user_params)
            respond_with status: 201
        else
            respond_with status: 400
            
        end

    end
    
    def user_params
    params.permit(:follower_id, :followed_id)
    end
    
    def unfollow
        Follow.where(follower_id: params[:id], followed_id: params[:followed]).destroy_all
        respond_with status: 201
    end
end