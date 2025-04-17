class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
      # 「:unprocessable_entity」が、発生したエラーの種類を示すもの
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
