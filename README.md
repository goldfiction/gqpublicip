```
gqpublicip

it "should be able to get public ip",(done)->
  gqpublicip.getPublicIp (e,ip)->
    console.log ip
    assert ip
    done(e)

retrieve: your public ip

By: Grant Li
License: MIT

```