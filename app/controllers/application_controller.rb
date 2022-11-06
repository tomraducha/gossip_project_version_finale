class ApplicationController < ActionController::Base
include SessionsHelper
include CommentsHelper
include GossipsHelper
include LikesHelper
include UsersHelper
end
