# enable :sessions
# use Rack::Flash

get '/' do
  @all_animals = Animal.all

  erb :'index'
end

# post '/urls' do
#   @url = Url.new
#   @url.long_url = params[:long_url]
#   @url.save
#   flash[:notice] = @url.short_url
#   redirect '/'
# end

# get '/error' do
#   "No Donut for You!!!"
# end

# # e.g., /q6bda
# get '/:short_url' do
#    url = Url.find_by(short_url: params[:short_url])
#    if !url.nil?
#      url.clicks += 1
#      url.save
#      redirect url.long_url
#    else
#      redirect to ('/error')
#  end
# end

