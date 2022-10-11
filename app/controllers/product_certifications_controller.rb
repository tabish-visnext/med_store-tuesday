class ProductCertificationsController < ApplicationController
  before_action :set_product_certification, only: %i[ show update destroy ]

  # GET /product_certifications
  def index
    @product_certifications = ProductCertification.all

    render json: @product_certifications
  end

  # GET /product_certifications/1
  def show
    render json: @product_certification
  end

  # POST /product_certifications
  def create
    @product_certification = ProductCertification.new(product_certification_params)

    if @product_certification.save
      render json: @product_certification, status: :created, location: @product_certification
    else
      render json: @product_certification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_certifications/1
  def update
    if @product_certification.update(product_certification_params)
      render json: @product_certification
    else
      render json: @product_certification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_certifications/1
  def destroy
    @product_certification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_certification
      @product_certification = ProductCertification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_certification_params
      params.fetch(:product_certification, {})
    end
end
