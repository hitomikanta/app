class PostController < ApplicationController
    def index
        @users=User.all
      end
    
      def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
        flash[:notice] = "投稿を削除しました"
        redirect_to("/")
      end
    
end
