Rails.application.routes.draw do
  # Halaman utama (root)
  root "home#index"

  # CRUD untuk layanan
  resources :app_layanans

  # Tambahan: akses cepat ke daftar layanan via /layanan
  get "/layanan", to: "app_layanans#index"
end
