class WorksController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end
end
