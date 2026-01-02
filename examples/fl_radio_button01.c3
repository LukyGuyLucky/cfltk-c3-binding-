import std::io;
import fl;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,350,50,"Radio Button01");
    win.begin();
        var btn1 @safeinfer=fl::radio_round_button_new(10,10,90,30,"Radio A");
        var btn2 @safeinfer=fl::radio_round_button_new(110,10,90,30,"Radio B");
        var btn3 @safeinfer=fl::radio_round_button_new(210,10,90,30,"Radio C");
        btn1.set_callback(&click_cb,null);
        btn2.set_callback(&click_cb,null);
        btn3.set_callback(&click_cb,null);
    win.end();
    win.show();

    fl::run();
}
fn void click_cb(Fl_Widget* obj,void* data)
{
    io::printfn("ButtonCB: %s",obj.label());
}