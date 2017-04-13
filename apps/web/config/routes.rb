# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/episodes/:id', to: 'episodes#show'
post '/works', to: 'works#create'
get '/works/:id', to: 'works#show'
get '/works', to: 'works#index'
get '/about', to: 'home#about'
