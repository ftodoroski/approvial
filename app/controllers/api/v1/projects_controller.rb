class Api::V1::ProjectsController < ApplicationController
    
    def index
        @projects = Project.all
        render json: @projects.to_json(:include => {:department => {only: :name}, :user => {only: :username}})
    end
  
    def show 
        @project = Project.find(params[:id])
        render json: @project
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
            render json: @project
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
        params.require(:project).permit(:user_id, :location_id, :project_name, :description)
    end
end
