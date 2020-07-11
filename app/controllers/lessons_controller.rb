class LessonsController < ApplicationController

  def new
    @lesson = Lesson.new
    
  end

  def create
    
    params[:lesson][:date] = params[:calendar]
    @lesson = Lesson.new(lesson_params)
    
    if @lesson.save
      redirect_to(lessons_show_path(@lesson.id))
    else
      render("lessons/new")
    end    

  end  
  def show
    @lesson = Lesson.find_by(id: params[:id])
  end  

  private
   def lesson_params
    params.require(:lesson).permit(:datetime,
                                   :time,
                                   :date
                                 )
   end 
end
