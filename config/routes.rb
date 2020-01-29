Rails.application.routes.draw do
  resources :tasks do
    resources :comments, only:[:create]
    member do
      patch :toggle #/tasks/1/toggle | toggle_task_path (video 2.9 URL:https://code.tutsplus.com/courses/get-started-with-ruby-on-rails/lessons/ajax-remote-calls)
    end
  end
  resources :projects
  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
