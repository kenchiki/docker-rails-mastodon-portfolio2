class My::WebsitesController < ApplicationController
  before_action :set_website, only: %i[edit update destroy move_up move_down move_top move_bottom]

  def index
    @websites = current_user.websites.order(position: :asc)
  end

  def new
    @website = current_user.websites.build
  end

  def edit
  end

  def create
    @website = current_user.websites.build(website_params)

    respond_to do |format|
      if @website.save
        format.html { redirect_to my_websites_url, notice: t('notice.create') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @website.update(website_params)
        format.html { redirect_to my_websites_url, notice: t('notice.update') }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @website.destroy
    respond_to do |format|
      format.html { redirect_to my_websites_url, notice: t('notice.destroy') }
    end
  end

  def move_up
    @website.move_higher
    redirect_to my_websites_url, notice: t('notice.move_up')
  end

  def move_down
    @website.move_lower
    redirect_to my_websites_url, notice: t('notice.move_down')
  end

  def move_top
    @website.move_to_top
    redirect_to my_websites_url, notice: t('notice.move_top')
  end

  def move_bottom
    @website.move_to_bottom
    redirect_to my_websites_url, notice: t('notice.move_bottom')
  end

  private

  def set_website
    @website = current_user.websites.find(params[:id])
  end

  def website_params
    params.require(:website).permit(:link_text, :link_url, :description)
  end
end
