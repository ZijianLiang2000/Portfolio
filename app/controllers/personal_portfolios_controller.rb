class PersonalPortfoliosController < ApplicationController
  before_action :set_personal_portfolio, only: %i[ show edit update destroy ]

  # GET /personal_portfolios or /personal_portfolios.json
  def index
    @personal_portfolios = PersonalPortfolio.all
  end

  # GET /personal_portfolios/1 or /personal_portfolios/1.json
  def show
  end

  # GET /personal_portfolios/new
  def new
    @personal_portfolio = PersonalPortfolio.new
  end

  # GET /personal_portfolios/1/edit
  def edit
  end

  # POST /personal_portfolios or /personal_portfolios.json
  def create
    @personal_portfolio = PersonalPortfolio.new(personal_portfolio_params)

    respond_to do |format|
      if @personal_portfolio.save
        format.html { redirect_to personal_portfolio_url(@personal_portfolio), notice: "Personal portfolio was successfully created." }
        format.json { render :show, status: :created, location: @personal_portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_portfolios/1 or /personal_portfolios/1.json
  def update
    respond_to do |format|
      if @personal_portfolio.update(personal_portfolio_params)
        format.html { redirect_to personal_portfolio_url(@personal_portfolio), notice: "Personal portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: @personal_portfolio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_portfolios/1 or /personal_portfolios/1.json
  def destroy
    @personal_portfolio.destroy

    respond_to do |format|
      format.html { redirect_to personal_portfolios_url, notice: "Personal portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_portfolio
      @personal_portfolio = PersonalPortfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_portfolio_params
      params.fetch(:personal_portfolio, {})
    end
end
