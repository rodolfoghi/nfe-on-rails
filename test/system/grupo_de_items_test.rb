require "application_system_test_case"

class GrupoDeItemsTest < ApplicationSystemTestCase
  setup do
    @grupo_de_item = grupo_de_items(:one)
  end

  test "visiting the index" do
    visit grupo_de_items_url
    assert_selector "h1", text: "Grupo de items"
  end

  test "should create grupo de item" do
    visit grupo_de_items_url
    click_on "New grupo de item"

    fill_in "Codigo", with: @grupo_de_item.codigo
    fill_in "Descricao", with: @grupo_de_item.descricao
    click_on "Create Grupo de item"

    assert_text "Grupo de item was successfully created"
    click_on "Back"
  end

  test "should update Grupo de item" do
    visit grupo_de_item_url(@grupo_de_item)
    click_on "Edit this grupo de item", match: :first

    fill_in "Codigo", with: @grupo_de_item.codigo
    fill_in "Descricao", with: @grupo_de_item.descricao
    click_on "Update Grupo de item"

    assert_text "Grupo de item was successfully updated"
    click_on "Back"
  end

  test "should destroy Grupo de item" do
    visit grupo_de_item_url(@grupo_de_item)
    click_on "Destroy this grupo de item", match: :first

    assert_text "Grupo de item was successfully destroyed"
  end
end
