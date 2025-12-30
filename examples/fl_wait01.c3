import fl;
import std::io;


fn void main()
{
    Fl_Window* win=fl::window_new(100,100,320,200,"fl_wait");
        Fl_Box* box=fl::box_new(20,40,300,100,"Hello World");
    win.show();

    while(fl::wait_for(0.5)) io::print(".");

}