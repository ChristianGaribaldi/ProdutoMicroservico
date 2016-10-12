require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtos)
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post :create, produto: { descricao: @produto.descricao, nome: @produto.nome, precoUnitario: @produto.precoUnitario, qtd_estoque: @produto.qtd_estoque }
    end

    assert_response 201
  end

  test "should show produto" do
    get :show, id: @produto
    assert_response :success
  end

  test "should update produto" do
    put :update, id: @produto, produto: { descricao: @produto.descricao, nome: @produto.nome, precoUnitario: @produto.precoUnitario, qtd_estoque: @produto.qtd_estoque }
    assert_response 204
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete :destroy, id: @produto
    end

    assert_response 204
  end
end
