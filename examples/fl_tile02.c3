import fl;
import libc;

fn void main()
{
    create_main_window().show();

    fl::run();
}

fn Fl_Window* create_main_window()
{
    Fl_Window* win=fl::window_new(100,100,(int)(fl::w()*0.75),(int)(fl::h()*0.75),"drag the lines around and see what happened!");
    win.begin();
        int w=win.width();
        int h=win.height();

        Fl_Group* group=fl::group_new(0,0,w,h,null);
        group.begin();
            Fl_Tile* tile=fl::tile_new(0,0,w,h,null);
            tile.begin();
                w/=4;
                h/=4;

                Fl_Button* button=fl::button_new(w*0,h*0,w*1,h*1,null);
                libc::srand((int)libc::time(null));
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));

                button=fl::button_new(w*1,h*0,w*1,h*1,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));


                button=fl::button_new(w*2,h*0,w*1,h*1,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));

                button=fl::button_new(w*3,h*0,w*1,h*1,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));


                button=fl::button_new(w*0,h*1,w*1,h*2,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));


                button=fl::button_new(w*1,h*1,w*2,h*2,null);
                button.set_color(Fl_Color.FL_COLOR_BLACK);


                button=fl::button_new(w*3,h*1,w*1,h*2,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));



                button=fl::button_new(w*0,h*3,w*2,h*1,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));


                button=fl::button_new(w*2,h*3,w*2,h*1,null);

                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));

                button=fl::button_new(w*2,h*3,w*2,h*1,null);
                button.set_color(fl::rgb_color((char)libc::rand()%255,
                        (char)libc::rand()%255,(char)libc::rand()%255));        
            tile.end();
        group.end();
    win.end();

    win.resizable(tile);
    win.size_range(160,100,win.width(),win.height());

    return win;

}