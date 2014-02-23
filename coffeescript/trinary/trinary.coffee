class Trinary
    constructor: (@trinary) ->

    toDecimal: ->
        # Return 0 if the input is invalid
        if not /^[0-2]{1,45}$/.test(@trinary)
            return 0

        # Split the numbers up
        numbers = @trinary.split ""

        # Create our output
        output = 0

        # Loop through the numbers in reverse
        for number, index in numbers.reverse()
            output = output + (number * Math.pow(3, index))

        return Number(output)

module.exports = Trinary
