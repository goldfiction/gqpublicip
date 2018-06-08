https = require('https')
@getPublicIp=(cb)->
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"
  https.get 'https://bot.whatismyipaddress.com', (res)->
    res.setEncoding('utf8')
    res.on 'data', (chunk)->
      cb(null,chunk)
