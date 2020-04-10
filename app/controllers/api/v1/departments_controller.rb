class Api::V1::DepartmentsController < ApplicationController

    def index
        @departments = Department.all
        render json: @departments
    end

    def show
        @department = Department.all
        render json: @department
    end

    def create
        @department = Department.new(department_params)
        if @department.save!
            render json: @department
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def update 
        @department = Department.find(params[:id])
        if @department.update(department_params)
            render json: @department
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def destroy 
        @department = Department.find(params[:id])
        if @department.destroy
            render json: @department
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def department_params
        params.require(:department).permit(:name)
    end
end
