class ResumesController < ApplicationController
    def index
      @resumes = Resume.all
    end
  
    def new
      @resume = Resume.new
    end
  
    def create
      @resume = Resume.new(resume_params)
      if @resume.save
        redirect_to resumes_path, notice: 'Resume created successfully'
      else
        render :new
      end
    end
  
    private
  
    def resume_params
      params.require(:resume).permit(:name, :email, :phone, :summary, :education, :experience)
    end
  end
  