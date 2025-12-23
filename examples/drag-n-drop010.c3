import fl;

fn void main()
{
    Fl_Window* wina=fl::window_new(100,100,400,300,"Sender");
        Fl_Box* boxa=fl::box_new(10,10,360,260,"boxA");
        boxa.set_label("Drag\nfrom here...");
        boxa.set_label_size(20);
        boxa.set_label_color(Fl_Color.FL_COLOR_MAGENTA);
        boxa.set_type(Fl_BoxType.FL_BOXTYPE_UPFRAME);
        Sender a={boxa};
        a.base.set_label("boxa text changed or not?");
    wina.end();
    wina.show();

    Fl_Window* winb=fl::window_new(600,100,400,300,"Receiver");
        Fl_Box* boxb=fl::box_new(0,0,360,260,"boxB");
        boxb.set_label("...to\nhere");
        boxb.set_label_size(26);
        boxb.set_label_color(Fl_Color.FL_COLOR_DARKGREEN);
        boxb.set_type(Fl_BoxType.FL_BOXTYPE_OVALBOX);
        Receiver b={boxb};

    winb.end();
    winb.show();


    fl::run();

}

struct Sender
{
    inline Fl_Box* base;
}
struct Receiver
{
    inline Fl_Box* base;
}

fn int Sender.handle_event(&self,int e)
{
    int ret=self.base.handle_event(e);
    switch(e)
    {
        case Fl_Event.FL_EVENT_PUSH:
            ZString msg="It works";
            fl::copy(msg,(int)msg.len(),0);
            fl::dnd();
            ret=1;
    }
    return ret;
}
fn int Receiver.handle_event(&self,int e)
{
    int ret=self.base.handle_event(e);
    switch(e)
    {
        case Fl_Event.FL_EVENT_DNDENTER:
            ret=1;
            break;
        case Fl_Event.FL_EVENT_DNDDRAG:
            ret=1;
            break;
        case Fl_Event.FL_EVENT_DNDRELEASE:
            ret=1;
            break;
        case Fl_Event.FL_EVENT_PASTE:
            self.base.set_label(fl::event_text());
            self.base.set_label("Parent text label");
            ret=1;
            break;
        default:break;
    }
    return ret;
}