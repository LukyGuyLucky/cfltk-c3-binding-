import fl;
import libc;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,600,300,"009-keyboard");
        Fl_Box* box=fl::box_new(20,30,500,200,"Press any key...");
        box.set_type(Fl_BoxType.FL_BOXTYPE_BORDERBOX);

        String str;
        while(true)
        {
            str=string::tformat("Press Enter to exit loop.\n"
                "Press any key to see its keycode\n"
                "Key code=%s",fl::event_key());
            box.set_label(str.zstr_tcopy());
            box.redraw();
            win.show();
            //if(fl::event_key()==65293) libc::exit(0);
            if(fl::event_key()==Fl_Key.FL_KEY_ENTER) libc::exit(0);
            fl::check();
        }
        box.set_label("You pressed Enter\nExit while..."
                "Now you can close the window!");
    win.end();

    fl::run();
}