package naj
{
   import qov.Kalefu;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.external.ExternalInterface;


   public class Seryriqak extends Kalefu
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Seryriqak() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const manutiwow:String = "rotmg.KabamDotComLib.getKabamGamePage";

      private static const bib:String = "https://www.kabam.com";

      private static const TOP:String = "_top";

      public var view:Kajoraqu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.addOnce(this.onClose);
         return;
      }

      private function onClose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         navigateToURL(new URLRequest(this.ninunyh()),TOP);
         return;
      }

      private function ninunyh() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = null;
         var _loc1_:String = bib;
         _loc2_=ExternalInterface.call(manutiwow);
         if((_loc2_)&&(_loc2_.length))
         {
            _loc1_=_loc2_;
         }
         return _loc1_;
      }
   }

}