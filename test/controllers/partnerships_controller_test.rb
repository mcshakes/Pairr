require "test_helper"

class PartnershipsControllerTest < ActionController::TestCase

  def partnership
    @partnership ||= partnerships :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:partnerships)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Partnership.count') do
      post :create, partnership: { create: partnership.create, destroy: partnership.destroy, partner_id: partnership.partner_id, user_id: partnership.user_id }
    end

    assert_redirected_to partnership_path(assigns(:partnership))
  end

  def test_show
    get :show, id: partnership
    assert_response :success
  end

  def test_edit
    get :edit, id: partnership
    assert_response :success
  end

  def test_update
    put :update, id: partnership, partnership: { create: partnership.create, destroy: partnership.destroy, partner_id: partnership.partner_id, user_id: partnership.user_id }
    assert_redirected_to partnership_path(assigns(:partnership))
  end

  def test_destroy
    assert_difference('Partnership.count', -1) do
      delete :destroy, id: partnership
    end

    assert_redirected_to partnerships_path
  end
end
