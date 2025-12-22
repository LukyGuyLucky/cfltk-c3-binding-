import fl;
import std::io;

fn void main()
{
    fl::set_scheme("plastic");
    Fl_Window* win=fl::window_new(100,100,320,200,null);
    Fl_Button* btn=fl::button_new(10,10,320-20,200-20,"push-me!");
    btn.handle((Cb)&cb,null);
    
    win.end();
    win.show();
    
    fl::run();
}
fn int cb(Fl_Widget* w,int e,void* data)
{
    String msg;
    String button;
    switch(e)
    {
        case Fl_Event.FL_EVENT_PUSH:
            msg="Button pused with mouse button";
            long btn=fl::event_button();
            io::printfn("%d",btn);
            switch(btn)
            {
                case 1: //left button
                    button="left";
                case 2:
                    button="middle";
                case 3:
                    button="right";
            }
            msg=string::tformat("%s %s at position %d,%d",msg,button,fl::eventX(),fl::eventY());
            io::printn(msg);
    }
    return 0;
}