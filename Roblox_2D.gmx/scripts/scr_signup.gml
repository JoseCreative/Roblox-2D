switch(argument0)
{
    case e_ok:
        show_message("Account created!");
        room_goto(rm_login_opt)
        break;
    default:
        show_message(gms_login_error_tostring(argument0));
        room_goto(rm_login_opt)
        break;
}
