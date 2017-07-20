Rails.application.routes.draw do
  root to: "pages#index"

  controller :pages do
    get "about", action: "about"
    get "blog", action: "blog"
    get "blog_one", action: "blog_one"
    # get "contact-us", action: "contact_us"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end