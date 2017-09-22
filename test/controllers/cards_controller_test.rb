require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get cards_url
    assert_response :success
  end

  test "should get new" do
    get new_card_url
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post cards_url, params: { card: { address1: @card.address1, address2: @card.address2, city: @card.city, company: @card.company, email: @card.email, first_name: @card.first_name, last_name: @card.last_name, phone: @card.phone, state: @card.state, zip: @card.zip } }
    end

    assert_redirected_to card_url(Card.last)
  end

  test "should show card" do
    get card_url(@card)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_url(@card)
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { address1: @card.address1, address2: @card.address2, city: @card.city, company: @card.company, email: @card.email, first_name: @card.first_name, last_name: @card.last_name, phone: @card.phone, state: @card.state, zip: @card.zip } }
    assert_redirected_to card_url(@card)
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card)
    end

    assert_redirected_to cards_url
  end
end
