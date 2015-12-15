class PostsController <  Api::BaseController
before_action:authenicate_post!, only: [ :show]
        def all_posts
            @posts = Post.all
            respond_with @posts
        end
        
        def show
            @post= Post.find(params[:id])
            respond_with @post
        end



      def remove
            Post.find(params[:id]).destroy
            redirect_to :action => 'post.all'
      end


     def create
            @posts = Post.new(post_params)
     end
        
end