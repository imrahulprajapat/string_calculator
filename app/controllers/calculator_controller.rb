class CalculatorController < ApplicationController
  def index;end

  def calculate
    input = params[:numbers].to_s.gsub("\\n", "\n")
    result = CalculateString.new.add(input)
    render partial: "calculator/result", locals: { result: result }
  end
end
