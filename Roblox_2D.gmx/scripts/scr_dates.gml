//UNUSED FEATURE FOR THEMED MENUS LIKE HALLOWEEN OR HOLIDAYS
global.fest = 0
if current_month = 10 {
    global.fest = 1;
} else if current_month = 12 {
    global.fest = 2;
} else {
    global.fest = 0;
}
