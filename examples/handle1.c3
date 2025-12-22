import std::io;

extern fn Fl_Window* fl_window_new(int,int,int,int,char*) @extern("Fl_Window_new");
extern fn Fl_Box* fl_box_new(int,int,int,int,char*) @extern("Fl_Box_new");
extern fn Fl_Button* fl_button_new(int,int,int,int,char*,) @extern("Fl_Button_new");
extern fn void fl_window_end(Fl_Window*) @extern("Fl_Window_end");
extern fn void fl_window_show(Fl_Window*) @extern("Fl_Window_show");
extern fn void fl_button_handle(Fl_Button*,Custom_handler_callback,Fl_Box*) @extern("Fl_Button_handle");
extern fn int fl_run() @extern("Fl_run");
extern fn void fl_init_all() @extern("Fl_init_all");
extern fn void fl_register_images() @extern("Fl_register_images");
extern fn int fl_lock() @extern("Fl_lock");
extern fn void fl_button_set_callback(Fl_Button*,Custom_handler_callback,void*) @extern("Fl_Button_set_callback");

extern fn void fl_widget_set_label(Fl_Widget*,char*) @extern("Fl_Widget_set_label");

alias Custom_handler_callback=fn void(Fl_Widget*,int,void*);
alias Cb=fn void(Fl_Widget*,void*);

alias Fl_Window=void;
alias Fl_Widget=void;
alias Fl_Button=void;
alias Fl_Box=void;
fn void main()
{
    Fl_Window* w=fl_window_new(100,100,400,300,null);
    Fl_Box* f=fl_box_new(0,0,400,200,null);
    Fl_Button* b=fl_button_new(160,210,80,40,"Click me");
    fl_window_end(w);
    fl_window_show(w);

    fl_button_set_callback(b,&cb,null);
    fl_run();
}

fn void cb(Fl_Widget* w,int e,void* data)
{
    fl_widget_set_label(w,"Works");
}