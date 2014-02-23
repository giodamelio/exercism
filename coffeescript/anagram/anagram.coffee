Anagram = class
    constructor: (word) ->
        # Convert the word to lowercase
        @word = word.toLowerCase()

    match: (values) ->
        return values
            # Convert all the test cases to lowercase
            .map (value) ->
                return value.toLowerCase()

            # Loop through the words and keep only the anagrams
            .filter (value) =>
                # Check to see that the words are anagrams and are not identical
                return @word.split("").sort().join() == value.split("").sort().join() and
                    (@word isnt value)

module.exports = Anagram
