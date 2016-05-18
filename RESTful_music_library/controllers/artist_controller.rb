#NEW
get '/artists/new' do
  erb(:'artist/new')
end

#INDEX
get '/artists' do
  @artists = Artist.all()
  erb(:'artist/index')
end

#CREATE
post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  erb(:'artist/create')
end

#SHOW
get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:'artist/show')
end

#EDIT
get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:'artist/edit')
end

#UPDATE
put '/artists/:id' do
  @artist = Artist.update(params)
  redirect to("/artists/#{params[:id]}")
end


#DELETE
delete '/artists/:id' do
  Artist.destroy(params[:id])
  redirect to("/artists")
end

