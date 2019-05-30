class WorksController < ApplicationController

  skip_before_action :basic_auth, only: [:show, :comment]

  def index
    @works = Work.all.order("id ASC")
  end

  def show
    @works = Work.all.order("id ASC")
  end

  def upload
    work = Work.find(params[:work_id])
    if work.present? && params[:image].present?
      work.image.purge
      work.image.attach(params[:image])
    end
    redirect_to :action => "index"
  end

  def add_comment
    Comment.create({message: params[:message], work_id: params[:work_id]}) if params[:message].present? && params[:work_id].present?
    redirect_to :action => "show"
  end

  def reset_comment
    Work.find(params[:work_id]).comments.delete_all(:delete_all) if params[:work_id].present?
    redirect_to :action => "index"
  end

  def set_description
    Work.find(params[:work_id]).update_attribute(:description, params[:description]) if params[:work_id].present?
    redirect_to :action => "index"
  end

  def set_name
    Work.find(params[:work_id]).update_attribute(:name, params[:name]) if params[:work_id].present?
    redirect_to :action => "index"
  end

  def set_url
    Work.find(params[:work_id]).update_attribute(:url, params[:url]) if params[:work_id].present?
    redirect_to :action => "index"
  end
end
