import fl;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
    Fl_Window* win=fl::window_new(100,100,320,200,"Windows callback01");
        win.set_callback(&win_cb,null);
    win.show();
    
    fl::run();
    };
}

fn void win_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* win=(Fl_Window*)obj.window();

    fl::alert("Hey...");
    fl::beep(1);

    fl::delete_widget(obj);
}