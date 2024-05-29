myIP=require 'my-ip'
module.exports=(o,cb)->
  ip=null
  try
    ip=myIP()
    cb null,ip
  catch e
    cb e
