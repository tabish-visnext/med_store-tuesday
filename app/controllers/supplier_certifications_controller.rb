class SupplierCertificationsController < ApplicationController
  before_action :set_supplier_certification, only: %i[ show update destroy ]

  # GET /supplier_certifications
  def index
    @supplier_certifications = SupplierCertification.all

    render json: @supplier_certifications
  end

  # GET /supplier_certifications/1
  def show
    render json: @supplier_certification
  end

  # POST /supplier_certifications
  def create
    @supplier_certification = SupplierCertification.new(supplier_certification_params)

    if @supplier_certification.save
      render json: @supplier_certification, status: :created, location: @supplier_certification
    else
      render json: @supplier_certification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /supplier_certifications/1
  def update
    if @supplier_certification.update(supplier_certification_params)
      render json: @supplier_certification
    else
      render json: @supplier_certification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /supplier_certifications/1
  def destroy
    @supplier_certification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_certification
      @supplier_certification = SupplierCertification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supplier_certification_params
      params.fetch(:supplier_certification, {})
    end
end
