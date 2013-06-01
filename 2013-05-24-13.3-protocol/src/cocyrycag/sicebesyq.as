package cocyrycag
{
[CLASS0]

   public class sicebesyq extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function sicebesyq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      static const wigaleqa:Array = new Array([1851725258,-1315818752,415584847,2060696478,-1744268395,640405351,924579481,-1527852027,812764571,1028915848,-654248555,-1416065563,405125187,-454557276,26167061,21947127,-258215718,1597141151,466226684,556643693,574089183,-1215357402,-1911231472,-142685362,-1865621218,1173494991,-1469899897,1867118850],[552565293,1640587413,205052644,-1105836909,925822365,1399575256,506619832,1381169484,-2085353682,805495696,-1524136547,-1903815098,868271847,1040335903,1794814200,989025466,529745145,1763774680,-1138474199,-181953207,270522687,143083429,1145572154,123025837]);

      static const cin:Array = new Array([-2058571880,162703268,1954013113,1684990159],[616797635,2139102022,-1098341944,1382377049]);

      public static function miquname(param1:int, param2:int) : String {
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
         _loc5_=wigaleqa[param1-5^268].length;
         while(_loc4_<_loc5_)
         {
            _loc6_=int(wigaleqa[param1-5^268][_loc4_]);
            _loc4_++;
            _loc7_=int(wigaleqa[param1-5^268][_loc4_]);
            _loc8_=2.654435769E9;
            _loc9_=8.4941944608E10;
            while(_loc9_!=0)
            {
               _loc7_=_loc7_-((_loc6_<<4^_loc6_>>>5)+_loc6_^_loc9_+int(cin[param2+3^-802][_loc9_>>>11&3]));
               _loc9_=_loc9_-_loc8_;
               _loc6_=_loc6_-((_loc7_<<4^_loc7_>>>5)+_loc7_^_loc9_+int(cin[param2+3^-802][_loc9_&3]));
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