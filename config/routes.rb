Rails.application.routes.draw do
  resources :consulta_medicamentos
  resources :medicamentos
  resources :consultas
  resources :animals
  resources :tutors
  resources :veterinarios
  resources :clinicas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
