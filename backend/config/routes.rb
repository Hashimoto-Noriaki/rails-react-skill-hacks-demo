Rails.application.routes.draw do
  # namespaceでURLのパス(/api/v1/...)とコントローラーの名前空間(Api::V1::...)を
  # まとめて指定できる。バージョニングしたAPIをまとめるのに使う。
  namespace :api do
    namespace :v1 do
      # resourcesはindex/show/create/update/destroyなどRESTfulな7つのルートを
      # まとめて生成する。only:で今使うアクションだけに絞り込んでいる。
      resources :tasks, only: [ :index ]
    end
  end
end
