import fl;
import std::io;

const SIZE=200;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        Fl_Window* win=fl::window_new(100,100,312,112,"fl_callbacks002");
            Fl_Button* btn=fl::button_new(10,10,300,24,"button");
                btn.set_when(Fl_CallbackTrigger.FL_CALLBACKTRIGGER_CHANGED);
                btn.set_callback(&cb,null);

            Fl_Input* input=fl::input_new(45,44,260,24,"input");
                input.set_when(Fl_CallbackTrigger.FL_CALLBACKTRIGGER_CHANGED);
                input.set_callback(&cb,null);
   
        win.show();
        
        fl::run();
    };
}
fn void cb(Fl_Widget* obj,void* data)
{
    io::printfn("typeof obj.user_data() is %s",$typeof(obj.user_data()).typeid.nameof);
 
    int code=fl::event();
   
    io::printfn("Event type=%s\nEvent text=%s",Fl_Event.names[code],fl::event_text());
    
}