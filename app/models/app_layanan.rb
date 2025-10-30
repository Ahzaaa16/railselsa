class AppLayanan < ApplicationRecord
  has_one_attached :gambar
  validates :nama, :deskripsi, :harga, :kategori, presence: true
end
