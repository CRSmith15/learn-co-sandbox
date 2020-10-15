class UsersController < ApplicationController
  
  get "/login" do 
    erb :"login"
  end
  
  post "/login" do 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect "/users/#{user.id}"
    else
      redirect "/login"
    end
  end
  
  get "/users/:id" do 
<<<<<<< HEAD
    @user = User.find_by(id: params[:id])
    erb :"/users/show"
  end
  
  get "/signup" do 
    erb :"/users/signup"
=======
    "show page for users"
  end
  
  get "/signup" do 
    erb :"/signup"
>>>>>>> 4ec00b28d8b1b8372068283e04b627bec267a695
  end
  
  post "/users" do
    @user = User.create(params)
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  end
  
  get "/logout" do 
<<<<<<< HEAD
    session.clear 
    redirect "/"
=======
    
>>>>>>> 4ec00b28d8b1b8372068283e04b627bec267a695
  end
end