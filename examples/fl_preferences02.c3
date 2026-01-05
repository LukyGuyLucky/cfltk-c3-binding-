import fl;
import std::io;


fn void main()
{
    String exePath=path::tcwd().str_view()!!;

    var db @safeinfer=fl::preferences_new(1,"vendor.xxx",exePath.zstr_tcopy());
        db.sets("key","value");

        var group @safeinfer=db.from_parent_group("group");
            for(int i=0;i<4;i++)
            {
                group.seti(string::tformat("iKey%d",i).zstr_tcopy(),i);
            }
            group.setf("fKey",123.4);
            group.setd("dKey",123.456789);
            group.setdp("dKey2",123.456789,10);
            group.sets("sKey","i'm a string");
        group.delete();
    db.delete();

    db=fl::preferences_new(1,"vendor.xxx",exePath.zstr_tcopy());
    defer db.delete();
        group=db.from_parent_group("group");
        defer group.delete();
            int iValue;
            for(int i=0;i<4;i++)
            {
                group.geti(string::tformat("iKey%d",i).zstr_tcopy(),&iValue,0);
                io::printfn("iValue#%d\t%d",i,iValue);
            }
            float fValue;
            group.getf("fKey",&fValue,0.0);
            io::printfn("fKey=%f",fValue);

            double dValue;
            group.getd("dKey",&dValue,0.0);
            io::printfn("dKey=%f",dValue);

            group.getd("dKey2",&dValue,0.0);
            io::printfn("dKey2=%f",dValue);

            char* sValue=mem::alloc_array(char,255);
            defer free(sValue);
            group.gets("sKey",sValue,"",255);
            io::printfn("sValue=%s",(ZString)sValue);
}