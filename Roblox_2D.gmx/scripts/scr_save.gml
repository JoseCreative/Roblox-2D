filename=working_directory+"/places/"+get_string("please write your place name","")+".rblx2d"
if filename!=".rblx2d"{
var root_list = ds_list_create()
with(obj_part){
    var map = ds_map_create()
    ds_list_add(root_list,map)
    ds_list_mark_as_map(root_list,ds_list_size(root_list)-1)
    
    var obj = object_get_name(object_index)
    ds_map_add(map,"obj",obj)
    ds_map_add(map,"y",y)
    ds_map_add(map,"x",x)
    ds_map_add(map,"color",color)
    ds_map_add(map,"SizeX",sizeX)
    ds_map_add(map,"SizeY",sizeY)
    ds_map_add(map,"Spawn",isSpawn)
    ds_map_add(map,"Text",text)
    ds_map_add(map,"Type",bricktype)
    ds_map_add(map,"Layer",layer)
    
}
var wrap = ds_map_create()
ds_map_add_list(wrap,"ROOT",root_list)

var stringy = json_encode(wrap)
scr_save_json(filename,stringy)

ds_map_destroy(wrap)
global.placefile = filename
show_debug_message("place saved")
} else {
    show_debug_message("Invalid Name!")
}
