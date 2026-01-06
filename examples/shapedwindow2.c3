import fl;
import std::io;


const int WIN_WIDTH=200;

struct MainForm
{
    inline Fl_Double_Window* win;
    float factor;
    Fl_Button* btnEnlarge;
    Fl_Button* btnShrink;
    Fl_Button* btnClose;
}
fn MainForm* new_mainform()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,WIN_WIDTH,WIN_WIDTH,"Testing");
    MainForm* result=mem::new(MainForm,{win,1.3f,null,null,null});
        result.factor=1.3f;
        Fl_RGB_Image* img=prepare_shape(WIN_WIDTH);
        result.win.set_shape(img);

            //practice on activate btnEnlarge again when the window is in minmum size;
            //a simpler way is direct set in shrink_cb
        result.win.handle(&size_cb,result.btnEnlarge);

        Fl_Box* box=fl::box_new(0,0,result.win.width(),result.win.height(),null);
        box.handle(&key_cb,result.win);

        Fl_Pixmap* pxm=fl::pixmap_new((char**)TILE_XPM);

        Fl_RGB_Image* temp=fl::rgb_image_from_pixmap(pxm);
        box.set_image(fl::tiled_image_new((Fl_Image*)temp,box.width(),box.height()));
                
        result.btnClose=fl::button_new(60,20,80,20,"Close");
        result.btnClose.set_callback(&cb,null);

        result.btnShrink=fl::button_new(60,100,80,20,"Shrink");
        result.btnShrink.set_callback(&shrink,&WIN_WIDTH);
        result.btnShrink.deactivate();
                
        result.btnEnlarge=fl::button_new(60,150,80,20,"Enlarge");
                
        result.btnEnlarge.set_callback(&enlarge,result.btnShrink);
        result.btnEnlarge.activate();

    result.win.end();
    result.win.resizable(result.win);
        
    return result;
}

MainForm* win;
fn void main()
{
    fl::init_all();
    fl::register_images();
        
    win=new_mainform();
    win.win.show();

    fl::run();

}
fn int size_cb(Fl_Widget* obj,int e,void* data)
{
    if(!win.btnEnlarge.active() && win.win.width()<=WIN_WIDTH*win.factor) 
    {
        win.btnEnlarge.activate();
    }
    return 1;
}
fn void cb(Fl_Widget* obj,void* data)
{
    Fl_Button* btn=(Fl_Button*)obj;
    Fl_Double_Window* win=btn.window();
    win.hide();
}
fn int key_cb(Fl_Widget* obj,int event,void* data)
{
    static int xStart,yStart;
    int ret=0;
    switch(event)
    {
        case Fl_Event.FL_EVENT_PUSH:
            xStart=win.win.x()-fl::event_x();
            yStart=win.win.y()-fl::event_y();
            ret=1;
        case Fl_Event.FL_EVENT_DRAG:

            win.win.resize(xStart+fl::event_x(),
                           yStart+fl::event_y(),
                           win.win.width(),
                           win.win.height());
            ret=1;
        case Fl_Event.FL_EVENT_RELEASED:
            win.win.redraw();
            fl::redraw();
            ret=1;
        default:
            ret=1;
            break;
    }
    return ret;

    // fltk/example shaped window below code doesn't work
    /*
    static int fromx,fromy,winx,winy;
    if(event==Fl_Event.FL_EVENT_PUSH)
    {
        fromx=fl::event_x_root();
        fromy=fl::event_y_root();
        winx=win.win.x_root();
        winy=win.win.y_root();

        return 1;
    }
    else if(event=Fl_Event.FL_EVENT_DRAG)
    {
        int deltax=fl::event_x_root()-fromx;
        int deltay=fl::event_y_root()-fromy;

        win.win.resize(winx+deltax,winy+deltay,
                        win.win.width(),
                        win.win.height());

        return 1;
    }else if(event=Fl_Event.FL_EVENT_RELEASED)
    {
        win.win.redraw();
        fl::redraw();

        return 1;
    }
    else
    {
        return 0;
    }
    */
}

fn void shrink(Fl_Widget* obj,void* data)
{
    Fl_Button* btnShrink=(Fl_Button*)obj;
    
    Fl_Double_Window* dwin=(Fl_Double_Window*)(btnShrink.window());

    io::printfn("btnShrink=%x\nbtnEnlarge=%x\ndwin=%x",
            btnShrink,win.btnEnlarge,dwin);
    int old=win.win.width();
    win.win.resize(win.win.x(),win.win.y(),
            (int)(old/win.factor),(int)(old/win.factor));
    if(win.win.width()<=*(int*)data) obj.deactivate();

    //another way is set in window's handle callback
    //win.btnEnlarge.activate();

}
fn void enlarge(Fl_Widget* obj,void* data)
{
    Fl_Button* btnEnlarge=(Fl_Button*)obj;
    Fl_Button* btnShrink=(Fl_Button*)data;
    Fl_Double_Window* dwin=(Fl_Double_Window*)(btnEnlarge.window());
    io::printfn("Fl_Double_Window win=%x",dwin);

    MainForm win={dwin,1.3f,btnEnlarge,btnShrink,{}};
    int old=win.win.width();
    io::printfn("old=%d",old);

    win.win.resize(win.win.x(),win.win.y(),
            (int)(old*win.factor),(int)(old*win.factor));
    if(win.win.width()>WIN_WIDTH*win.factor) obj.deactivate();
    ((Fl_Widget*)data).activate();

}
fn Fl_RGB_Image* prepare_shape(int w)
{

    Fl_Image_Surface* surf=fl::image_surface_new(w,w,0);
    fl::surface_device_push_current((Fl_Surface_Device*)surf);

    fl::set_color_int(Fl_Color.FL_COLOR_BLACK);
    fl::rectf(-1,-1,w+2,w+2);
    fl::set_color_int(Fl_Color.FL_COLOR_WHITE);
    fl::pie(2,2,w-4,w-4,0,360);
    fl::set_color_int(Fl_Color.FL_COLOR_BLACK);
    fl::pie((int)(0.7*w),w/2,w/4,w/4,0,360);

    Fl_RGB_Image* img=surf.image();
    surf.delete();
    
    fl::surface_device_pop_current();

    return img;
}

const char*[] TILE_XPM = {
/* columns rows colors chars-per-pixel */
"64 64 98 2 ",
"   c #28531B",
".  c #29541B",
"X  c #29531C",
"o  c #2A551C",
"O  c #2C571E",
"+  c #2D581F",
"@  c #2F5A21",
"#  c #305B21",
"$  c #315D23",
"%  c #335F24",
"&  c #336025",
"*  c #366327",
"=  c #376328",
"-  c #376428",
";  c #39672A",
":  c #3A682B",
">  c #3B692C",
",  c #3C6B2D",
"<  c #3E6D2F",
"1  c #3F6E30",
"2  c #406F31",
"3  c #427233",
"4  c #437334",
"5  c #447334",
"6  c #467636",
"7  c #477837",
"8  c #477838",
"9  c #4A7B3A",
"0  c #4C7C3B",
"q  c #4D7D3D",
"w  c #507F3F",
"e  c #50803F",
"r  c #528141",
"t  c #548243",
"y  c #568344",
"u  c #568444",
"i  c #588546",
"p  c #5C8849",
"a  c #5F8A4C",
"s  c #618B4D",
"d  c #638D4F",
"f  c #658E50",
"g  c #679052",
"h  c #689154",
"j  c #6D9457",
"k  c #71975B",
"l  c #72985B",
"z  c #74995D",
"x  c #7B9E63",
"c  c #7DA065",
"v  c #80A268",
"b  c #87A76D",
"n  c #88A76E",
"m  c #8BAA71",
"M  c #90AE75",
"N  c #94B078",
"B  c #98B37C",
"V  c #99B47C",
"C  c #9CB67F",
"Z  c #9EB780",
"A  c #9FB881",
"S  c #A2BA84",
"D  c #A5BD87",
"F  c #A8BE89",
"G  c #ABC18B",
"H  c #ACC18C",
"J  c #B1C591",
"K  c #B9CB97",
"L  c #BACB98",
"P  c #BDCE9B",
"I  c #BECE9C",
"U  c #C2D19F",
"Y  c #C4D3A0",
"T  c #C6D4A2",
"R  c #C8D5A3",
"E  c #C8D6A4",
"W  c #CDD9A8",
"Q  c #D0DBAB",
"!  c #D1DCAB",
"~  c #D2DDAC",
"^  c #D6DFB0",
"/  c #D7E0B0",
"(  c #D8E1B1",
")  c #DDE5B6",
"_  c #E0E7B8",
"`  c #E5EABC",
"'  c #E7ECBE",
"]  c #E8ECBE",
"[  c #EBEFC1",
"{  c #ECF0C2",
"}  c #F2F3C7",
"|  c #F2F4C7",
" . c #F3F4C8",
".. c #F7F7CB",
"X. c #FAFACE",
"o. c #FCFBCF",
"O. c #FCFBD0",
"+. c #FFFDD2",
/* pixels */
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 q y j k p q 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 # + 2 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 h W X.+.{ N r 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 < , 1 6 9 9 *         o 4 9 4 ; ; , 6 ",
"9 9 9 9 9 9 r v F K S s e T o.+.+.+.X.b 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 3 % o   o * 6 9             @ 3 @     o * ",
"9 9 9 9 9 9 n ) +.+.o.( c ' +.+.+.+.+.^ r 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 *           ; @               @         o ",
"9 9 9 9 9 i R +.+.+.+.+.( [ +.+.+.+.+.} f 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 $           o o                           ",
"9 9 9 9 9 f ) +.+.+.+.+.o._ +.+.+.+.+.| j 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 $             $                           ",
"9 9 9 9 9 u Q +.+.+.+.+.+.I +.+.+.+.+.) i 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 *             $             o           o ",
"9 9 9 9 9 9 M X.+.+.+.+.+.M Y X.+.+.[ N 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 3 o           % O           # o         % ",
"9 9 9 9 9 9 u H X.+.+.+./ g d F T P m r 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 %         o ; = X       o > - o   o % 6 ",
"9 9 9 9 9 9 9 r v Y ~ K z q 9 q d p 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 5 % o   o * 6 6 * o   O : 7 6 3 < 3 6 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 2 , 1 6 9 9 9 4 3 6 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 p d q 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 u D ! ~ J d 0 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 7 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 t R o.+.+.X.I t 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 1 @ o + ; 9 9 9 9 9 9 9 9 9 9 9 6 6 9 9 9 9 9 9 9 9 9 9 V O.+.+.+.+.X.h 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 3 +       o ; 9 9 9 9 9 9 9 9 9 : $ $ - 6 9 9 9 9 9 9 9 9 W +.+.+.+.+.+.k 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 6 9 9 9 9 9 9 ;           + 6 9 9 9 9 9 9 9 %       o * 6 9 9 9 9 9 9 9 ^ +.+.+.+.+.X.a 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 1 ; * ; 6 9 9 9 9 *             3 9 9 9 9 9 9 =           o 3 9 9 9 9 9 9 9 T +.+.+.+.+._ q 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 < @       + 5 9 9 9 -             2 9 9 9 9 9 3               < 9 9 9 9 9 9 9 M ..+.+.+...C 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 7 &           @ 9 9 9 ,             , 9 9 9 9 9 $             o 3 9 9 9 9 9 9 9 t N [ +.{ C t 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 6 #             1 9 9 2             , 9 9 9 9 3 o             & 9 9 9 9 9 9 9 9 9 9 y d u 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 $             : 9 9 6 o           1 9 9 9 9 3             o 6 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 ,             , 9 9 9 * .       @ 6 9 9 9 9 8 o           < 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 %         + 3 9 9 9 6 - O o $ 3 9 9 9 9 9 9 ; o     o - 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 = o   + 1 9 9 9 9 9 9 6 6 9 9 9 9 9 9 9 9 9 , = * , 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 6 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 u d t 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 6 < < 5 9 9 9 9 6 6 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 w z D P G l q 9 9 9 9 9 9 9 9 9 9 9 9 6 6 9 9 9 9 9 9 9 , O     o , 9 5 $ + @ ; 8 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 z W X.+.o.( x 9 9 9 9 9 9 9 9 9 9 9 : % $ - 6 9 9 9 9 4 o         o 1 O       o - 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 F o.+.+.+.+.W q 9 9 9 9 9 9 9 9 9 ; o       $ 6 9 9 9 :             @           @ 6 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 U +.+.+.+.+.X.x 9 9 9 9 9 9 9 9 6 +           ; 9 9 9 =             o           O 6 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 U +.+.+.+.+.+.L 9 9 9 9 9 9 9 9 6 o           o 6 9 9 ;             o           @ 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 Z +.+.+.+.+.+.~ 9 9 9 9 9 9 9 9 9 +             ; 9 9 <             o           , 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 d ` +.+.+.+.+.E 9 9 9 9 9 9 9 9 9 *             # 9 9 6 o         o * o       @ 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 0 x  .+.+.+. .B 9 9 9 9 9 9 9 9 9 3 o           @ 6 9 9 ; o     o ; 7 ; @ + % 6 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 q k W ] ) A t 9 9 9 9 9 9 9 9 9 9 =           $ 8 9 9 9 , * * , 9 9 9 6 6 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 q d p 9 9 9 9 9 9 9 9 9 9 9 9 9 %       O < 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 < = ; 3 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 ",
"9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 "
};
