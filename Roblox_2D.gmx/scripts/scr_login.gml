switch(argument0)
{
    case e_ok:
        show_message("Login OK!");
        room_goto(rm_userinit)
        break;
    case e_already_logged_in:
        show_message("You're already logged in!");
        room_goto(rm_login_opt)
        break;
    default:
        show_message(gms_login_error_tostring(argument0));
        room_goto(rm_login_opt)
        break;
}
