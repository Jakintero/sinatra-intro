
#Home

get '/' do
  @entries = Entry.all
  erb :index
end

#New

get '/entries/new' do
  erb :new
end

#Create

post '/entries' do
  @author = Author.find_by(name: params[:author].downcase)
  @entry = Entry.new(title: params[:title], body: params[:body])
  @entry.author = @author
  if @entry.save
    redirect "/entries/#{@entry.id}"
  end
end
