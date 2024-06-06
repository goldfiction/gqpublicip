myIP = require 'my-ip'
http = require 'http'
needle = require 'needle'
request = require 'request'

exports.getPublicIp=(o,cb)->
  needle.get 'http://myexternalip.com/raw',(e,r)->
    if(!e && r.statusCode==200)
      cb null,r.body
    else
      cb null,'unknown'

exports.getPrivateIp=(o,cb)->
  try
    ip=myIP()
    cb null,ip
  catch e
    cb null,'unknown'

exports.getPublicIp2=(o,cb)->
  # not working, dropped
  html=""
  needle.get "https://whatismyipaddress.com",options
    .on 'readable',()->
      while data=this.read()
        html+=data.toString()
    .on 'done',(e)->
      if !e
        try
          ip='unknown'
          #console.log html
          #dom=new jsdom.JSDOM html
          #ip=dom.window.document.getElementById("ipv4")
          #console.log ip.innerHTML
          cb null,ip
        catch e2
          console.log e2.message
          cb null,'unknown'
      else
        console.log e.message
        cb null,'unknown'


exports.getPublicIp3=(o,cb)->
  requestData=
    followAllRedirects:true
    url:'http://api.ipfy.org'
  request requestData,(e,r,b)->
    if !e
      console.log b
      cb null,b
    else
      console.log e.message
      cb null,'unknown'

exports.getPublicIp4=(o,cb)->
  options=
    json:true
  needle.get 'https://api.ipregistry.co/?key=tryout',options,(e,r)->
    if(!e && r.statusCode==200)
      #console.log r.body.ip
      cb null,r.body.ip
    else
      #console.log e.message
      cb null,'unknown'

exports.getPublicIp5=(o,cb)->
  needle.get 'https://api.seeip.org/jsonip?',(e,r)->
    if(!e && r.statusCode==200)
      #console.log r.body.ip
      cb null,r.body.ip
    else
      cb null,'unknown'