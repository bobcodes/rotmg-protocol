package likikul
{
   import flash.display.DisplayObjectContainer;
   import flash.system.Capabilities;
   import flash.display.LoaderInfo;


   public class Wubeh extends Object
   {
      public function Wubeh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var platform:Qiwawal;

      public var root:DisplayObjectContainer;

      private const sugiri:String = "Desktop";

      public function jibumuriz() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(Capabilities.playerType==this.sugiri);
      }

      public function pesigemut() : Boolean {
         return Capabilities.playerType==this.sugiri;
      }

      public function kykazabu() : Qiwawal {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return platform=(platform)||(this.vukeb());
      }

      private function vukeb() : Qiwawal {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = LoaderInfo(this.root.stage.root.loaderInfo).parameters;
         if(this.riqajes(_loc1_))
         {
            return Qiwawal.qel;
         }
         if(this.fukidysi(_loc1_))
         {
            return Qiwawal.luk;
         }
         if(this.wigeqewy(_loc1_))
         {
            return Qiwawal.nacigivu;
         }
         return Qiwawal.wetef;
      }

      private function riqajes(param1:Object) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1.kongregate_api_path==null);
      }

      private function fukidysi(param1:Object) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1.steam_api_path==null);
      }

      private function wigeqewy(param1:Object) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1.kabam_signed_request==null);
      }
   }

}