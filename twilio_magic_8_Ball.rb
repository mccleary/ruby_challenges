# Twilio Magic 8-Ball
# install twilio-ruby (gem install twilio-ruby)

# require your gems to make the script work
require "rubygems"
require "twilio-ruby"

# connect to the Twilio API using the account SID and auth token from your Twilio dashboard
account_sid = "your account sid"
auth_token = "your auth code"

# Initialize client object
@client = Twilio::REST::Client.new(account_sid, auth_token)



#  MAGIC 8-BALL SCRIPT
# Accept a question
puts "What is your Yes/No question?"
question = gets.chomp

# Create Magic 8-Ball list of answers
listOfAnswers = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]

# Generate random answer from listOfAnswers array
magic_answer = listOfAnswers[rand(0..19)]


# Creates and sends Twilio text
message = @client.messages.create(
  :from => "+your Twilio number",   # this comes from your twilio account under "Getting Started"
  :to => "+your own number",    
  :body => "You asked: #{question}. The Magic 8-Ball says: #{magic_answer}"
)
puts "The following message was texted to #{message.to}"
puts message.body

# run file in terminal, ask question, both "puts" above show in terminal as well as the question you asked and a randomly generated answer
