import fl;
import std::collections::triple;
import std::collections::list;


alias Trips=Triple{double,ZString,int};
alias TripsList=List{Trips};

fn void main()
{
    int ww=fl::w();
    int hh=fl::h();

    int w=(ww-40)/3;
    int h=(hh-60)/2;

    Fl_Window* win=fl::window_new(100,100,ww,hh,"fl_chart01");
        TripsList lists=make_trips_list();
        Fl_Chart* chart1=fl::chart_new(0+w*0,10+h*0,w,h,"FL_CHART_BAR");
            chart1.set_type(Fl_ChartType.FL_CHARTTYPE_BAR);
            chart1.add_items();
            
        Fl_Chart* chart2=fl::chart_new(20+w*1,10+h*0,w,h,"FL_CHART_LINE");
            chart2.set_type(Fl_ChartType.FL_CHARTTYPE_LINE);
            chart2.add_array(&trips);

        Fl_Chart* chart3=fl::chart_new(30+w*2,10+h*0,w,h,"FL_CHART_FILL");
            chart3.set_type(Fl_ChartType.FL_CHARTTYPE_FILL);
            chart3.add_list(lists);

        Fl_Chart* chart4=fl::chart_new(10+w*0,30+h*1,w,h,"FL_CHART_SPIKE");
            chart4.set_type(Fl_ChartType.FL_CHARTTYPE_SPIKE);
            chart4.add_items();

        Fl_Chart* chart5=fl::chart_new(20+w*1,30+h*1,w,h,"FL_CHART_PIE");
            chart5.set_type(Fl_ChartType.FL_CHARTTYPE_PIE);
            chart5.add_array(&trips);
        
        Fl_Chart* chart6=fl::chart_new(30+w*2,10+h*1,w,h,"FL_CHART_SPECIALPIE");
            chart6.set_type(Fl_ChartType.FL_CHARTTYPE_SPECIALPIE);
            chart6.add_list(lists);
        
    win.show();

    fl::run();

}

fn void Fl_Chart.add_items(&self)
{
    self.add(0.25,"value 0.25",Fl_Color.FL_COLOR_RED);
    self.add(1.333,"value 1.333",Fl_Color.FL_COLOR_GREEN);
    self.add(2.0  ,"value 2.0"  ,fl::rgb_color(128,64,0));//
    self.add(0.66 ,"value 0.66" ,fl::rgb_color(0,128,128));
    //self.add(-0.4 ,"value -0.4" ,Fl_Color.FL_COLOR_CYAN);
    self.add_triple({-0.4 ,"value -0.4",Fl_Color.FL_COLOR_CYAN});
}
fn void Fl_Chart.add_triple(&self,Triple{double,ZString,int} trip)
{
    self.add(trip.first,trip.second,trip.third);
}
fn void Fl_Chart.add_list(&self,TripsList lists)
{
    foreach(list:lists)
        self.add_triple(list);
}

fn TripsList make_trips_list()
{
    TripsList result;
    defer result.free();
    result.tinit_with_array({
        {0.25,"value 0.25",Fl_Color.FL_COLOR_RED},
        {1.333,"value 1.333",Fl_Color.FL_COLOR_GREEN},
        {2.0  ,"value 2.0"  ,fl::rgb_color(128,64,0)},
        {0.66 ,"value 0.66" ,fl::rgb_color(0,128,128)},
        {-0.4 ,"value -0.4" ,Fl_Color.FL_COLOR_CYAN}}
    );

    return result;
}
fn void Fl_Chart.add_array(&self,Trips[] trips)
{
    foreach(trip:trips)
        self.add_triple(trip);
}

Trips[*] trips={
    {0.25,"value 0.25",Fl_Color.FL_COLOR_RED},
    {1.333,"value 1.333",Fl_Color.FL_COLOR_GREEN},
    {2.0  ,"value 2.0"  ,Fl_Color.FL_COLOR_GRAY0},
    {0.66 ,"value 0.66" ,Fl_Color.FL_COLOR_DARK1},
    {-0.4 ,"value -0.4" ,Fl_Color.FL_COLOR_CYAN}
};
