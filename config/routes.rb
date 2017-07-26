Rails.application.routes.draw do
  root to: "pages#index"

  controller :pages do
    get "about", action: "about"
    get "blog", action: "blog"
    get "blog_one", action: "blog_one"
    get "news", action: "news"
    get "new_one", action: "new_one"
    get "contacts", action: "contacts"
    get "resh_nastyl", action: "resh_nastyl"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end