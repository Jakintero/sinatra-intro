
#Index

get '/' do
  @notes = Note.all
  erb :index
end

#New

get '/notes/new' do
  erb :new
end

#Show

get '/notes/:id' do
    @note = Note.find_by(id: params[:id])
    erb :show
end

#Create

post '/notes' do
    @note = Note.new(name: params[:name], description: params[:description], quantity: params[:quantity])
    if @note.save
      redirect "/notes/#{@note.id}"
    else
      erb :new
  end
end

#Edit

get '/notes/:id/edit' do
  @note = Note.find_by(id: params[:id])
  erb :edit
end

#Update

patch '/notes/:id' do
  note = Note.find_by(id: params[:id])
  note.update(name: params[:name], description: params[:description], quantity: params[:quantity])
  redirect "/notes/#{note.id}" #Por qué funciona si le quito el @
end

#Destroy

get '/notes/:id/delete' do
  @note = Note.find_by(id: params[:id])
  @note.destroy
  redirect '/'
end
