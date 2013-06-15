package kam
{


   public class tyl extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function tyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      static const rizidawu:Array = new Array([364894354,-765921322,422521694,-2131961668,644376366,-1574089104,-1212199896,106015484,1942055320,-2115924800,1771030174,-1089936499,-1838019924,-1871243719,-1755935351,-26798522,1875120505,-538220053,-326316045,695084164,-933695293,869821289,-697800055,-458229124,289538928,875100578,401688115,-1980400899],[892945380,-1830119771,1821690079,-1436643813,-161240465,1464267154,-1644996898,1415074546,258036339,-1196396597,-1162735304,-1332749171,964089053,1928210768,1626090831,-1875548820,-1399670808,599403106,1405249640,-869282818,-110272626,-1803919662,-2084400928,-610510108]);

      static const juh:Array = new Array([673896368,-1374971066,979772671,-1007576995],[-937887015,-1652832499,-1868920334,-1847976806]);

      public static function mileqalo(param1:int, param2:int) : String {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         _loc3_="";
         _loc4_=0;
         _loc5_=rizidawu[param1-5^-910].length;
         while(_loc4_<_loc5_)
         {
            _loc6_=int(rizidawu[param1-5^-910][_loc4_]);
            _loc4_++;
            _loc7_=int(rizidawu[param1-5^-910][_loc4_]);
            _loc8_=2.654435769E9;
            _loc9_=8.4941944608E10;
            while(_loc9_!=0)
            {
               _loc7_=_loc7_-((_loc6_<<4^_loc6_>>>5)+_loc6_^_loc9_+int(juh[param2+3^-902][_loc9_>>>11&3]));
               _loc9_=_loc9_-_loc8_;
               _loc6_=_loc6_-((_loc7_<<4^_loc7_>>>5)+_loc7_^_loc9_+int(juh[param2+3^-902][_loc9_&3]));
            }
            _loc3_=_loc3_+(String.fromCharCode(_loc6_)+String.fromCharCode(_loc7_));
            _loc4_++;
         }
         if(_loc3_.charCodeAt(_loc3_.length-1)==0)
         {
            _loc3_=_loc3_.substring(0,_loc3_.length-1);
         }
         return _loc3_;
      }
   }

}