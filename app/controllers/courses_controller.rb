class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_grade
  respond_to :html

  def index
   @grade = Grade.find(params[:grade_id])
   @courses = @grade.courses.all
   # respond_with(@course)
  end

  
  def show
   respond_with(@course)
  end

  # GET /courses/new
  def new
    @grade = Grade.find(params[:grade_id])
    @course = @grade.courses.new
    respond_with(@course)
  end

  # GET /courses/1/edit
  def edit

  end

  # POST /courses
  # POST /courses.json
  def create
    @grade = Grade.find(params[:grade_id])
    @course = @grade.courses.build(course_params)
    if @course.save
      redirect_to grade_courses_path(@grade, @courses), notice: 'Successfully Created Course'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course.update(course_params)
    redirect_to grade_courses_path(@grade, @courses), :notice => "Successfully Updated Course"
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    redirect_to grade_courses_path(@grade, @courses), :notice => "Successfully Deleted Course"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    def set_grade
      @grade = Grade.find(params[:grade_id])
    end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:title, :period, :description, :semester, :grade, :grade_id, :video_url)
    end
end
