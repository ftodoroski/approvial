class Api::V1::ProjectsController < ApplicationController
    
    def index
        @projects = Project.all
        render json: @projects.to_json(:include => {:department => {:only => [:name, :id]},:user => {only: :username}})
    end
  
    def show 
        @project = Project.find(params[:id])
        render json: @project.to_json(:include => {:department => {:only => [:name, :id]},:user => {only: :username}})
    end

    def create
        @project = Project.new(project_params)
        if @project.save!
            render json: @project
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def update 
        @project = Project.find(params[:id])
        if @project.update(project_params)
            render json: @project.to_json(:include => {:department => {:only => [:name, :id]},:user => {only: :username}})
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def destroy 
        @project = Project.find(params[:id])
        if @project.destroy
            render json: @project
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def project_params
        params.require(:project).permit(:user_id, :location_id, :project_name, :description, :approved_date, :approved_by, :status, :budget, :required_completion_date, :completed_date)
    end
end
