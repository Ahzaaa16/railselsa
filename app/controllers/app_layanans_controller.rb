class AppLayanansController < ApplicationController
  before_action :set_app_layanan, only: %i[show edit update destroy]

  # GET /app_layanans
  def index
    @app_layanans = AppLayanan.all.order(created_at: :desc)
  end

  # GET /app_layanans/:id
  def show
  end

  # GET /app_layanans/new
  def new
    @app_layanan = AppLayanan.new
  end

  # POST /app_layanans
  def create
    @app_layanan = AppLayanan.new(app_layanan_params)
    if @app_layanan.save
      redirect_to app_layanans_path, notice: "✅ Layanan berhasil ditambahkan!"
    else
      flash.now[:alert] = "❌ Gagal menambahkan layanan. Periksa input Anda."
      render :new, status: :unprocessable_entity
    end
  end

  # GET /app_layanans/:id/edit
  def edit
  end

  # PATCH/PUT /app_layanans/:id
  def update
    if @app_layanan.update(app_layanan_params)
      redirect_to app_layanans_path, notice: "✅ Layanan berhasil diperbarui!"
    else
      flash.now[:alert] = "❌ Gagal memperbarui layanan."
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /app_layanans/:id
  def destroy
    @app_layanan.destroy
    redirect_to app_layanans_path, notice: "🗑️ Layanan berhasil dihapus!"
  end

  private

  def set_app_layanan
    @app_layanan = AppLayanan.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to app_layanans_path, alert: "Layanan tidak ditemukan."
  end

  def app_layanan_params
    params.require(:app_layanan).permit(:nama, :deskripsi, :harga, :kategori, :gambar, :status)
  end
end
