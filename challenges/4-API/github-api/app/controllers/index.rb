#Index
get '/' do
  api = Github::Client.new
  erb :index
end


#New
get '/repo/new' do
  erb :new
end


#Create Repo
get '/repo' do

end
