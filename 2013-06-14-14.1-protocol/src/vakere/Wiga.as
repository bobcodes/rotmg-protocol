package vakere
{
   import gokyc.Rud;
   import gokyc.Cyn;
   import daqun.Qobeta;
   import mukyrosu.Cisymifok;
   import flash.net.URLLoaderDataFormat;


   public class Wiga extends Object implements Rud
   {
      public function Wiga() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.fyzelare=true;
         this.hyhaj=0;
         this.dataFormat=URLLoaderDataFormat.TEXT;
         return;
      }

      public var loader:Cyn;

      public var setup:Qobeta;

      private var fyzelare:Boolean;

      private var hyhaj:int;

      private var dataFormat:String;

      public function get complete() : Cisymifok {
         return this.loader.complete;
      }

      public function dolutah(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.dolutah(param1);
         return;
      }

      public function sog(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fyzelare=param1;
         return;
      }

      public function kesanij(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.kesanij(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.loader.sendRequest(this.deci(param1),param2);
         return;
      }

      private function deci(param1:String) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.charAt(0)!="/")
         {
            param1="/"+param1;
         }
         return this.setup.kegadag()+param1;
      }
   }

}