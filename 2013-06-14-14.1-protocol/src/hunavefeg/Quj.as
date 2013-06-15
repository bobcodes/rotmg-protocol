package hunavefeg
{


   public class Quj extends Error
   {
      public function Quj(param1:String, param2:*, param3:*) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.kiz=param2;
         this.sokegoj=param3;
         return;
      }

      private var kiz:Object;

      public function get curyqil() : Object {
         return this.kiz;
      }

      private var sokegoj:Object;

      public function get hukepej() : Object {
         return this.sokegoj;
      }
   }

}