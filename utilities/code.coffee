crypto = require 'crypto'


module.exports =
	encode: (data)->
		# md5 codification
		hash = crypto.createHash('md5').update(data).digest('hex')
		hash

	compare: (string, hashCompare)->
    hash = crypto.createHash('md5').update(string).digest('hex')
    if hash is hashCompare
      true
    else
      false