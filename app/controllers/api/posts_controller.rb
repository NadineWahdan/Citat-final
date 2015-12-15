class PostsController <  Api::BaseController
        def all_posts
            @posts = Post.all
            respond_with @posts
        end
end