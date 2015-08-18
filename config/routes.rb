Rails.application.routes.draw do
  
  root to: 'calculator#show'
  get '/calculator/show', to: 'calculator#show', as: 'show'
  get '/calculator/clear', to: 'calculator#clear', as: 'clear'
  get '/calculator/operator/:op', to: 'calculator#operator', as: 'operator'
  get '/calculator/number/:num', to: 'calculator#number', as: 'number'
  get '/calculator/eval', to: 'calculator#eval', as: 'eval'
  
  
end
