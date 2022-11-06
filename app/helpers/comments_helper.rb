 module CommentsHelper
 private

      def authenticate_user
        unless session[:user_id]
          flash[:danger] = "Please log in."
          redirect_to new_session_path
        end
      end
    
  
        def user_is_op
          puts "****"
          puts session[:user_id]
          puts "****"
          unless session[:user_id] == Comment.find(params[:id]).user.id
            flash[:danger] = "You cant do that !"
            redirect_to new_session_path
          end
        end
 end