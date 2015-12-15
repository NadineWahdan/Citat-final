class Api::PostsController <  Api::BaseController
before_action:authenicate_post!, only: [ :show]
    def all_posts
        @posts = Post.where(user_id: params[:id])
         respond_with @posts  
    end


      def remove_post
            Post.where(user_id: params[:id], id: params[:text]).destroy_all
        respond_with status: 201
      end

       def new
        @post = Post.new
        render action: :new

       end
        
        def create_post
            
        if Post.create(post_params)
            respond_with status: 201
        else
            respond_with status: 400
        end
        end
       
    def post_params
        params.permit(:user_id, :body_text)
    end
end