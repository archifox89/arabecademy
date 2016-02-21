class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  # GET /lessons
  # GET /lessons.json
  def index
    @chapter = Chapter.find(params[:chapter_id])
    @lessons = @chapter.lessons.all
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @chapter = Chapter.find(params[:chapter_id])
  end

  # GET /lessons/new
  def new
    @chapter = Chapter.find(params[:chapter_id])
    @lesson = @chapter.lessons.new
  end

  # GET /lessons/1/edit
  def edit
    @chapter = Chapter.find(params[:chapter_id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @chapter = Chapter.find(params[:chapter_id])
    @lesson = @chapter.lessons.build(lesson_params)
    if @lesson.save
      redirect_to chapter_lessons_path(@chapter, @lessons), notice: 'Successfully Created Lesson'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    @chapter = Chapter.find(params[:chapter_id])
    @lesson.update(lesson_params)
    redirect_to chapter_lessons_path(@chapter, @lessons), notice: 'Successfully Updated Lesson'
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @chapter = Chapter.find(params[:chapter_id])
    @lesson.destroy
    redirect_to chapter_lessons_path(@chapter, @lessons), notice: 'Successfully Updated Lesson'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:title, :description, :notes, :video_url, :chapter_id)
    end
end
