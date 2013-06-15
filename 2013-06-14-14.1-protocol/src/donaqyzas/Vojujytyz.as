package donaqyzas
{
   import hunavefeg.Depyrew;
   import hunavefeg.Puka;
   import flash.utils.getTimer;


   public class Vojujytyz extends Object implements Depyrew
   {
      public function Vojujytyz(param1:Object, param2:Puka) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.wyw=param1;
         this.rafek=param2;
         return;
      }

      private var wyw:Object;

      private var rafek:Puka;

      public function debug(param1:*, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.rafek.log(this.wyw,32,getTimer(),param1,param2);
         return;
      }

      public function info(param1:*, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.rafek.log(this.wyw,16,getTimer(),param1,param2);
         return;
      }

      public function bec(param1:*, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.rafek.log(this.wyw,8,getTimer(),param1,param2);
         return;
      }

      public function error(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.rafek.log(this.wyw,4,getTimer(),param1,param2);
         return;
      }

      public function lapyzet(param1:*, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.rafek.log(this.wyw,2,getTimer(),param1,param2);
         return;
      }
   }

}