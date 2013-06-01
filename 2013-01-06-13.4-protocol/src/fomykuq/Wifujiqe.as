package fomykuq
{
[CLASS855]   import bikyvym.Voduzak;
   import bikyvym.Kynidamy;
   import flash.utils.getTimer;


   public class Wifujiqe extends Object implements Voduzak
   {
      public function Wifujiqe(param1:Object, param2:Kynidamy) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.kafefuj=param1;
         this.vur=param2;
         return;
      }

      private var kafefuj:Object;

      private var vur:Kynidamy;

      public function debug(param1:*, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vur.log(this.kafefuj,32,getTimer(),param1,param2);
         return;
      }

      public function info(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vur.log(this.kafefuj,16,getTimer(),param1,param2);
         return;
      }

      public function zygugoqi(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vur.log(this.kafefuj,8,getTimer(),param1,param2);
         return;
      }

      public function error(param1:*, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vur.log(this.kafefuj,4,getTimer(),param1,param2);
         return;
      }

      public function bajipib(param1:*, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vur.log(this.kafefuj,2,getTimer(),param1,param2);
         return;
      }
   }
[/CLASS]
}