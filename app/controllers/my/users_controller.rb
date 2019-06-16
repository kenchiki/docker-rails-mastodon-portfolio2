class My::UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]

  def edit
  end

  def update

    if @user.update(user_params)
      redirect_to edit_my_user_path(@user), notice: t('notice.update')
    else
      render :edit
    end
  end

  private

  def set_user
    @user = current_user
    @suggest_user_skills = %w[aaaa bbb ccc]
  end

  def user_params
    params.require(:user).permit(
      :name,
      :pr,
      :job_pr,
      :job_flow,
      :job_note,
      :job_enabled,
      :contact_email,
      :contact_email_job,
      :contact_email_gift,
      :prefecture_id,
      :activity_id,
      :skill_list
    )
  end
end
