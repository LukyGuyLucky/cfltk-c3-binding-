import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,400,300,"FLTK pack demo");
    Fl_Pack* pack=fl::pack_new(10,10,380,280);
    pack.box(Fl_PackType.FL_PACKTYPE_HORIZONTAL);

    Fl_Box* box1=fl::box_new(0,0,320,120,null);
    Fl_Box* box2=fl::box_new(0,120,320,120,null);

    Fl_Button* button1=fl::button_new(0,0,80,40,"Button 1");
    
    //box1.handle((Cb)&cb,null);
    pack.add((Fl_Widget*)button1);

    Fl_Button* button2=fl::button_new(0,0,80,40,"Button 2");
    
    pack.add((Fl_Widget*)button2);
    button1.set_callback(&cb,box1);
    button2.set_callback(&cb,box2);
    pack.end();
    win.show();

    fl::run();
}
fn void cb(Fl_Widget* w,void* data)
{
    Fl_Box* box=(Fl_Box*)data;
    box.set_label("Button clicked!");


}