class UsersController < ApplicationController
  def show
    # URLに記載されたIDを参考に、必要なUserモデルを取得する
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # @user = ユーザーの取得
    @user = User.find(params[:id])
    # @user.ユーザーのアップデート
    @user.update(user_params)
    # redirect_to ユーザーの詳細ページへのパス
    redirect_to user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
