import fl;
import std::io;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,350,50,"fl_radio_round_button02");
        win.begin();
            button(10,"Radio A");
            button(110,"Radio B");
            button(210,"Radio C");
        win.end();
    win.show();

    fl::run();
}

macro button(int position,ZString label)
{
    Fl_Radio_Round_Button* btn=fl::radio_round_button_new(position,10,90,30,label);
    btn.set_callback(&button_cb,null);
}
fn void button_cb(Fl_Widget* obj,void* data)
{
    io::printfn("ButtonCB: %s",obj.label());
}