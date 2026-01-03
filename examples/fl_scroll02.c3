import std::io;
import libc;
import fl;

fn void main()
{
    fl::set_scheme("plastic");
    var win @safeinfer=fl::double_window_new(100,100,512,512,"fl_scroll02");
        var scr @safeinfer=fl::scroll_new(20,20,win.width()-40,win.height()-40,null);
        var v @safeinfer=(Fl_Scroll*)scr.scrollbar();
        v.set_align(Fl_Align.FL_ALIGN_TOPLEFT);

        v.set_color(fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));
        v.set_selection_color(fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));

        var h @safeinfer=(Fl_Scroll*)scr.hscrollbar();
        h.set_color(fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));
        h.set_selection_color(fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));

        for(char y=0;y<50;y++)
        {
            for(char x=0;x<50;x++)
            {
                ZString label=string::tformat("[%d]",1+y*40+x).zstr_tcopy();
                var btn @safeinfer=fl::button_new(x*50,y*50,48,48,null);
                btn.set_label(label);

                btn.set_color(fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));
                btn.set_selection_color(fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));
            }
        }
        scr.scroll_to(500,750);

    win.resizable(scr);
    win.show();
    
    fl::run();
}       