class Api::PostsController <  Api::BaseController
before_action:authenicate_post!, only: [ :show]
    def all_posts
        @posts = Post.where(user: params[:id])
        @postses = []
        @posts.each do |f|
            @postses << Post.find(f.body)
        end
        respond_with @followers  
    end


      def remove
            Post.where(user: params[:id], body: params[:text]).destroy_all
      end


     def create_post
            if Post.create(post_params)
                respond_with 201
            else
                respond_with 400  
            end
                
     end
       
     def post_params
        params.permit(:body)
     end
     
end