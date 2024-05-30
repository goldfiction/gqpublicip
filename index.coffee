myIP=require 'my-ip'
http=require 'http'
exports.getPublicIp=(o,cb)->
  ip=''
  try
    process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"
    req=http.get 'http://myexternalip.com/raw',(res)->
      res.setEncoding 'utf8'
      res.on 'data',(chunk)->
        ip+=chunk
      res.on 'end',()->
        cb null,ip
      res.on 'error',(e)->
        cb null,'unknown'
      req.on 'error',(e)->
        cb null,'unknown'
      req.setTimeout 3000,()->
        req.destroy()
  catch e
    cb e
exports.getPrivateIp=(o,cb)->
  ip=null
  try
    ip=myIP(null,true)
    cb null,ip
  catch e
    cb e