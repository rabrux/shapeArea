recursiveShapeArea = ( n ) ->
  return n if n is 1

  a = n
  b = n - 1
  c = n - 2
  a + 2 * b + c + recursiveShapeArea n - 1

module.exports = recursiveShapeArea

