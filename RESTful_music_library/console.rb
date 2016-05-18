require_relative( './models/album' )
require_relative( './models/artist' )

require( 'pry-byebug' )

artist1 = Artist.new( { 'name' => 'David Bowie' } ).save();
artist2 = Artist.new({ 'name' => 'Goldfrapp'}).save();
album1 = Album.new( { 'name' => 'Blackstar', 'artist_id' => artist1.id } ).save();
album2 = Album.new( { 'name' => 'Lodger', 'artist_id' => artist1.id } ).save();
album3 = Album.new( { 'name' => 'Hours', 'artist_id' => artist1.id } ).save();
album4 = Album.new( { 'name' => 'Felt Mountain', 'artist_id' => artist2.id } ).save();
album5 = Album.new( { 'name' => 'Supernature', 'artist_id' => artist2.id } ).save();
album6 = Album.new( { 'name' => 'Seventh Tree', 'artist_id' => artist2.id } ).save();



binding.pry
nil
