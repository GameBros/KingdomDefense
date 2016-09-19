// -Returns the object name of a indexed unit
index = argument0;
rt = noone;

switch(index)
{
    case 0:     rt = oSD;
    break;
    case 1:     rt = oAS;
    break;
    case 2:     rt = oLC;
    break;
    case 3:     rt = oHS;
    break;
    case 4:     rt = oMGF;
    break;
    case 5:     rt = oMGI;
    break;
    case 6:     rt = oMGT;
    break;
    case 7:     rt = oTH;
    break;
    case 14:    rt = oMT;
    break;
}

return rt;
