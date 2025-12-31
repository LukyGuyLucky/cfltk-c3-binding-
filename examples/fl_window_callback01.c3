import fl;
import std::io;


fn void main()
{
    mem::@report_heap_allocs_in_scope(){
    Fl_Window* win=fl::window_new(100,100,320,200,"Windows callback01");
        Fl_Button* button=fl::button_new(100,100,100,50,"Hide Window");
        button.set_callback(&hide_cb,button);
    win.show();
    
    fl::run();
    };
   
}

fn void hide_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* win=(Fl_Window*)obj.window();

    fl::alert("Hey...The window will hide");
    fl::beep(1);
    win.hide();

    io::printn("We are here now.");
    io::print("Please enter something:");
    String input=io::treadline().trim()!!;
    io::printfn("You've entered:\n%s",input);
    io::printn("Now the window will show up again.");
    (void)io::treadline();

    win.show();

}