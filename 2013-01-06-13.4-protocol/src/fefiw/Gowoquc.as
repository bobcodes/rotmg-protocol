package fefiw
{
[CLASS644]   import tysenyzy.Zovisis;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.external.ExternalInterface;


   public class Gowoquc extends Zovisis
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gowoquc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const nohyvy:String = "rotmg.KabamDotComLib.getKabamGamePage";

      private static const kygysumas:String = "https://www.kabam.com";

      private static const TOP:String = "_top";

      public var view:Gefu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.addOnce(this.pikymasa);
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         navigateToURL(new URLRequest(this.tefesiv()),TOP);
         return;
      }

      private function tefesiv() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = null;
         var _loc1_:String = kygysumas;
         _loc2_=ExternalInterface.call(nohyvy);
         if((_loc2_)&&(_loc2_.length))
         {
            _loc1_=_loc2_;
         }
         return _loc1_;
      }
   }
[/CLASS]
}