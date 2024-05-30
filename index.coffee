myIP=require 'my-ip'
exports.getPublicIp=(o,cb)->
  ip=null
  try
    ip=myIP()
    cb null,ip
  catch e
    cb e
exports.getPrivateIp=(o,cb)->
  ip=null
  try
    ip=myIP(null,true)
    cb null,ip
  catch e
    cb e