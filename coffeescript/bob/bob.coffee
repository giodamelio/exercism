class Bob
    hey: (text) ->
        # Check to see if you are being silent
        if text.trim() == ""
            return "Fine. Be that way!"

        # Check if you are shouting
        else if text == text.toUpperCase()
            return "Woah, chill out!"

        # Check if you are asking a question
        else if text.split("")[text.length - 1] == "?"
            return "Sure."

        # Check if you are talking forcefully
        else if text.split("")[text.length - 1] == "!"
            return "Whatever."
        
        # If all else fails, just say whatever
        return "Whatever."

module.exports = Bob
