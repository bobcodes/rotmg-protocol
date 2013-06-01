package fifup
{
[CLASS1601]

   public class Diqurybuj extends Object
   {
      public function Diqurybuj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function velecula(param1:String, param2:Array) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(param2)
         {
            _loc3_=param2.length;
            _loc4_=0;
            while(_loc4_<_loc3_)
            {
               param1=param1.split("{"+_loc4_+"}").join(param2[_loc4_]);
               _loc4_++;
            }
         }
         return param1;
      }
   }
[/CLASS]
}