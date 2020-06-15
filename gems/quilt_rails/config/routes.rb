# frozen_string_literal: true

Quilt::Engine.routes.draw do
  post '/performance_report', to: 'performance_report#create'
  get '/webpack/*path', to: 'errors#proxy_misconfigured'
  get '/*path', to: 'ui#index'
  root 'ui#index'
end
