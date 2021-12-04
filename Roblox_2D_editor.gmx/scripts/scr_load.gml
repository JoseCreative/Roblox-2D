global.placefile2 = working_directory+"Places/"+get_string("Write the place's name to load","")+".rblx2d"

if file_exists(global.placefile2) {
    with (obj_part) {instance_destroy()}
    var wrap = scr_load_json(global.placefile2)
    
    var list = wrap[? "ROOT"]
    
    for(var i =0;i<ds_list_size(list);i++){
        var map = list[| i]
        
        var obj = map[? "obj"]
        with (instance_create(0,0,asset_get_index(obj))){
            x=map[? "x"]
            y=map[? "y"]
            color=map[? "color"]
            sizeX=map[? "SizeX"]
            sizeY=map[? "SizeY"]
            isSpawn=map[? "Spawn"]
            text=map[? "Text"]
            bricktype=map[? "Type"]
            layer=map[? "Layer"]
            code=map[? "Code"]
            codetype=map[? "CodeType"]
        }
    }
    ds_map_destroy(wrap)
    show_debug_message("place loaded!  "+global.placefile2)
} else {
    show_message("The place could not be found or is invalid.")
}
