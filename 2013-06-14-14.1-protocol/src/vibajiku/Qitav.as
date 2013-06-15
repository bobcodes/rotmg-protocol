package vibajiku
{
   import flash.utils.Dictionary;
   import nizyfu.Musaj;
   import bud.Rekify;


   public class Qitav extends Object
   {
      public function Qitav(param1:Musaj, param2:Dictionary) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.vulowuli=param2;
         this.hegaqodyp=param1;
         return;
      }

      public var vulowuli:Dictionary;

      private var hegaqodyp:Musaj;

      public function zyly(param1:Class) : Rekify {
         return this.vulowuli[param1]=(this.vulowuli[param1])||(this.hegaqodyp.wifanymor(param1));
      }

      public function wojuloc(param1:Class, param2:Rekify) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vulowuli[param1]=param2;
         return;
      }
   }

}