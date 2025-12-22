import fl;

const ZString TITLE="Hello,world";
fn void main()
{
    Fl_Window* win=fl::window_new(0,0,340,180,TITLE);
        Fl_Box* box=fl::box_new(20,40,300,100,TITLE);
        box.box(Fl_BoxType.FL_BOXTYPE_UPBOX);
        box.label_font(Fl_Font.FL_FONT_TIMESBOLDITALIC);
        box.label_size(36);
        box.label_type(Fl_LabelType.FL_LABELTYPE_SHADOW);
    win.end();
    win.show();

    fl::run();
}