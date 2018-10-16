# code your #valid_move? method here
def input_to_index(move)
   index = move.to_i - 1
   index
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)
  
  #check for validation
  if valid_move?(board,index)
    puts 'valid move'
    move(board, index, token)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
      puts 'this is a valid move'
    return true
  else
   return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

#CHECK FOR EMPTY SPACE
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end