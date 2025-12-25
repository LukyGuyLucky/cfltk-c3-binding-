//a test to dynamic generating external fl function prototypes

module test_generic01;

extern fn int fl_run() @cname("Fl_run");
struct Fl_Window{void* data;}
struct Fl_Double_Window{void* data;}
struct Fl_Box{void* data;}

alias window_new=define_widget::new{Fl_Window};
alias double_windwo_new=define_widget::new{Fl_Double_Window};
alias box_new=define_widget::new{Fl_Box};

alias show=define_widget::show{Fl_Window};

fn void main()
{
    Fl_Window* win=window_new(100,100,640,480,"Generic windows");
        Fl_Box* box=box_new(0,0,100,24,"Button 1");
    
    show(win);

    fl_run();
}


module test_generic01::define_widget{Type};

extern fn Type* new(CInt x,CInt y,CInt width,CInt height,ZString title) @cname(Type.nameof+++"_new");
extern fn void show(Type*) @cname(Type.nameof+++"_show");