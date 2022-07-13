class UsersController < ApplicationController
  def show
    # URLに記載されたIDを参考に、必要なUserモデルを取得する
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
  end
end
