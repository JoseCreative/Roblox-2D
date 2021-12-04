filename = argument0
strig = argument1

var buff = buffer_create(string_byte_length(strig)+1,buffer_fixed,1)
buffer_write(buff,buffer_string,strig)
buffer_save(buff,filename)
buffer_delete(buff)
