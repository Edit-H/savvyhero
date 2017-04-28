class UsersController < ApplicationController
    # before_action :require_login, except: [:new,:create]
    # before_action :require_correct_user, only: [:show,:edit, :update, :delete]
    def index
        render layout: "index"
    end

    # def new
    # end


    def blog
        render "/blogs/blog"
    end

    def media
        render "/medias/media"
    end

    def new
        render "/contacts/register"
    end

    def cart

        render layout: "checkout"
        # render "/users/cart"

    end

    def product
        render "/products/product"
    end




    def create
        @user=User.new(user_params)
        if @user.save
            session[:user_id]=@user.id
            redirect_to "/"
    else
        flash[:errors] = @user.errors.full_messages
        redirect_to :back
    end
end




private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confrimation)
    end

end
