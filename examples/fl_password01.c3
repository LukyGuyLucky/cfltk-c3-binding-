import std::io;
import fl;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,200,105,"fl_password01");
    win.set_callback(&win_cb,null);
        var btnTxt @safeinfer=fl::button_new(20,10,160,35,"Test text");
        var btnPwd @safeinfer=fl::button_new(20,50,160,35,"Change Password");
        btnTxt.set_callback(&txt_cb,null);
        btnPwd.set_callback(&pwd_cn,null);
    win.resizable(win);
    win.show();
    fl::run();
}
fn void win_cb(Fl_Widget* obj,void* data)
{
    fl::message_title("WindowCB");
    int rep=fl::choice("Are you sure want to quit?","Canel","Quit","Dunno");
    if(rep==1)
    {
        fl::message("reponse on 1");
        ((Fl_Window*)obj.as_window()).hide();
    }else if(rep==2)
    {
        fl::message("response on 2");
        fl::message("Well,maybe you should know before we quit.");
    }
    else
    {
        fl::message("response on 0");
    }
    
}
fn void txt_cb(Fl_Widget* obj,void* data)
{
    fl::message_title("Rename Me");
    ZString input=fl::input("Input:",obj.label());
    update_input_text(obj,input);
}
fn void update_input_text(Fl_Widget* obj,ZString txt)
{
    if(!txt) return;

    obj.set_label(txt);
    obj.redraw();
}
fn void pwd_cn(Fl_Widget* obj,void* data)
{
    fl::message_title("Change password Callback");

    ZString input=fl::password("Input password:",obj.label());

    update_input_text(obj,input);

    
}