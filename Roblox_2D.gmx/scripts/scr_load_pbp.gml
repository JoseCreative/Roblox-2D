global.placefile2 = argument0 //working_directory+"Places/"+global.placename


if file_exists(global.placefile2){
    with (obj_part) {instance_destroy()}
    var wrap = scr_load_json(global.placefile2)
    
    var list = wrap[? "ROOT"]
    
    
    maxparts=ds_list_size(list)
    part=argument1
    
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
    }
    }
    if object_exists(obj_player) {
        with obj_player {
            x=xstart
            y=xstart
            gravity=0
            vspeed=0
        }
    }
    else {
        instance_create(room_width/2,room_height/2,obj_player)
    }
    ds_map_destroy(wrap)
    show_debug_message("place loaded!")
}
