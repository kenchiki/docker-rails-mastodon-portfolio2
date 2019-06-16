class My::WorkCategoriesController < ApplicationController
  before_action :set_work_category, only: %i[edit update destroy move_up move_down move_top move_bottom]

  def index
    @work_categories = current_user.work_categories.order(position: :asc)
  end

  def new
    @work_category = current_user.work_categories.build
  end

  def edit
  end

  def create
    @work_category = current_user.work_categories.build(work_category_params)

    respond_to do |format|
      if @work_category.save
        format.html { redirect_to my_work_categories_url, notice: t('notice.create') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_category.update(work_category_params)
        format.html { redirect_to my_work_categories_url, notice: t('notice.update') }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @work_category.destroy
    respond_to do |format|
      format.html { redirect_to my_work_categories_url, notice: t('notice.destroy') }
    end
  end

  def move_up
    @work_category.move_higher
    redirect_to my_work_categories_url, notice: t('notice.move_up')
  end

  def move_down
    @work_category.move_lower
    redirect_to my_work_categories_url, notice: t('notice.move_down')
  end

  def move_top
    @work_category.move_to_top
    redirect_to my_work_categories_url, notice: t('notice.move_top')
  end

  def move_bottom
    @work_category.move_to_bottom
    redirect_to my_work_categories_url, notice: t('notice.move_bottom')
  end

  private

  def set_work_category
    @work_category = current_user.work_categories.find(params[:id])
  end


  def work_category_params
    params.require(:work_category).permit(:name)
  end
end
