import fl;
import std::io;


fn void main()
{
    Fl_Window* win=fl::window_new(100,100,320,200,"fl_input01");
        Fl_Input* inp1=fl::input_new(120,5,190,20,"Fl_input:");
        Fl_Int_Input* inp2=fl::int_input_new(120,30,190,20,"fl_int_input");
        Fl_Float_Input* inp3=fl::float_input_new(120,55,190,20,"fl_float_input");
        Fl_Multiline_Input* inp4=fl::multiline_input_new(120,80,190,100,"fl_multiline_input");

        inp4.set_when(Fl_CallbackTrigger.FL_CALLBACKTRIGGER_CHANGED);
        inp1.set_callback(&input_cb,inp1);
        inp2.set_callback(&input_cb,inp2);
        inp3.set_callback(&input_cb,inp3);
        inp4.set_callback(&input_cb,inp4);

    win.show();

    fl::run();
}

fn void input_cb(Fl_Widget* obj,void* data)
{
    Fl_Input* input=(Fl_Input*)obj;
    io::printfn("InputCB: %s",input.value());
}