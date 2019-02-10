class WelcomeController < ApplicationController
  # ログイン済ユーザーのみにアクセスを許可する
  before_action :authenticate_user!

  def index
  end
end
