package wuwulyni
{
   import gycu.Siv;
   import vilova.Zin;
   import flash.display.LoaderInfo;
   import taruco.Hosoqoqy;
   import tefabezo.Fipuji;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import flash.system.Security;
   import flash.display.DisplayObject;


   public class Kizedi extends Siv implements Zin
   {
      public function Kizedi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var ciqocu:Hosoqoqy;

      public var local:Wyzazeqi;

      public var qukacefi:Fipuji;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.info.RotmgParameters.kongregate_api_path;
         Security.allowDomain(_loc1_);
         this.qukacefi.ciqocu.addChild(this.ciqocu as DisplayObject);
         this.ciqocu.nelypef.addOnce(this.beretik);
         this.ciqocu.load(_loc1_);
         return;
      }

      private function beretik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         dom(true);
         return;
      }
   }

}