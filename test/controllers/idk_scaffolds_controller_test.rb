require 'test_helper'

class IdkScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idk_scaffold = idk_scaffolds(:one)
  end

  test "should get index" do
    get idk_scaffolds_url
    assert_response :success
  end

  test "should get new" do
    get new_idk_scaffold_url
    assert_response :success
  end

  test "should create idk_scaffold" do
    assert_difference('IdkScaffold.count') do
      post idk_scaffolds_url, params: { idk_scaffold: { avatar: @idk_scaffold.avatar, user_id: @idk_scaffold.user_id } }
    end

    assert_redirected_to idk_scaffold_url(IdkScaffold.last)
  end

  test "should show idk_scaffold" do
    get idk_scaffold_url(@idk_scaffold)
    assert_response :success
  end

  test "should get edit" do
    get edit_idk_scaffold_url(@idk_scaffold)
    assert_response :success
  end

  test "should update idk_scaffold" do
    patch idk_scaffold_url(@idk_scaffold), params: { idk_scaffold: { avatar: @idk_scaffold.avatar, user_id: @idk_scaffold.user_id } }
    assert_redirected_to idk_scaffold_url(@idk_scaffold)
  end

  test "should destroy idk_scaffold" do
    assert_difference('IdkScaffold.count', -1) do
      delete idk_scaffold_url(@idk_scaffold)
    end

    assert_redirected_to idk_scaffolds_url
  end
end
