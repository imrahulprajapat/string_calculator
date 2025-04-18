class CalculatorController < ApplicationController
  def index;end

  def calculate
    input = params[:numbers]
    result = CalculateString.new.add(input)
    render partial: "calculator/result", locals: { result: result }
  end
end
