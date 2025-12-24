import fl;
import std::io;

const SIZE=200;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        Fl_Window* win=fl::window_new(100,100,312,112,"fl_counter_03");
            Fl_Counter* cnt1=fl::counter_new(10,10,192,24,"counter");
                cnt1.set_bounds(2.0,18.0);
                cnt1.set_value(6.6);
                cnt1.set_step(3.0,2);
                cnt1.set_callback(&counter_cb,cnt1);

            win.resizable(win);
   
        win.show();
        
        fl::run();
    };
}
fn void counter_cb(Fl_Widget* obj,void* data)
{
    Fl_Counter* cnt=(Fl_Counter*)obj;
    io::printfn("typeof cnt is %s",$typeof(cnt).typeid.nameof);
    io::printfn("typeof obj.user_data() is %s",$typeof(obj.user_data()).typeid.nameof);
    Fl_Counter* what=(Fl_Counter*)(obj.user_data());
    io::printfn("typeof what is %s",$typeof(what).typeid.nameof);

    //double val=((Fl_Counter*)(obj.user_data())).value();
    //double val=what.value();
    double val=cnt.value();
    io::printfn("%s value=%.2f",cnt.label(),val);
}