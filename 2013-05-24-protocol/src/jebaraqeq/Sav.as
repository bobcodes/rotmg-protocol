package jebaraqeq
{
   import komawowag.Becepog;
   import komawowag.Bep;
   import flash.utils.getTimer;


   public class Sav extends Object implements Becepog
   {
      public function Sav(param1:Object, param2:Bep) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.soruwa=param1;
         this.hahu=param2;
         return;
      }

      private var soruwa:Object;

      private var hahu:Bep;

      public function debug(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hahu.log(this.soruwa,32,getTimer(),param1,param2);
         return;
      }

      public function info(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hahu.log(this.soruwa,16,getTimer(),param1,param2);
         return;
      }

      public function mywid(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hahu.log(this.soruwa,8,getTimer(),param1,param2);
         return;
      }

      public function error(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hahu.log(this.soruwa,4,getTimer(),param1,param2);
         return;
      }

      public function murotyliv(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hahu.log(this.soruwa,2,getTimer(),param1,param2);
         return;
      }
   }

}