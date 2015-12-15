class FollowersController <  Api::BaseController
    def all_followers
            @followers = Followers.all
            respond_with @followers
        end
end