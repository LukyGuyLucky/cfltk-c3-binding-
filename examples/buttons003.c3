import fl;
import std::io;


fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        //set gray as default background for all new widgets
        fl::background(160,160,160);

        Fl_Window* win=fl::window_new(100,100,312,112,"buttons003");
            //set blue as default forground color fro all new widgets
            fl::foreground(0,0,255);
            Fl_Box* box=fl::box_new(100,10,100,24,"box");

            //create a button with current default colors
            Fl_Button* btn1=fl::button_new(100,40,100,24,"Button 1");

            Fl_Button* btn2=fl::button_new(100,70,100,24,"Button 2");
            //set background and selection color,that is,overwrite default color 
            btn2.set_selection_color(fl::rgb_color(255,0,0));

            //set a yellow label color,that is,overwrite default color
            btn2.set_label_color(fl::rgb_color(255,255,0));

   
        win.show();
        
        fl::run();
    };
}
