if room=rm_avatar {
    if gms_info_isloggedin(){
        gms_ini_player_write("AVATAR","pl_hat",global.pl_hat)
        gms_ini_player_write("AVATAR","pl_suit",global.pl_suit)
        gms_ini_player_write("AVATAR","bc_torso",global.bc_torso)
        gms_ini_player_write("AVATAR","bc_head",global.bc_head)
        gms_ini_player_write("AVATAR","bc_armleft",global.bc_armleft)
        gms_ini_player_write("AVATAR","bc_armright",global.bc_armright)
        gms_ini_player_write("AVATAR","bc_legleft",global.bc_legleft)
        gms_ini_player_write("AVATAR","bc_legright",global.bc_legright)
    } else {
        ini_open("ofline_data.ini")
        ini_write_real("AVATAR","pl_hat",global.pl_hat)
        ini_write_real("AVATAR","pl_suit",global.pl_suit)
        ini_write_real("AVATAR","bc_torso",global.bc_torso)
        ini_write_real("AVATAR","bc_head",global.bc_head)
        ini_write_real("AVATAR","bc_armleft",global.bc_armleft)
        ini_write_real("AVATAR","bc_armright",global.bc_armright)
        ini_write_real("AVATAR","bc_legleft",global.bc_legleft)
        ini_write_real("AVATAR","bc_legright",global.bc_legright)
        ini_write_real("CURRENCY","studscur",global.studscur)
        ini_close()        
    }
}
