class JobsController < ApplicationController
  def index
    @breadcrumbs = [
      {content: "Jobs"}
    ]
    @q = Job.ransack(params[:q])
    @jobs = @q.result.default_order.page(params[:page]).per(10)
  end

  def show
    @job = Job.find(params[:id])
    @breadcrumbs = [
      {content: "Jobs", href: jobs_path},
      {content: @job}
    ]
  end

  def new
    @breadcrumbs = [
      {content: "Jobs", href: jobs_path},
      {content: "New"}
    ]
    @job = current_user.jobs.new
  end

  def create
    @job = current_user.jobs.new(job_params)

    if @job.save
      redirect_to(job_path(@job), notice: "Job created successfully.")
    else
      flash[:alert] = @job.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @job = Job.find(params[:id])
    @breadcrumbs = [
      {content: "Jobs", href: jobs_path},
      {content: @job, href: job_path(@job)},
      {content: "Edit"}
    ]
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to(job_path(@job), notice: "Job updated successfully.")
    else
      flash[:alert] = @job.errors.full_messages.to_sentence
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    job = Job.find(params.fetch("id"))
    job.destroy

    redirect_to(jobs_path, notice: "Job deleted successfully.")
  end

  private

  def job_params
    params.require(:job).permit(:title, :link, :description, :deadline, :category)
  end

end
