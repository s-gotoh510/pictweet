Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tweets#index' # ルートパスの指定
  get 'tweets' => 'tweets#index' # ツイート一覧画面
  get 'tweets/new' => 'tweets#new' # ツイート投稿画面
  post 'tweets' => 'tweets#create' # ツイート投稿機能
end
