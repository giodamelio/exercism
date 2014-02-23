class Words
    constructor: (text) ->
        # Normalize case
        text = text.toLowerCase()

        # Remove punctuation
        text = text.replace(/[\.,-\/#!$%\^&\*;:{}@=\-_`~()]/g,"").replace(/\s{2,}/g," ");

        # Define our object
        @count = {}

        # Loop through the words in our text
        for word in text.split(" ")
            # If a word already exists in our count, increment its value by 1,
            # otherwise set it to one
            if word of @count
                @count[word] = @count[word] + 1
            else
                @count[word] = 1

module.exports = Words
