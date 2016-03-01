class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /packages
  # GET /packages.json
  def index
    @course = Course.find(params[:course_id])
    @packages = @course.packages.all
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
    @course = Course.find(params[:course_id])
    @chapters = @package.chapters.all
  end

  # GET /packages/new
  def new
    @course = Course.find(params[:course_id])
    @chapters = @course.chapters.all
    @package = @course.packages.new
  end

  # GET /packages/1/edit
  def edit
    @course = Course.find(params[:course_id])
    @chapters = @course.chapters.all
  end

  # POST /packages
  # POST /packages.json
  def create
    @course = Course.find(params[:course_id])
    @chapters = @course.chapters.all
    @package = @course.packages.build(package_params)

    if @package.save
      redirect_to course_packages_path(@course, @packages), notice: 'Successfully Created Package'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /packages/1
  # PATCH/PUT /packages/1.json
  def update
    @course = Course.find(params[:course_id])
    @chapters = @course.chapters.all
    redirect_to course_packages_path(@course, @packages), notice: 'Successfully Updated Package'
  end

  # DELETE /packages/1
  # DELETE /packages/1.json
  def destroy
    @course = Course.find(params[:course_id])
    @chapters = @course.chapters.all
    @package.destroy
    redirect_to course_packages_path(@course, @packages), notice: 'Successfully Deleted Package'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit(:title, :price, :course_id, :chapter_id, chapter_ids: [], package_ids: [])
    end
end
