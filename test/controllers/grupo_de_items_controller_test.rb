require "test_helper"

class GrupoDeItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_de_item = grupo_de_items(:one)
    @grupo_de_item.codigo = Time.now.to_i.to_s
  end

  test "should get index" do
    get grupo_de_items_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_de_item_url
    assert_response :success
  end

  test "should create grupo_de_item" do
    assert_difference("GrupoDeItem.count") do
      post grupo_de_items_url, params: { grupo_de_item: { codigo: @grupo_de_item.codigo, descricao: @grupo_de_item.descricao } }
    end

    assert_redirected_to grupo_de_item_url(GrupoDeItem.last)
  end

  test "should show grupo_de_item" do
    get grupo_de_item_url(@grupo_de_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_de_item_url(@grupo_de_item)
    assert_response :success
  end

  test "should update grupo_de_item" do
    patch grupo_de_item_url(@grupo_de_item), params: { grupo_de_item: { codigo: @grupo_de_item.codigo, descricao: @grupo_de_item.descricao } }
    assert_redirected_to grupo_de_item_url(@grupo_de_item)
  end

  test "should destroy grupo_de_item" do
    assert_difference("GrupoDeItem.count", -1) do
      delete grupo_de_item_url(@grupo_de_item)
    end

    assert_redirected_to grupo_de_items_url
  end
end
