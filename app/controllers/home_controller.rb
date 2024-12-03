# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :find_user, only: :show

  def update
    @user = User.update('user_params')
  end

  def user_params
    params.require(:user).permit!
  end
end
