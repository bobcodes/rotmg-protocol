package komawowag
{


   public class Pazu extends Error
   {
      public function Pazu(param1:String, param2:*, param3:*) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.hybosily=param2;
         this.pynufini=param3;
         return;
      }

      private var hybosily:Object;

      public function get kapa() : Object {
         return this.hybosily;
      }

      private var pynufini:Object;

      public function get hiris() : Object {
         return this.pynufini;
      }
   }

}