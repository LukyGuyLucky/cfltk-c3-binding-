import fl;
import std::io;

fn void main()
{
    fl::register_images();
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"fl_help_view01");
        Fl_Help_View* hv=fl::help_view_new(10,10,620,460,null);
            hv.set_value(HTML);
            win.resizable(hv);

        win.end();

    win.show();

    fl::run(); 
}

const HTML=
"<HTML>"    
  "<HEAD>"  
  "</HEAD>" 
  "<BODY>"   
    "<IMG SRC=" "media/renata.png" ">" // png file: media/renata.png change it to whatever you have.
    "<HR>"  
    "<H1>The Fl_Help_View class !</H1>" 
    "<CODE>fl::register_images();<BR>" 
    "Fl_Double_Windwo* win = fl::double_window_new(100,100,640,480," `"Fl_Help_View01"` ");" "<BR>"
    "Fl_Help_View* hv  = fl::help_view_new(10,10,620,460,null);<BR>" 
    "hv.set_value(HTML);<BR>" 
    "win.resizable(hv);<BR>" 
    "win.show();<BR>" 
    "fl::run();</CODE><BR>" 
  "</BODY>" 
"</HTML>";
