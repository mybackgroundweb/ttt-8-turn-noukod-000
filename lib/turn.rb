def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end


def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false 
  end
end


def move(board, index, value="X")
  board[index]= value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value="X")
<<<<<<< HEAD
    display_board(board)
  else
    return turn(board)
=======
  else
    puts "Please enter 1-9:"
    user_input = gets.strip
    
    display_board
>>>>>>> d68ad86b9197810b216daff64be8485cb811e559
  end
end
