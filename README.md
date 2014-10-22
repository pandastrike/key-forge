Key Forge
=========

A simple key generation library for use with Node. More or less a convenience wrapper around Node's Crypto and Buffer libraries.

## Install

    npm install key-forge

You may want to use the `-g` flag if you want to use the command line tool.

## Usage

Although Key Forge has a number of functions that you can use to fine-tune your key generation, mostly what you want is this:

    {randomKey} = require "key-forge"
    keySize = 16 # bytes
    key = randomKey keySize # defaults to hex encoding
    key = randomKey keySize, "hex"
    key = randomKey keySize, "base64"
    key = randomKey keySize, "base64url"


## Notes on Encodings

* "hex": direct output from Node.js Buffer.toString("hex")

* "base64": output from Buffer.toString("base64") with the "=" padding stripped.

* "base64url": Based on http://tools.ietf.org/html/rfc4648#section-5, with padding stripped.

## Command Line

You can also use Key Forge from the command line. The default is to generate a 16-byte key formatted as URL-safe base64.

```
$ key-forge
LqCwxFzRu9TN5_vDKLZ_lg
```

You can pass in size and format options. For example, to generate a 64-byte hex key:

```
$ key-forge 64 hex
c61c0e7c9dc40248190841186aae70e85008a95f950a087931cbd6dea19c86517f26a96e4ada90a5d0d74c2751b900faf76681b1fcb4edbbc55e7a8834da8bae
```
