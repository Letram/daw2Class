require 'test_helper'

class OrigamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @origame = origames(:one)
  end

  test "should get index" do
    get origames_url
    assert_response :success
  end

  test "should get new" do
    get new_origame_url
    assert_response :success
  end

  test "should create origame" do
    assert_difference('Origame.count') do
      post origames_url, params: { origame: { categoria: @origame.categoria, dificultad: @origame.dificultad, imagen: @origame.imagen, nane: @origame.nane } }
    end

    assert_redirected_to origame_url(Origame.last)
  end

  test "should show origame" do
    get origame_url(@origame)
    assert_response :success
  end

  test "should get edit" do
    get edit_origame_url(@origame)
    assert_response :success
  end

  test "should update origame" do
    patch origame_url(@origame), params: { origame: { categoria: @origame.categoria, dificultad: @origame.dificultad, imagen: @origame.imagen, nane: @origame.nane } }
    assert_redirected_to origame_url(@origame)
  end

  test "should destroy origame" do
    assert_difference('Origame.count', -1) do
      delete origame_url(@origame)
    end

    assert_redirected_to origames_url
  end
end
