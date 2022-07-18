class OnomatopoeiasController < ApplicationController
  before_action :set_onomatopoeia, only: %i[ show edit update destroy ]

  # GET /onomatopoeias or /onomatopoeias.json
  def index
    @onomatopoeias = Onomatopoeia.all
  end

  # GET /onomatopoeias/1 or /onomatopoeias/1.json
  def show
  end

  # GET /onomatopoeias/new
  def new
    @onomatopoeia = Onomatopoeia.new
  end

  # GET /onomatopoeias/1/edit
  def edit
  end

  # POST /onomatopoeias or /onomatopoeias.json
  def create
    @onomatopoeia = Onomatopoeia.new(onomatopoeia_params)

    respond_to do |format|
      if @onomatopoeia.save
        format.html { redirect_to onomatopoeia_url(@onomatopoeia), notice: "Onomatopoeia was successfully created." }
        format.json { render :show, status: :created, location: @onomatopoeia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @onomatopoeia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onomatopoeias/1 or /onomatopoeias/1.json
  def update
    respond_to do |format|
      if @onomatopoeia.update(onomatopoeia_params)
        format.html { redirect_to onomatopoeia_url(@onomatopoeia), notice: "Onomatopoeia was successfully updated." }
        format.json { render :show, status: :ok, location: @onomatopoeia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @onomatopoeia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onomatopoeias/1 or /onomatopoeias/1.json
  def destroy
    @onomatopoeia.destroy

    respond_to do |format|
      format.html { redirect_to onomatopoeias_url, notice: "Onomatopoeia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onomatopoeia
      @onomatopoeia = Onomatopoeia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def onomatopoeia_params
      params.require(:onomatopoeia).permit(:japanese_notation, :korean_notation)
    end
end
