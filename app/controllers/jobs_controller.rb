class JobsController < ApplicationController
  def index
    # TODO: add filtering and sorting
    @jobs = Job.default_order.page(params[:page]).per(10)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = current_user.jobs.new
  end

  def create
    job = current_user.jobs.new(job_params)

    if job.save
      redirect_to("/jobs", { :notice => "Job created successfully." })
    else
      redirect_to("/jobs", { :alert => job.errors.full_messages.to_sentence })
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    job = Job.find(params[:id])

    if job.update(job_params)
      redirect_to("/jobs/#{job.id}", { :notice => "Job updated successfully."} )
    else
      redirect_to("/jobs/#{job.id}", { :alert => job.errors.full_messages.to_sentence })
    end
  end

  def destroy
    job = Job.find(params.fetch("id"))
    job.destroy

    redirect_to("/jobs", notice: "Job deleted successfully.")
  end

  private

  def job_params
    params.require(:job).permit(:title, :link, :description, :deadline, :category)
  end

end
