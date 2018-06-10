https = require('https')
@getPublicIp=(cb)->
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"
  req=https.get 'https://bot.whatismyipaddress.com', (res)->
    res.setEncoding('utf8')
    res.on 'data', (chunk)->
      cb null,chunk
    res.on 'error',(e)->
      cb null,"unknown"
  req.on 'error',(e)->
    cb null,"unknown"
  req.setTimeout 3000,()->
    req.destroy()
