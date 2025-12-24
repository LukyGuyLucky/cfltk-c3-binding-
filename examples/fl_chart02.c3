import fl;
import libc;

fn void main()
{
    mem::@report_heap_allocs_in_scope()
    {
        main_window().show();

        fl::run();
    };
   
}

fn Fl_Window* main_window()
{
    int ww=640;
    int hh=480;
    int w=(ww-40)/3;
    int h=(hh-60)/2;

    Fl_Window* win=fl::window_new(100,100,ww,hh,"fl_chart02");
        Fl_Chart* chart1=fl::chart_new(10+w*0,10+h*0,w,h,"BAR");
            chart1.set_type(Fl_ChartType.FL_CHARTTYPE_BAR);
            chart1.add_items();
        Fl_Chart* chart2=fl::chart_new(20+w*1,10+h*0,w,h*2+20,"LINE");
            chart2.set_type(Fl_ChartType.FL_CHARTTYPE_LINE);
            chart2.add_items();
        Fl_Chart* chart3=fl::chart_new(30+w*2,10+h*0,w,h,"FILL");
            chart3.set_type(Fl_ChartType.FL_CHARTTYPE_FILL);
            chart3.add_items();
        Fl_Chart* chart4=fl::chart_new(10+w*0,30+h*1,w,h,"SPIKE");
            chart4.set_type(Fl_ChartType.FL_CHARTTYPE_SPIKE);
            chart4.add_items();
        Fl_Chart* chart5=fl::chart_new(30+w*2,30+h*1,w,h,"PIE");
            chart5.set_type(Fl_ChartType.FL_CHARTTYPE_PIE);
            chart5.add_items();
    return win;
}
fn void Fl_Chart.add_items(&self)
{
    double value=100.0;

    for(int i=1;i<11;i++)
    {
       
        self.add(value,string::tformat("%d",value).zstr_tcopy(),(uint)(i*1.5));
        value+=-100.+libc::rand()%200;
    }
}

