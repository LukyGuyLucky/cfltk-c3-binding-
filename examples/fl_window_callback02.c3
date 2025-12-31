import fl;
import std::io;

Fl_Window* win1,win2;
fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        win1=fl::window_new(50,50,320,200,"Window #1");
        win1.begin();
            Fl_Button* button1=fl::button_new(100,100,100,50,"Go to Sub");
            button1.set_callback(&gotoSub_cb,button1);
        win1.end();
        win1.show();
        
        win2=fl::window_new(450,100,320,200,"Window #2");
        win2.begin();
            Fl_Button* button2=fl::button_new(100,100,100,50,"Go go Main");
                button2.set_callback(&gobackMain_cb,button2);
        win2.end();
        fl::run();
    };
   
}

fn void gotoSub_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* winMain=(Fl_Window*)obj.window();

    fl::alert("Hey...The window #1 will hide");
    fl::beep(1);
    winMain.hide();

    io::printn("We are here now.");
    io::print("Please enter something:");
    String input=io::treadline().trim()!!;
    io::printfn("You've entered:\n%s",input);
    io::printn("Now the window #2 will show up.\n");
    (void)io::treadline();

    win2.show();

}

fn void gobackMain_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* winSub=(Fl_Window*)obj.window();
    winSub.hide();//turn off this line to play around.
    win1.show();
}