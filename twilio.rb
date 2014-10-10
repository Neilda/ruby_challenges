require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

account_sid = "AC6da98ec326d9f82eda1a86a61d37c93d"
auth_token = "1d2ea530428cde35b6a85e9e1746dd29"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#Send question to text
message = @client.account.sms.messages.create(
  :from => "+14159385181", 
  :to =>"+15104175249", 
  :body => "What would you like to ask the Magic 8 Ball?")

#puts message.to

 question = gets.chomp

possible_answers = ["It is certain", "It is decidedly so", "Without a doubt",
                    "Yes definitely", "You may rely on it", "As I see it, yes",
                    "Most likely", "Outlook good", "Yes", "Signs point to yes",
                    "Reply hazy try again", "Ask again later", "Better not tell you now",
                    "Cannot predict now", "Concentrate and ask again", "Don't count on it",
                    "My reply is no", "My sources say no", "Outlook not so good",
                    "Very doubtful"
                   ]
magic_eight_answer = possible_answers[rand(possible_answers.length)]

puts message.to

#Send magic 8 response
#message = @client.account.sms.messages.create(
#  :from => "+14159385181", 
 # :to =>"+15104175249", 
 # :body => magic_eight_answer)

# puts message.to

# Grab question
#print "What would you like to ask the Magic 8 Ball? "
#question = gets.chomp 

# Generate answer
#magic_eight_answer = possible_answers[rand(possible_answers.length)]


# Put answer to console
# puts The magic 8 ball answers" + magic_eight_answer + "to" + question
