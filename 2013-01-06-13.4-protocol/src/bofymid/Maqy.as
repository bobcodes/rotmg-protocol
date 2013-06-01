package bofymid
{
[CLASS201]   import flash.display.DisplayObjectContainer;
   import flash.system.Capabilities;
   import flash.display.LoaderInfo;


   public class Maqy extends Object
   {
      public function Maqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var platform:Hyf;

      public var root:DisplayObjectContainer;

      private const pom:String = "Desktop";

      public function lofy() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(Capabilities.playerType==this.pom);
      }

      public function tifo() : Boolean {
         return Capabilities.playerType==this.pom;
      }

      public function diwita() : Hyf {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return platform=(platform)||(this.kuviw());
      }

      private function kuviw() : Hyf {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = LoaderInfo(this.root.stage.root.loaderInfo).parameters;
         if(this.duh(_loc1_))
         {
            return Hyf.sajigif;
         }
         if(this.volulyw(_loc1_))
         {
            return Hyf.pohysiro;
         }
         if(this.sefynu(_loc1_))
         {
            return Hyf.zisako;
         }
         return Hyf.diku;
      }

      private function duh(param1:Object) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1.kongregate_api_path==null);
      }

      private function volulyw(param1:Object) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1.steam_api_path==null);
      }

      private function sefynu(param1:Object) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1.kabam_signed_request==null);
      }
   }
[/CLASS]
}