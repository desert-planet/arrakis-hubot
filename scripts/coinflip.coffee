# Description:
#   Hubot will flip a fucking coin.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   coinflip - Flip a fucking coin
#
# Author:
#   sshirokov

module.exports = (robot) ->
  robot.respond /(coinflip)/i, (msg) ->
    result = msg.random ["Heads", "Tails"]
    insult = msg.random [
      "Dickweed",
      "Asshole",
      "Turdlord",
      "Shithead",
      "Douche",
      "Asshat",
      "Asshole",
      "Butt",
      "Fucker",
      "Motherfucker",
      "Also, no one likes you",
      "Fuckfart"
    ]

    if /geckomuerto/i.test(msg.message.user.name.trim())
      msg.send "Heads, #{insult}"
    else
      msg.send "#{result}, #{insult}"
