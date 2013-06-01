package wisic
{
[CLASS118]   import qiwyz.Bozakehy;
   import qiwyz.Pysyposy;
   import natus.Hewoda;
   import tinava.Busake;
   import flash.net.URLLoaderDataFormat;


   public class Rof extends Object implements Bozakehy
   {
      public function Rof() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.rolife=true;
         this.jelyha=0;
         this.dataFormat=URLLoaderDataFormat.TEXT;
         return;
      }

      public var loader:Pysyposy;

      public var setup:Hewoda;

      private var rolife:Boolean;

      private var jelyha:int;

      private var dataFormat:String;

      public function get complete() : Busake {
         return this.loader.complete;
      }

      public function sunomiz(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loader.sunomiz(param1);
         return;
      }

      public function qaz(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rolife=param1;
         return;
      }

      public function casegyma(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loader.casegyma(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.loader.sendRequest(this.nimos(param1),param2);
         return;
      }

      private function nimos(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.charAt(0)!="/")
         {
            param1="/"+param1;
         }
         return this.setup.static()+param1;
      }
   }
[/CLASS]
}