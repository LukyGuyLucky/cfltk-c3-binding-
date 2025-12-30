import fl;
import std::io;


fn void main()
{
    Fl_Window* win=fl::window_new(100,100,652,252,"A grid of Fl_Input widget");
        Fl_Table* grid=make_table(win,10,10);
    win.show();

    fl::run();
}

fn Fl_Table* make_table(Fl_Window* parent,int nCols,int nRows,int cellWidth=64,int cellHeight=24)
{
    nCols=nCols<1?1:nCols;
    nRows=nRows<1?1:nRows;

    parent.begin();
        int w=parent.width();
        int h=parent.height();

        Fl_Table* tbl=fl::table_new(5,5,w-10,h-10,null);
            tbl.set_cols(nCols);
            tbl.set_rows(nRows);
            tbl.set_row_height_all(cellHeight);
            tbl.set_col_width_all(cellWidth);

            tbl.begin();
                for(int r=0;r<nRows;r++)
                {
                    for(int c=0;c<nCols;c++)
                    {
                        Fl_Input* ip=fl::input_new(c*cellWidth,r*cellHeight,cellWidth,cellHeight,null);
                        ip.set_value(string::tformat("%s",r*nRows+c).zstr_tcopy());
                        ip.set_callback(&input_cb,ip);

                        tbl.add(ip);
                    }
                }
            tbl.end();
    parent.end();

    return tbl;    
}

fn void input_cb(Fl_Widget* obj,void* data)
{
    //try to input some text/number and press Enter key see the affect
    Fl_Input* input=(Fl_Input*)data;
    io::printfn("inpubCB: %s",input.value());
}