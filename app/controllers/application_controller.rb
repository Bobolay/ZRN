class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # include ActionView::Helpers::OutputSafetyHelper
  # include ActionView::Helpers::AssetUrlHelper
  # include ActionView::Helpers::TagHelper
  # include ActionView::Helpers::UrlHelper
  # include Cms::Helpers::PagesHelper
  # include Cms::Helpers::MetaDataHelper
  # include Cms::Helpers::NavigationHelper
  # include Cms::Helpers::ActionView::UrlHelper

  def render_not_found
    render template: "errors/not_found.html.slim"
  end

  def calculator_data
    data = {
      table1: [{
        height: 20,
        thickness: 2,
       
        Fv: [[500, 2543], [600, 1766]],
        fv: [[500, 0.19]],
        Fp: [],
        fp: []
      
      }]
    }

    render json: data
  end  
end
