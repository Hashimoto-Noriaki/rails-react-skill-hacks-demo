Rails.application.routes.draw do
  root "hello#index"
  get "api/v1/tasks", to: "api/v1/tasks#index"
end
