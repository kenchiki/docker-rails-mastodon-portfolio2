class My::WorksController < ApplicationController
  before_action :set_work, only: %i[show edit update destroy move_up move_down move_top move_bottom]

  def index
    @works = current_user.works.order(position: :asc)
  end

  def show
  end

  def new
    @work = current_user.works.build
  end

  def edit
  end

  def create
    @work = current_user.works.build(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to my_works_url, notice: t('notice.create') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to my_works_url, notice: t('notice.update') }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to my_works_url, notice: t('notice.destroy') }
    end
  end

  def move_up
    @work.move_higher
    redirect_to my_works_url, notice: t('notice.move_up')
  end

  def move_down
    @work.move_lower
    redirect_to my_works_url, notice: t('notice.move_down')
  end

  def move_top
    @work.move_to_top
    redirect_to my_works_url, notice: t('notice.move_top')
  end

  def move_bottom
    @work.move_to_bottom
    redirect_to my_works_url, notice: t('notice.move_bottom')
  end

  private

  def set_work
    @work = current_user.works.find(params[:id])
  end

  def work_params
    params.require(:work).permit(
      :title, :description, :work_category_id,
      work_images_attributes: %i[id image remove_image image_cache position _destroy],
      work_links_attributes: %i[id link_url link_text position _destroy]
    )
  end
end
