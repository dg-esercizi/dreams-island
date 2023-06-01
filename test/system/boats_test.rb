require "application_system_test_case"

class BoatsTest < ApplicationSystemTestCase
  setup do
    @boat = boats(:one)
  end

  test "visiting the index" do
    visit boats_url
    assert_selector "h1", text: "Boats"
  end

  test "should create boat" do
    visit boats_url
    click_on "New boat"

    fill_in "Anno", with: @boat.anno
    fill_in "Descrizione", with: @boat.descrizione
    fill_in "Lunghezza", with: @boat.lunghezza
    fill_in "Nome", with: @boat.nome
    fill_in "Porto", with: @boat.porto
    fill_in "Prezzo", with: @boat.prezzo
    fill_in "Tipo", with: @boat.tipo
    click_on "Create Boat"

    assert_text "Boat was successfully created"
    click_on "Back"
  end

  test "should update Boat" do
    visit boat_url(@boat)
    click_on "Edit this boat", match: :first

    fill_in "Anno", with: @boat.anno
    fill_in "Descrizione", with: @boat.descrizione
    fill_in "Lunghezza", with: @boat.lunghezza
    fill_in "Nome", with: @boat.nome
    fill_in "Porto", with: @boat.porto
    fill_in "Prezzo", with: @boat.prezzo
    fill_in "Tipo", with: @boat.tipo
    click_on "Update Boat"

    assert_text "Boat was successfully updated"
    click_on "Back"
  end

  test "should destroy Boat" do
    visit boat_url(@boat)
    click_on "Destroy this boat", match: :first

    assert_text "Boat was successfully destroyed"
  end
end
