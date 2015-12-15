class FollowersController <  Api::BaseController
    
    def all_followers
            @followers = Followers.all
            respond_with @followers
    end
    
    
    def unfollow
     Follow.find(params[:id]).destroy
      redirect_to :action => 'all_followers'
    end 
    
    def follow
       @follow = follow.new(follow_params)
        
    end
    
    
   
end