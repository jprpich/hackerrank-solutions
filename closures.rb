def lambda_message_printer(my_lambda)
   message = "Welcome to Lambda Message Printer"
   my_lambda.call
   puts "But in this function/method message is :: #{message}"
end

message = gets
my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)

#
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Block Message Printer
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Proc Message Printer
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Lambda Message Printer

# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Block Message Printer
# This message remembers message ::
# But in this function/method message is :: Welcome to Proc Message Printer
# This message remembers message ::
# But in this function/method message is :: Welcome to Lambda Message Printer
