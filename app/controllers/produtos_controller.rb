class ProdutosController < ApplicationController
  before_action :set_produto, only: [:show, :update, :destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    @produtos = Produto.all

    render json: @produtos
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
    render json: @produto
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      render json: @produto, status: :created, location: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    @produto = Produto.find(params[:id])

    if @produto.update(produto_params)
      head :no_content
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy

    head :no_content
  end

  private

    def set_produto
      @produto = Produto.find(params[:id])
    end

    def produto_params
      params.require(:produto).permit(:nome, :descricao, :precoUnitario, :qtd_estoque)
    end
end
