# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # Middle row
  [6, 7, 8], # Bottom row
  [0, 3, 6], # Left vertical
  [1, 4, 7], # Middle vertical
  [2, 5, 8], # Right vertical
  [0, 4, 8], # Upper left diagonal
  [2, 4, 6] # Upper right diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
     win_index1 = win_combo[0]
     win_index2 = win_combo[1]
     win_index3 = win_combo[2]

     if (board[win_index1] == "X" && board[win_index2] == "X" && board[win_index3] == "X")
       return win_combo

     end
   end


end
