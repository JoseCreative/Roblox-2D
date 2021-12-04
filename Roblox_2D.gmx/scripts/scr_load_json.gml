var filename = argument0
var buff = buffer_load(filename)
var strig = buffer_read(buff,buffer_string)
buffer_delete(buff)


var json = json_decode(strig)
return json

