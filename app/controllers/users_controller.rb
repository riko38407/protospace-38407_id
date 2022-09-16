class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show,:edit]
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end
end
