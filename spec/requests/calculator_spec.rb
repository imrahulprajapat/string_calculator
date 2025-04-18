require 'rails_helper'

RSpec.describe CalculatorController, type: :request do
  it "returns result in response body" do
    allow_any_instance_of(CalculateString).to receive(:add).and_return(9)

    post calculate_path, params: { numbers: "4,5" }

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("<strong>9</strong>")
  end
end
