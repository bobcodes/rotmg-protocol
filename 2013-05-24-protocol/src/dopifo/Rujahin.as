package dopifo
{
   import aaa.rotmg.net.HttpClientWrapper;
   import aaaa.rotmg.net.HttpClient;
   import aaa.rotmg.config.GoogleAppConfig;
   import tulunyno.Vobaqe;
   import flash.net.URLLoaderDataFormat;


   public class Rujahin extends Object implements HttpClientWrapper
   {
      public function Rujahin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.lujoqi=true;
         this.pasyhumi=0;
         this.dataFormat=URLLoaderDataFormat.TEXT;
         return;
      }

      public var loader:HttpClient;

      public var setup:GoogleAppConfig;

      private var lujoqi:Boolean;

      private var pasyhumi:int;

      private var dataFormat:String;

      public function get complete() : Vobaqe {
         return this.loader.complete;
      }

      public function sucunuj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.sucunuj(param1);
         return;
      }

      public function cyhel(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lujoqi=param1;
         return;
      }

      public function fug(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.fug(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.loader.sendRequest(this.buf(param1),param2);
         return;
      }

      private function buf(param1:String) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.charAt(0)!="/")
         {
            param1="/"+param1;
         }
         return this.setup.getRotmgAppUrl()+param1;
      }
   }

}