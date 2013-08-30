Keys = require "../src/keys"
testify = require("./testify")

testify "Key generation", (test) ->

  # Make sure randomKey returns a string ...
  test.assert.ok (Keys.randomKey 16).charAt

  # Make sure the numberToBytes function works ...
  x = Date.now()
  test.assert.equal (Keys.bytesToNumber Keys.numberToBytes x), x
  x = 17
  test.assert.equal (Keys.bytesToNumber Keys.numberToBytes x), x

  # Make sure numberToKey returns a string ...
  test.assert.ok (Keys.numberToKey Date.now()).charAt
  
  z = Keys.buffersToKey Keys.randomBytes(16), Keys.numberToBytes Date.now()

  # Make sure we can combine byte arrays
  test.assert.ok z.charAt

  # Double-check the encoding ...
  test.assert.equal z, (new Buffer z, 'base64').toString('base64')
  
  test.done()