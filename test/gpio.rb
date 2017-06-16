# Plato::GPIO class

def puts(v); end

assert('GPIO', 'class') do
  Plato::GPIO.class == Class
end

assert('GPIO', 'enzi D0-D13') do
  assert_equal(Plato::GPIO::D0, 0)
  assert_equal(Plato::GPIO::D1, 1)
  assert_equal(Plato::GPIO::D2, 2)
  assert_equal(Plato::GPIO::D3, 3)
  assert_equal(Plato::GPIO::D4, 4)
  assert_equal(Plato::GPIO::D5, 5)
  assert_equal(Plato::GPIO::D6, 6)
  assert_equal(Plato::GPIO::D7, 7)
  assert_equal(Plato::GPIO::D8, 8)
  assert_equal(Plato::GPIO::D9, 9)
  assert_equal(Plato::GPIO::D10, 10)
  assert_equal(Plato::GPIO::D11, 11)
  assert_equal(Plato::GPIO::D12, 12)
  assert_equal(Plato::GPIO::D13, 13)
end

assert('GPIO', 'enzi A0-A5') do
  assert_equal(Plato::GPIO::A0, 14)
  assert_equal(Plato::GPIO::A1, 15)
  assert_equal(Plato::GPIO::A2, 16)
  assert_equal(Plato::GPIO::A3, 17)
  assert_equal(Plato::GPIO::A4, 18)
  assert_equal(Plato::GPIO::A5, 19)
end

assert('GPIO', 'White-Tiger STx/BTx') do
  assert_equal(Plato::GPIO::ST0, Plato::GPIO::A0)
  assert_equal(Plato::GPIO::ST1, Plato::GPIO::A1)
  assert_equal(Plato::GPIO::BTA, Plato::GPIO::A3)
  assert_equal(Plato::GPIO::BTB, Plato::GPIO::A2)
end

assert('GPIO', 'read') do
  Plato::GPIO.new(Plato::GPIO::D0).read
end

assert('GPIO', 'write') do
  Plato::GPIO.new(Plato::GPIO::D0).write(0)
end

assert('GPIO', 'write - argument error') do
  assert_raise(ArgumentError) {Plato::GPIO.new(Plato::GPIO::D0).write}
  assert_raise(ArgumentError) {Plato::GPIO.new(Plato::GPIO::D0).write(1, 2)}
end
