class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users.to_json(:include => {:department => {only: :name}})
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            render json: @user
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def update 
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def destroy 
        @user = User.find(params[:id])
        if @user.destroy
            render json: @user
        else
            render json: "Something went wrong.".to_json  
        end
    end

    def user_params
        params.require(:user).permit(:username, :department_id, :name)
    end
end




# fetch('http://localhost:3000/api/v1/users', {
#     method: 'POST', headers: {
#       'Content-Type': 'application/json',
#         'Accept': 'application/json'

#     }, body: JSON.stringify( {username: 'ftodoroski', name: 'Filip'}) 
# }).then(response => response.json()).then(data => console.log('Success', data)).catch(error => console.log('Failed', error))