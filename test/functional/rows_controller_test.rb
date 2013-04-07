require 'test_helper'

class RowsControllerTest < ActionController::TestCase
  setup do
    @row = rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create row" do
    assert_difference('Row.count') do
      post :create, row: { bringer_name_res: @row.bringer_name_res, certificate: @row.certificate, child_name: @row.child_name, comments: @row.comments, date: @row.date, display_age: @row.display_age, display_nation: @row.display_nation, document_id: @row.document_id, marks: @row.marks, outcome: @row.outcome, page: @row.page, parents_name_res: @row.parents_name_res, purpose_brought: @row.purpose_brought, residing_with_name: @row.residing_with_name, school: @row.school, search_age: @row.search_age, search_nation: @row.search_nation, sex: @row.sex, signatures: @row.signatures }
    end

    assert_redirected_to row_path(assigns(:row))
  end

  test "should show row" do
    get :show, id: @row
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @row
    assert_response :success
  end

  test "should update row" do
    put :update, id: @row, row: { bringer_name_res: @row.bringer_name_res, certificate: @row.certificate, child_name: @row.child_name, comments: @row.comments, date: @row.date, display_age: @row.display_age, display_nation: @row.display_nation, document_id: @row.document_id, marks: @row.marks, outcome: @row.outcome, page: @row.page, parents_name_res: @row.parents_name_res, purpose_brought: @row.purpose_brought, residing_with_name: @row.residing_with_name, school: @row.school, search_age: @row.search_age, search_nation: @row.search_nation, sex: @row.sex, signatures: @row.signatures }
    assert_redirected_to row_path(assigns(:row))
  end

  test "should destroy row" do
    assert_difference('Row.count', -1) do
      delete :destroy, id: @row
    end

    assert_redirected_to rows_path
  end
end
