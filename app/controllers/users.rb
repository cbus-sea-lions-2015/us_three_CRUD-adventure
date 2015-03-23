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
@urls = @user.urls
erb :'/users/show'
end

post '/users/:id/urls' do

  @url = Url.new
  @url.long_url = params[:long_url]
  @url.user_id = session[:id]
  @url.save
  logger.info "after save"
  logger.info "#{@url.inspect}"
  flash[:notice] = @url.short_url
  redirect "/users/#{ params[:id]}"
end
