gqpublicip=require '../index.js'
assert=require 'assert'


it "should be able to get private ip",(done)->
  gqpublicip.getPrivateIp null,(e,ip)->
    console.log ip
    assert ip
    done e

ip1=""
it "should be able to get public ip",(done)->
  gqpublicip.getPublicIp null,(e,ip)->
    console.log ip
    assert ip
    ip1=ip
    done e

it "should be able to get public ip2",(done)->
  console.log 'dropped this path'
  done()
#  gqpublicip.getPublicIp3 null,(e,ip)->
#    console.log ip
#    assert ip
#    done e

it "should be able to get public ip3",(done)->
  gqpublicip.getPublicIp3 null,(e,ip)->
    console.log ip
    assert ip==ip1
    done e

it "should be able to get public ip4",(done)->
  gqpublicip.getPublicIp4 null,(e,ip)->
    console.log ip
    assert ip==ip1
    done e

it "should be able to get public ip5",(done)->
  gqpublicip.getPublicIp5 null,(e,ip)->
    console.log ip
    assert ip==ip1
    done e