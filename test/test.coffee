gqpublicip=require '../index.js'
assert=require 'assert'

it "should be able to get public ip",(done)->
  gqpublicip.getPublicIp (e,ip)->
    console.log ip
    assert ip
    done(e)