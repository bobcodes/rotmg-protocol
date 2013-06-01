package bywyhiguj
{
[CLASS0]

   public class hebesuco extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function hebesuco() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      static const sufol:Array = new Array([-642806505,1336562173,-863436784,-445390483,-2120077421,1106554844,1392513849,1842969801,1765220580,777103634,820049186,-1012868952,-1762574400,956177563,124138760,1690811919,-1492122412,-398855431,-2079514314,64809640,-155552815,535468245,-919063835,1389930747,1746167993,-857551892,-605864398,1676393058],[2035218354,1991483301,-123468560,749218245,737214494,1116813350,1777915974,-1430465735,1005907844,-1387728430,-691586315,-1778292704,-1949021626,-47575578,-1752826987,-1677063573,-821873868,-835156270,1154018758,429504978,-1707090102,1690527110,70329666,50891947]);

      static const jokozyv:Array = new Array([1816701864,34019812,-78557668,-983386648],[734850418,2019308294,84284971,-2061975552]);

      public static function keri(param1:int, param2:int) : String {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         _loc3_="";
         _loc4_=0;
         _loc5_=sufol[param1-5^539].length;
         while(_loc4_<_loc5_)
         {
            _loc6_=int(sufol[param1-5^539][_loc4_]);
            _loc4_++;
            _loc7_=int(sufol[param1-5^539][_loc4_]);
            _loc8_=2.654435769E9;
            _loc9_=8.4941944608E10;
            while(_loc9_!=0)
            {
               _loc7_=_loc7_-((_loc6_<<4^_loc6_>>>5)+_loc6_^_loc9_+int(jokozyv[param2+3^247][_loc9_>>>11&3]));
               _loc9_=_loc9_-_loc8_;
               _loc6_=_loc6_-((_loc7_<<4^_loc7_>>>5)+_loc7_^_loc9_+int(jokozyv[param2+3^247][_loc9_&3]));
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
[/CLASS]
}