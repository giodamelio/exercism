class Hexadecimal
    constructor: (hexadecimal) ->
        @hexadecimal = hexadecimal.toLowerCase()

    toDecimal: ->
        # Return 0 if the input is invalid
        if not /^[0-9a-f]{1,45}$/.test(@hexadecimal)
            return 0

        # Split the numbers up
        numbers = @hexadecimal.split ""

        # Create our output
        output = 0

        # Lookup table for our conversion
        lookupTable = {0: 0, 1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, "a": 10, "b": 11, "c": 12, "d": 13, "e": 14, "f": 15}

        # Loop through the numbers in reverse
        for number, index in numbers.reverse()
            output = output + (lookupTable[number] * Math.pow(16, index))

        return Number(output)

module.exports = Hexadecimal
