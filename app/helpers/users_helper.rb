module UsersHelper
  
  private

  def post_params
    params.require(:user).permit(:email,:age,:description,:password,:password_confirmation,:first_name,:last_name,:city_id)
  end

  def cities_list
    cities =[]
    City.all.each {|city| cities << city}
    return cities
  end
end
