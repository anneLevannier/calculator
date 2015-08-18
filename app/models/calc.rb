class Calc

  attr_accessor :result
  
  def initialize
    @operator = ''
    @firstNumber = ""
    @secondNumber = ""
    @flag_op = false
    @result = "Start calculating..."
  end
  
  def clear
    @firstNumber = ""
    @secondNumber = ""
    @flag_op = false
    @result = "0"
  end
  
  def operator(op)
    if @flag_op
      eval
      operator(op)
    else
      @flag_op = true
      @result = op
      @operator = op
    end
  end
  
  def number(num)
    if !@flag_op
      @firstNumber += num
      @result = @firstNumber
    else
      @secondNumber += num
      @result = @secondNumber
    end
  end
  
  def eval
    case @operator
      when '+'
        @result = @firstNumber.to_i + @secondNumber.to_i
      when '-'
         @result = @firstNumber.to_i - @secondNumber.to_i
      when 'x'
         @result = @firstNumber.to_i * @secondNumber.to_i
      when '÷'
         @result = @firstNumber.to_i / @secondNumber.to_i
      else
         @result = ""
    end
    @firstNumber = @result.to_s
    @secondNumber = ""
    @flag_op = false
  end
  
end