import fl;
import std::io;

const SIZE=200;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        Fl_Window* win=fl::window_new(100,100,312,112,"fl_counter_02");
            Fl_Counter* cnt1=fl::counter_new(10,10,192,24,"counter 1");
            Fl_Simple_Counter* cnt2=fl::simple_counter_new(10,64,192,24,"counter 2");
                cnt1.set_callback(&counter_cb,cnt1);
                cnt2.set_callback(&counter_cb,cnt2);
            win.resizable(win);
   
        win.show();
        
        fl::run();
    };
}
fn void counter_cb(Fl_Widget* obj,void* data)
{
    Fl_Counter* cnt=(Fl_Counter*)obj;
    double val=((Fl_Counter*)(obj.user_data())).value();
    io::printfn("%s value=%.2f",cnt.label(),val);
}