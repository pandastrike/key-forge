Key Forge
=========

A simple key generation library for use with Node. More or less a convenience wrapper around Node's Crypto and Buffer libraries.

## Install

    npm install key-forge
    
## Usage

Although Key Forge has a number of functions that you can use to fine-tune your key generation, mostly what you want is this:

    {randomKey} = require "key-forge"
    keySize = 16 # bytes
    aRandomKey = randomKey keySize
