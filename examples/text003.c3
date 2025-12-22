import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,400,200,"003-text");
        Fl_Input* sInput=fl::input_new(50,50,330,20,"label");
        sInput.set_value("Now is the time for all good men...नमस्ते दुनिया!👋🌎!");
    win.end();

    win.show();

    fl::run();
}