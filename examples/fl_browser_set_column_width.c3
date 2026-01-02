import std::io;
import std::math;
import fl;

const int[] COL={100,100,100,0};
fn void main()
{
    var win @safeinfer=fl::double_window_new(100,100,400,400,
            "set_browser_width");
        var brw @safeinfer=fl::browser_new(20,20,360,360,null);
            brw.set_column_widths(COL);
            brw.add("x\tx^2\tSqrt(x)");
            for(int x=1;x<=100;x++)
            {
                brw.add(string::tformat("%d\t%d\t%f",x,x^2,math::sqrt(x)).zstr_tcopy());
            }
        //brw.end();
    win.end();

    win.resizable(brw);
    win.show();

    fl::run();
}