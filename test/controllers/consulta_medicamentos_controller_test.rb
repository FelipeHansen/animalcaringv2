require 'test_helper'

class ConsultaMedicamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulta_medicamento = consulta_medicamentos(:one)
  end

  test "should get index" do
    get consulta_medicamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_consulta_medicamento_url
    assert_response :success
  end

  test "should create consulta_medicamento" do
    assert_difference('ConsultaMedicamento.count') do
      post consulta_medicamentos_url, params: { consulta_medicamento: { consulta_id: @consulta_medicamento.consulta_id, medicamento_id: @consulta_medicamento.medicamento_id } }
    end

    assert_redirected_to consulta_medicamento_url(ConsultaMedicamento.last)
  end

  test "should show consulta_medicamento" do
    get consulta_medicamento_url(@consulta_medicamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulta_medicamento_url(@consulta_medicamento)
    assert_response :success
  end

  test "should update consulta_medicamento" do
    patch consulta_medicamento_url(@consulta_medicamento), params: { consulta_medicamento: { consulta_id: @consulta_medicamento.consulta_id, medicamento_id: @consulta_medicamento.medicamento_id } }
    assert_redirected_to consulta_medicamento_url(@consulta_medicamento)
  end

  test "should destroy consulta_medicamento" do
    assert_difference('ConsultaMedicamento.count', -1) do
      delete consulta_medicamento_url(@consulta_medicamento)
    end

    assert_redirected_to consulta_medicamentos_url
  end
end
