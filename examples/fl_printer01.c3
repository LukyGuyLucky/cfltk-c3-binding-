import std::io;
import fl;

fn void main() 
{
    var win @safeinfer=fl::window_new(100,100,120,40,"fl_printer01");
        var btn @safeinfer=fl::button_new(10,10,60,20,"&Print");
        btn.set_callback(&click_cb,null);
    win.show();
    fl::run();
}
fn void click_cb(Fl_Widget* obj,void* data)
{
    int width,height,left,top,right,bottom,pageWidth,pageHeight;
    Fl_Printer* prt=fl::printer_new();
    if(prt)
    {
        if(prt.begin_job(1,null,null,{})==0)
        {
            if(prt.begin_page()==0)
            {
                prt.set_current();
                float dpi=72;
                float cm=dpi/2.54;
                prt.printable_rect(&width,&height);
                prt.margins(&left,&top,&right,&bottom);
                pageWidth=width+left+right;
                pageHeight=height+top+bottom;

                io::printfn("paper size: %s x %s points",(double)pageWidth,pageHeight);
                io::printfn("paper size: %s x %s zoll",(double)pageWidth/dpi,(double)pageHeight/dpi);
                io::printfn("pager size: %s x %s cm",(double)pageWidth/dpi*2.54,(double)pageHeight/dpi*2.54);
                io::printn();

                io::printfn("print size %s x %s points",(double)width,height);
                io::printfn("print size %s x %s zoll",(double)width/dpi,(double)height/dpi);
                io::printfn("print size %s x %s cm",(double)width/dpi*2.54,(double)height/dpi*2.54);

                width/=16;
                height*=16;

                height/=16;
                height*=16;

                fl::rect(0,0,width-1,height-1);
                for(int x=0;x<width;x+=(int)cm)
                {
                    fl::line(x,0,x,height-1);
                }
                for(int y=0;y<height;y+=(int)cm)
                {
                    fl::line(0,y,width-1,y);
                }
                prt.end_page();
            }
            prt.end_job();
        }
        prt.delete();
    }
}