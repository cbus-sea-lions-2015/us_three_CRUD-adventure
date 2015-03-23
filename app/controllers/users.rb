get '/users/new' do
@user = User.new
erb :'/users/new'
end

post '/users/new' do
@user = User.create(params[:user])
session[:id] = @user.id
redirect "/users/#{ @user.id }"
end

get '/users/login' do
  @user = User.new
  erb :'users/login'
end

post '/users/login' do
  @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:id] = @user.id
      redirect "/users/#{session[:id]}"
    else
      redirect '/users/login'
    end
end

get '/users/:id' do
@user = User.find(params[:id])
erb :'/users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'/users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect :"/users/#{@user.id}"
end
