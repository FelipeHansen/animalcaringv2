require 'test_helper'

class ConsultasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulta = consultas(:one)
  end

  test "should get index" do
    get consultas_url
    assert_response :success
  end

  test "should get new" do
    get new_consulta_url
    assert_response :success
  end

  test "should create consulta" do
    assert_difference('Consulta.count') do
      post consultas_url, params: { consulta: { animal_id: @consulta.animal_id, data_consulta: @consulta.data_consulta, descricao: @consulta.descricao, veterinario_id: @consulta.veterinario_id } }
    end

    assert_redirected_to consulta_url(Consulta.last)
  end

  test "should show consulta" do
    get consulta_url(@consulta)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulta_url(@consulta)
    assert_response :success
  end

  test "should update consulta" do
    patch consulta_url(@consulta), params: { consulta: { animal_id: @consulta.animal_id, data_consulta: @consulta.data_consulta, descricao: @consulta.descricao, veterinario_id: @consulta.veterinario_id } }
    assert_redirected_to consulta_url(@consulta)
  end

  test "should destroy consulta" do
    assert_difference('Consulta.count', -1) do
      delete consulta_url(@consulta)
    end

    assert_redirected_to consultas_url
  end
end
