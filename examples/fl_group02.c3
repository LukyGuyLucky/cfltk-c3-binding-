import fl;
import std::io;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"fl_group02-resize me...");
        win.begin();
            int w=win.width();
            int h=win.height();
            Fl_Group* grp=fl::group_new(0,0,w,h,null);
            int bw=w;
            int bh=h/2/3;
            Fl_BoxType bt=Fl_BoxType.FL_BOXTYPE_DOWNBOX;
            grp.begin();
                Fl_Box* box1=fl::box_new(0,bh*0,w,bh,"box 1");
                Fl_Box* box2=fl::box_new(0,bh*1,w,bh,"box 2");
                Fl_Box* box3=fl::box_new(0,bh*2,w,bh,"box 3");
                box1.set_box(bt);
                box2.set_box(bt);
                box3.set_box(bt);

                bw=w/3;
                bh=h/2;

                box1=fl::box_new(bw*0,bh,bw,bh,"v box 1");
                box2=fl::box_new(bw*1,bh,bw,bh,"v box 2");
                box3=fl::box_new(bw*2,bh,bw,bh,"v box 3");
                box1.set_box(bt);
                box2.set_box(bt);
                box3.set_box(bt);
            grp.end();
        win.end();

    win.resizable(grp);
    win.size_range(160,120,640,480);

    win.show();

    fl::run(); 
}
