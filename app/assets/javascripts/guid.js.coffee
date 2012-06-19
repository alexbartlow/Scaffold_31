window.guid = ->
  'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace /[xy]/g, (c) ->
    r = Math.random()*16|0
    v = null
    if c == 'x'
      v = r
    else
      v = r&0x3|0x8
    v.toString(16)
