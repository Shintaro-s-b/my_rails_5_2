class WorksController < ApplicationController
  def index
    @works = Work.all.order("id ASC")
  end

  def show
  end

  def upload
    work = Work.find(params[:work_id])
    if work.present? && params[:image].present?
      work.image.purge
      work.image.attach(params[:image])
    end
    redirect_to :action => "index"
  end
end
