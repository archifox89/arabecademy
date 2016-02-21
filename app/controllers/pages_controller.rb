class PagesController < ApplicationController
  def home
    @grades = Grade.all
    @courses = Course.all
  end

  def grade10
  end

  def preview
  end

  def course_show
  end

  def dashboard
  end

  def about
  end
end
