import fl;
import std::io;

const SIZE=200;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        Fl_Window* win=fl::window_new(100,100,SIZE,SIZE,"Clock");
            Fl_Clock* clock=fl::clock_new(0,0,SIZE,SIZE,null);
        win.show();
        
        fl::run();
    };
}
