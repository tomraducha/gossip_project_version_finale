module LikesHelper
private

    def authenticate_user
      unless session[:user_id]
        flash[:danger] = "Please log in."
        redirect_to new_session_path
      end
    end
end