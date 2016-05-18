#NEW
get '/albums/new' do
  @artists = Artist.all()
  erb(:'album/new')
end

#INDEX
get '/albums' do
  @albums = Album.all()
  erb(:'album/index')
end

#CREATE
post '/albums' do
  @album = Album.new(params)
  @album.save
  erb(:'album/create')
end

#SHOW
get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:'album/show')
end

# #EDIT
get '/albums/:id/edit' do
  @album = Album.find(params[:id])
  #solution
  @artists = Artist.all()
  erb(:'album/edit')
end

#UPDATE
put '/albums/:id' do
  @album = Album.update(params)
  redirect to("/albums/#{params[:id]}")
end


#DELETE
delete '/albums/:id' do
  Album.destroy(params[:id])
  redirect to("/albums")
end

