Rails.application.routes.draw do
  # rootは壊れているけど、後で対応する
  root "hello#index"

  get "api/v1/tasks", to: "api/v1/tasks#index"
end
