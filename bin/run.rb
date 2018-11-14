require_relative '../config/environment'
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'

menu
user_response = gets.chomp.downcase
parse_user_input(user_response)
