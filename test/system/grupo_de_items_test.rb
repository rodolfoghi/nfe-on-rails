require "application_system_test_case"

class GrupoDeItemsTest < ApplicationSystemTestCase
  setup do
    @grupo_de_item = grupo_de_items(:one)
    @grupo_de_item.codigo = Time.now.to_i.to_s
  end

  test "visiting the index" do
    visit grupo_de_items_url
    assert_selector "h2", text: "Grupos de itens"
  end

  test "should create grupo de item" do
    visit grupo_de_items_url
    click_on "Novo grupo de item"

    fill_in "Código", with: @grupo_de_item.codigo
    fill_in "Descrição", with: @grupo_de_item.descricao
    click_on "Salvar"

    assert_text "Grupo de item was successfully created"
    click_on "Voltar"
  end

  test "should update Grupo de item" do
    visit grupo_de_item_url(@grupo_de_item)
    click_on "Editar", match: :first

    fill_in "Código", with: @grupo_de_item.codigo
    fill_in "Descrição", with: @grupo_de_item.descricao
    click_on "Salvar"

    assert_text "Grupo de item was successfully updated"
    click_on "Voltar"
  end

  test "should destroy Grupo de item" do
    visit grupo_de_item_url(@grupo_de_item)
    click_on "Excluir", match: :first

    assert_text "Grupo de item was successfully destroyed"
  end
end
