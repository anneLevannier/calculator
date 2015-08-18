class CalculatorController < ApplicationController
  
def show
  @@calc = Calc.new()
  @result = @@calc.result
end

def clear
  @@calc.clear
  @result = @@calc.result
  render "calculator/show"
end

def operator
  @@calc.operator(params[:op])
  @result = @@calc.result
  render "calculator/show"
end

def number
  @@calc.number(params[:num])
  @result = @@calc.result
  render "calculator/show"
end

def eval
  @@calc.eval
  @result = @@calc.result
  render "calculator/show"
end

end
