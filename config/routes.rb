Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Crear la ruta '/todos' que apunte al método todos#index con el verbo get.
  #Crear la ruta 'todos/new' con el verbo get.
  #Crear la ruta '/todos' que apunte al método todos#create con el verbo post.
  #Crear la ruta '/todos/:id' que apunte al método todos#show con el verbo get y el prefijo todo.
  #Crear la ruta '/todos/:id/edit' que apunte al método todos#edit con el verbo get.
  #Crear la ruta '/todos/:id' que apunte al método todos#update con el verbo patch.
  #Crear la ruta '/todos/:id' que apunte al método todos#destroy con el verbo delete.
  #Crear la ruta '/todos/:id/complete' que apunte al método todos#complete con el verbo get.

  get '/todos', to: 'todos#index'
  get '/todos/new'
  get 'todos/list'
  post '/todos', to: 'todos#create'
  get '/todos/:id', to:'todos#show', as: 'todo'
  get '/todos/:id/edit', to:'todos#edit', as: 'editar'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy'
  get '/todos/:id/complete', to: 'todos#complete', as: 'complete'
end
