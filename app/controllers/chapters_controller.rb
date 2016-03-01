class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  
  def index
    @course = Course.find(params[:course_id])
    @chapters = @course.chapters.all # the same as Chapter.where(course_id: params[:id])
  end

 
  def show
   @course = Course.find(params[:course_id])
   @lessons = @chapter.lessons.all
  end

  def new
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.new
  end

  def edit
    @course = Course.find(params[:course_id])
  end

  def create
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.build(chapter_params)

   if @chapter.save
      redirect_to course_chapters_path(@course, @chapters), notice: 'Successfully Created Chapter'
    else
      render action: 'new'
    end
  end


  def update
    @course = Course.find(params[:course_id])
    @chapter.update(chapter_params)
    redirect_to course_chapters_path(@course, @chapters), notice: 'Successfully Updated Chapter'
  end


  def destroy
    @course = Course.find(params[:course_id])
    @chapter.destroy
    redirect_to course_chapters_path(@course, @chapters), notice: 'Successfully Deleted Chapter'
  end

  private
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end


    def chapter_params
      params.require(:chapter).permit(:title, :description, :course_id, chapter_ids: [], package_ids: [])
    end
end
