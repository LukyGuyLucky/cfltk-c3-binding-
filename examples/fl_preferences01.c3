import fl;
import std::io;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        run();
    };
}
const DATASIZE=4;
const VENDOR="shiny3d";
const APP="myapp";
fn void run()
{
    char[DATASIZE] outData;
    for(int i=0;i<DATASIZE;i++)
    {
        outData[i]=(char)i;
    }
    var pref @safeinfer=fl::preferences_new(0,VENDOR,APP);
        for(int i=0;i<DATASIZE;i++)
        {
            pref.seti(string::tformat("key_i_%d",i).zstr_tcopy(),i);
        }
        pref.setf("key_f",123.4);
        
        pref.setd("key_d",123.456789);

        pref.setdp("key_d2",123.456789,10);

        pref.sets("key_s","i'm a string");

    var group @safeinfer=pref.from_parent_group("mygroup");
    defer pref.delete();
        group.setv("key_bin",&outData,DATASIZE);
        group.delete();


    pref=fl::preferences_new(0,VENDOR,APP);
    defer pref.delete();
        int iValue;
        for(int i=0;i<DATASIZE;i++)
        {
            pref.geti(string::tformat("key_i_%d",i).zstr_tcopy(),&iValue,0);
            io::printfn("ivalue #%d : %d",i,iValue);
        }
        float fValue;
        pref.getf("key_f",&fValue,0.0);
        io::printfn("fvalue: %f",fValue);

        double dValue;
        pref.getd("key_d",&dValue,0.0);
        io::printfn("dValue: %f",dValue);

        pref.getd("key_d2",&dValue,0.0);
        io::printfn("dValue (setdp) : %f",dValue);;

        char* sValue=mem::alloc_array(char,255);
        pref.gets("key_s",sValue,"",255);
        io::printfn("sValue: %s",(ZString)sValue);

        free(sValue);

        char* inData=mem::alloc_array(char,255);
        defer free(inData);
    group=pref.from_parent_group("mygroup");
    defer group.delete();
        group.getv("key_bin",inData,&outData,DATASIZE,255);
        for(int i=0;i<DATASIZE;i++)
        {
            io::printfn("mygroup#%d: %d ",i,inData[i]);
        }
}