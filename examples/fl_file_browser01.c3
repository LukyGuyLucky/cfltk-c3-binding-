import fl;
import std::io;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,320,240,"fl_file_browser01");
        Fl_File_Browser* fbr=fl::file_browser_new(10,10,320-20,200-20,null);
            fbr.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_BOTH);
            fbr.set_filter("*.*");
            fbr.load_file(".");
            fbr.set_filetype(Fl_FileType.FL_FILETYPE_FILES);

            int nItems=fbr.size();
            if(nItems>0)
            {
                //be careful the line index starts from 1 not zero!!
                //the app will crash if set int line=0!!!
                for(int line=1;line<=nItems;line++)
                {
                    io::printn(fbr.text(line));
                }
            }
        
    win.resizable(win);

    win.show();

    fl::run(); 
}
