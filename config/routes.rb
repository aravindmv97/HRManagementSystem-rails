Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    root to: redirect('/home')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
  resources :employee_salaries
  resources :low_performance_high_salaries
  resources :high_paid
  resources :high_performance_high_leave
end
