#
# Plato::GPIO class for simulator
#
module Plato
  class GPIO
    # define enzi's digital pins (D0..D13)
    for pn in 0..13
      const_set("D#{pn}".to_sym, pn)
    end

    # define enzi's analog pins (A0..A5)
    for pn in 0..5
      const_set("A#{pn}".to_sym, pn + 14)
    end

    # define White-Tiger's pins
    ST0 = A0
    ST1 = A1
    BTB = A2
    BTA = A3

    def read
      puts "GPIO.read(#{@pin})"
      0
    end

    def write(data)
      puts "GPIO.write(#{@pin}, #{data})"
      data
    end
  end
end
