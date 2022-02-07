Rails.application.routes.draw do

  namespace :api do

    namespace :v1 do

      defaults format: :json do
        resources :themes, only: [:index]
      end

    end

  end

end
