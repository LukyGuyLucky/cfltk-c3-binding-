import fl;
import std::io;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        main_window().show();
        fl::run();
    };
}
fn Fl_Window* main_window()
{
    Fl_Window* win=fl::window_new(100,100,320,40,"fl_check_button_01");
        Fl_Check_Button* cb1=fl::check_button_new(10,10,90,30,"Button 1");
        Fl_Check_Button* cb2=fl::check_button_new(110,10,90,30,"Button 2");
        Fl_Check_Button* cb3=fl::check_button_new(210,10,90,30,"Button 3");

        cb1.set_callback(&check_cb,null);
        cb2.set_callback(&check_cb,null);
        cb3.set_callback(&check_cb,null);

    return win;
}
fn void check_cb(Fl_Widget* obj,void* data)
{
    Fl_Check_Button* btn=(Fl_Check_Button*)obj;
    io::printfn("%s[%d]",btn.label(),btn.value());
}