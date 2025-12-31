import fl;
import std::io;

Fl_Window* mainWindow;
fn void main()
{
    mem::@report_heap_allocs_in_scope()
    {
        mainWindow=create_main_window(50,50,"Window #1","Go to Sub",&gotoSub_cb);
        mainWindow.show();

        fl::run();
    };
   
}
fn Fl_Window* create_main_window(int x,int y,ZString title,ZString btnLabel,CallbackVoid callback)
{
    Fl_Window* win=fl::window_new(x,y,320,200,title);
    win.begin();
        Fl_Button* button=fl::button_new(100,100,100,50,btnLabel);
        button.set_callback(callback,button);
    win.end();

    return win;
}
fn void gotoSub_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* winMain=(Fl_Window*)obj.window();
    winMain.hide();

    create_main_window(450,50,"Window #2","Go back Main",&gobackMain_cb).show();
}

fn void gobackMain_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* winSub=(Fl_Window*)obj.window();
    winSub.hide();

    mainWindow.show();
    //turn off below comments to play around
    //create_main_window(50,50,"Window #1","Go to Sub",&gotoSub_cb).show();
}