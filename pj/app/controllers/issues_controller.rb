class IssuesController < ApplicationController
  def index
    @issues = Issue.all()
  end

  def search
    @issues = Issue.all
    @issues = @issues.where("title like ?", "%#{params[:issue][:title]}%") if params[:issue][:title].present?
    @issues = @issues.where("body like ?", "%#{params[:issue][:body]}%") if params[:issue][:body].present?
    @issues = @issues.where("status = ?", params[:issue][:status]) if params[:issue][:status].present?
    render "index"
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to @issue
    else
      render "new"
    end
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    if @issue.update(issue_params)
      redirect_to @issue
    else
      render "edit"
    end
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to issues_path
  end

  private
    def issue_params
      params.require(:issue).permit(:title, :body, :start_datetime, :end_datetime)
    end

end
