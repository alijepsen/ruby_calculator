# result - set first number and allow modifier and last number so result builds until clear
# make clear work
keep_calculating=true

@operator = ['+','-','*','/']

def greeting
  puts "Welcome to the Ruby Calculator!"
end

def first_number
  puts "What is your first number?"
  @first_num = gets.strip.to_f
end


def operation
  puts "What is your operator?"
  @op = gets.strip
  check_op
end


def last_number
  puts "What is your last number?"
  @last_num = gets.strip.to_f
end


def simple_calculation
  first_number
  operation
  check_op
  last_number
  puts "Calculating..."
  run_calculation
  operation
end

def check_op
  if @operator.include?(@op)

  else
    puts 'Invalid Operator. Try again using: +, *, - or /'
    simple_calculation
  end
end


def run_calculation
  case @op
  when '+'
    @total = @first_num + @last_num
  when '-'
    @total = @first_num - @last_num
  when '*'
    @total = @first_num * @last_num
  when '/'
    @total = @first_num / @last_num
  end
  puts "Your total is: #@total\n"
end

simple_calculation
keep_calculating


def keep_calculating
  @total = @first_num
  simple_calculation
end




















# PEDMAS use REGEX
# allow string input (convert .to_i) like "1 + 1" (not just first/last etc)

