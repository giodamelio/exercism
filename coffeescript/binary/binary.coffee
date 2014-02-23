class Binary
    constructor: (@binary) ->

    toDecimal: ->
        # Return 0 if the input is invalid
        if not /^[0-1]{1,45}$/.test(@binary)
            return 0

        # Split the numbers up
        numbers = @binary.split ""

        # Create our output
        output = 0

        # Loop through the numbers in reverse
        for number, index in numbers.reverse()
            output = output + (number * Math.pow(2, index))

        return Number(output)

module.exports = Binary
