class PostImageController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @post_image = PostImage.new
  end

  def index
  end

  def show
  end

  # def edit
  # end
end
