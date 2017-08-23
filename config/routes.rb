Rails.application.routes.draw do
  root to: "pages#index"
  get "calculator_data", format: "json", to: "application#calculator_data"

  controller :pages do
    get "about", action: "about"
    get "blog", action: "blog"
    get "blog_one", action: "blog_one"
    get "news", action: "news"
    get "new_one", action: "new_one"
    get "contacts", action: "contacts"
    get "resh_nastyl", action: "resh_nastyl"
    get "resh_nastyl_one", action: "resh_nastyl_one"
    get "shodovi_marshi", action: "shodovi_marshi"
    get "installation", action: "installation"
    get "technical_guide", action: "technical_guide"
    get "technical_guide_one", action: "technical_guide_one"
    get "technical_loading_table", action: "technical_loading_table"
    get "terms_of_use", action: "terms_of_use"
    get "examples", action: "examples"
    get "not_found", action: "not_found"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end