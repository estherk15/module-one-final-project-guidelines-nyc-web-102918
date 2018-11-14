require_relative '../config/environment'
require_all 'lib'

menu
user_response = gets.chomp.downcase
parse_user_input(user_response)
