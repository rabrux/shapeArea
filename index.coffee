#!/usr/bin/env coffee
methods = [
  require './loopShapeArea'
  require './recursiveShapeArea'
]

if process.argv.length < 3
  return throw 'usage: coffee shapeArea.coffee <n>'

n = Number process.argv.pop()

return throw '<n> must be largest than 0' if n < 1

return throw '<n> must be a number' if isNaN( n )

for m in methods
  console.log m.name
  hrstart = process.hrtime()
  for i in [1..n]
    console.log 'N:', i, 'r:', m i
  hrend = process.hrtime( hrstart )
  console.info "execution time: %ds %dms \n\t", hrend[ 0 ], hrend[ 1 ]/1000000

