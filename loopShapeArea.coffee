loopShapeArea = ( n ) ->
  return n if n is 1
  area = 0
  for i in [ 1..n ]
    a = i
    b = i - 1
    c = i - 2
    area += a + 2 * b + c
  area

module.exports = loopShapeArea

