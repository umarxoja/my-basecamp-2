class AttachmesController < ApplicationController
  before_action :set_project
  before_action :set_attachme, only: [:show, :edit, :update, :destroy]


  # GET projects/1/tasks
  def index
    @attachmes = @project.attachme

  end

  # GET projects/1/tasks/1
  def show
      
  end

  # GET projects/1/tasks/new
  def new
    @attachme = @project.attachme.build
    @attachmes = @project.attachme
  end

  # GET projects/1/tasks/1/edit
  def edit
  end

  # POST projects/1/tasks
  def create
    @attachme = @project.attachme.build(attachme_params)

    if @attachme.save
      redirect_to new_project_attachme_path
    else
      render action: 'new'
    end
  end

  # PUT projects/1/tasks/1
  def update
    if @attachme.update(attachme_params)
      redirect_to(@attachme.project)
    else
      render action: 'edit'
    end
  end

  # DELETE projects/1/tasks/1
  def destroy
    @attachme.destroy
    redirect_to root_path
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_attachme
      @attachme = @project.attachme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attachme_params
      params.require(:attachme).permit(:name, :attachment, :upload)
    end
end
