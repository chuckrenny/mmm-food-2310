Rails.application.routes.draw do
  root "welcome#index"
  get 'foods_path', to: 'foods#sindex'
end
