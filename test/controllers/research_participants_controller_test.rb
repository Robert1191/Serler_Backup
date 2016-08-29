require 'test_helper'

class ResearchParticipantsControllerTest < ActionController::TestCase
  setup do
    @research_participant = research_participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_participant" do
    assert_difference('ResearchParticipant.count') do
      post :create, research_participant: { name: @research_participant.name }
    end

    assert_redirected_to research_participant_path(assigns(:research_participant))
  end

  test "should show research_participant" do
    get :show, id: @research_participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_participant
    assert_response :success
  end

  test "should update research_participant" do
    patch :update, id: @research_participant, research_participant: { name: @research_participant.name }
    assert_redirected_to research_participant_path(assigns(:research_participant))
  end

  test "should destroy research_participant" do
    assert_difference('ResearchParticipant.count', -1) do
      delete :destroy, id: @research_participant
    end

    assert_redirected_to research_participants_path
  end
end
