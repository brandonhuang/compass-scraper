# Homepage (Root path)
require 'rubygems'
require 'mechanize'


get '/' do

  @results = Activity.all
  if params[:query]
    @results = Activity.search(params[:query])
  end

  erb :index
end
