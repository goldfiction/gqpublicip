gqpublicip=require '../index.js'
assert=require 'assert'

it "should be able to get public ip",(done)->
  gqpublicip.getPublicIp null,(e,ip)->
    console.log ip
    assert ip
    done e

it "should be able to get private ip",(done)->
  gqpublicip.getPrivateIp null,(e,ip)->
    console.log ip
    assert ip
    done e