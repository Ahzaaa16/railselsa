class CreateAppLayanans < ActiveRecord::Migration[8.1]
  def change
    create_table :app_layanans do |t|
      t.string :nama
      t.text :deskripsi
      t.decimal :harga
      t.string :kategori
      t.string :gambar
      t.boolean :status

      t.timestamps
    end
  end
end
