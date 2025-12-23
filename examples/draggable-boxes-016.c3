import fl;
import std::io;
import libc;

fn void main()
{
    int w=(int)(fl::w()*0.45);
    int h=(int)(fl::h()*0.45);
    Fl_Pixmap* cat=fl::pixmap_new(CATXPM);
    Fl_Double_Window* win=fl::double_window_new(100,100,w,h,"016-draggable-boxes");
    w/=50;
    h/=34;

    for(int y=0;y<h;y++)
    {
        for(int x=0;x<w;x++)
        {
            if(libc::rand()%9>3.3)
            {
                Fl_Box* box=fl::box_new(x*50,y*34,50,34,null);
                box.handle(&handle_callback,null);
                box.set_image(cat);
            }
        }
    }
    win.end();
    win.show();

    fl::run();
}
fn int handle_callback(Fl_Widget* w,int e,void* data)
{
    static int xStart,yStart;
    int ret=0;
    switch(e)
    {
        case Fl_Event.FL_EVENT_PUSH:
            xStart=w.x()-fl::event_x();
            yStart=w.y()-fl::event_y();
            ret=1;
        case Fl_Event.FL_EVENT_DRAG:
            //w.set_position(xStart+fl::event_x(),yStart+fl::event_y());
            w.resize(xStart+fl::event_x(),yStart+fl::event_y(),w.width(),w.height());
            ret=1;
        case Fl_Event.FL_EVENT_RELEASED:
            w.redraw();
            fl::redraw();
            ret=1;
        default:
            ret=1;
            break;
    }
    return ret;
}

const char*[] CATXPM={
    "50 34 4 1", 
    "  c #000000", 
    "o c #ff8800", 
    "@ c #ffffff", 
    "# c none", 
    "##################################################", 
    "###      ##############################       ####", 
    "### ooooo  ###########################  ooooo ####", 
    "### oo  oo  #########################  oo  oo ####", 
    "### oo   oo  #######################  oo   oo ####", 
    "### oo    oo  #####################  oo    oo ####", 
    "### oo     oo  ###################  oo     oo ####", 
    "### oo      oo                     oo      oo ####", 
    "### oo       oo  ooooooooooooooo  oo       oo ####", 
    "### oo        ooooooooooooooooooooo        oo ####", 
    "### oo     ooooooooooooooooooooooooooo    ooo ####", 
    "#### oo   ooooooo ooooooooooooo ooooooo   oo #####", 
    "####  oo oooooooo ooooooooooooo oooooooo oo  #####", 
    "##### oo oooooooo ooooooooooooo oooooooo oo ######", 
    "#####  o ooooooooooooooooooooooooooooooo o  ######", 
    "###### ooooooooooooooooooooooooooooooooooo #######", 
    "##### ooooooooo     ooooooooo     ooooooooo ######", 
    "##### oooooooo  @@@  ooooooo  @@@  oooooooo ######", 
    "##### oooooooo @@@@@ ooooooo @@@@@ oooooooo ######", 
    "##### oooooooo @@@@@ ooooooo @@@@@ oooooooo ######", 
    "##### oooooooo  @@@  ooooooo  @@@  oooooooo ######", 
    "##### ooooooooo     ooooooooo     ooooooooo ######", 
    "###### oooooooooooooo       oooooooooooooo #######", 
    "###### oooooooo@@@@@@@     @@@@@@@oooooooo #######", 
    "###### ooooooo@@@@@@@@@   @@@@@@@@@ooooooo #######", 
    "####### ooooo@@@@@@@@@@@ @@@@@@@@@@@ooooo ########", 
    "######### oo@@@@@@@@@@@@ @@@@@@@@@@@@oo ##########", 
    "########## o@@@@@@ @@@@@ @@@@@ @@@@@@o ###########", 
    "########### @@@@@@@     @     @@@@@@@ ############", 
    "############  @@@@@@@@@@@@@@@@@@@@@  #############", 
    "##############  @@@@@@@@@@@@@@@@@  ###############", 
    "################    @@@@@@@@@    #################", 
    "####################         #####################", 
    "##################################################"


};