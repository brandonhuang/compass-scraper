# Homepage (Root path)
require 'rubygems'
require 'mechanize'


get '/' do

  @results = Activity.search(params[:query])
  
  erb :index
end
