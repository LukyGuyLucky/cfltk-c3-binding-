import fl;
import std::math;
import libc;


const GAB=10;
fn void main()
{
    var win @safeinfer=fl::window_new(100,100,400,44,"fl_timesharing01");
        int bw=win.width()-3*GAB;
        bw/=2;

        int bh=win.height()-2*GAB;

        var btnStuff @safeinfer=fl::button_new(GAB*1+bw*0,GAB,bw,bh,"stuff");
        var btnOther @safeinfer=fl::button_new(GAB*2+bw*1,GAB,bw,bh,"other");
        btnStuff.set_callback(&stuff_cb,null);
        btnOther.set_callback(&other_cb,null);
        win.set_callback(&exit_cb,btnStuff);
    win.show();

    fl::run();
}

fn void exit_cb(Fl_Widget* obj,void* data)
{
    Fl_Button* btn=(Fl_Button*)data;
    Fl_Window* win=(Fl_Window*)obj;

    if(btn.active()==0)
    {
        fl::message_title("window close event");
        fl::alert("Note:stuff callback are running!");
    }
    else
    {
        win.hide();
    }
}
fn void other_cb(Fl_Widget* obj,void* data)
{
    static long nTimes=0;
    nTimes++;

    ZString label=string::tformat("OtherCB called %d !",nTimes).zstr_tcopy();

    Fl_Window* win=(Fl_Window*)(obj.window());
    win.set_label(label);
}
fn void doSomething(double v)
{
    while(v)
    {
        v*=0.5;
    }
}
fn void stuff_cb(Fl_Widget* obj,void* data)
{
    Fl_Button* btn=(Fl_Button*)obj;
    btn.deactivate();
    Fl_Window* win=(Fl_Window*)(obj.window());
    int w=win.width();
    int h=win.height();

    win.resize(win.x(),win.y(),w,h+10+32);

    win.begin();
        var prg @safeinfer=fl::progress_new(10,h,w-20,32,null);
    win.end();

    int nLoops=500000;
    long oldValue,newValue;
    long onePercent=nLoops/100;
    for(int i=0;i<nLoops;i++)
    {
        double s=math::sin(libc::rand());
        doSomething(s);
        newValue=i/onePercent;

        if(newValue!=oldValue)
        {
            ZString strValue=string::tformat("find sense of life %d%% done.",newValue).zstr_tcopy();
            prg.set_label(strValue);
            prg.set_selection_color(fl::rgb_color((char)(200-newValue*2),(char)newValue*2,(char)0));
            prg.set_label_color(Fl_Color.FL_COLOR_BLUE);
            prg.set_value(newValue);
            oldValue=newValue;
        }
        if(i%500==0) fl::wait_for(0.001);
    }
    prg.delete();
    //fl::do_widget_deletion();
    win.resize(win.x(),win.y(),w,h);

    btn.activate();
}