Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ler_arquivo/index' => 'ler_arquivo#index'
  post 'ler_arquivo/ler_arquivo' => 'ler_arquivo#ler_arquivo'
  get 'transacao/saldo_por_loja' => 'transacao#saldo_por_loja'
  
  root to: 'ler_arquivo#index'
end
