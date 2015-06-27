get '/' do

  if params[:query]
    @results = Activity.search(params[:query])
  else
  	@results = Activity.all
  end

  erb :index
end
