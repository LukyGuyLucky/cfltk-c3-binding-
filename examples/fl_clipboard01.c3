import fl;
import std::io;


Fl_Input* inpSource,inpTarget;
Fl_Button* btnCopy,btnPaste;
fn void main()
{
    Fl_Window* win=fl::window_new(100,100,620,78,"clipboard");
        inpSource=fl::input_new(80,10,320,24,"source:");
        inpTarget=fl::input_new(80,44,320,24,"target:");
        btnCopy=fl::button_new(410,10,160,24,"Copy to clipboard");
        btnPaste=fl::button_new(410,44,160,24,"paste from clipboard");

        btnCopy.set_callback(&copy_cb,inpSource);
        btnPaste.set_callback(&paste_cb,null);
        btnPaste.deactivate();
        inpTarget.deactivate();

    win.show();

    fl::run();

}
fn void copy_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* win=obj.window();
    io::printfn("window handle: %x",fl::handle(0,win));
    
    Fl_Input* input=(Fl_Input*)data;
    io::printfn("input=%x",fl::handle(0,input));
    ZString buffer=input.value();
    usz buflen=buffer.len();
    io::printfn("buflen=%d",buflen);
    if(buflen==0)
    {
        btnPaste.deactivate();
        return;
    }

    fl::copy(buffer,1024,1);
    inpTarget.copy(1);
    btnPaste.activate();

}
fn void paste_cb(Fl_Widget* obj,void* data)
{
    inpTarget.set_value("");
    fl::paste_text((Fl_Widget*)inpTarget,1);
}