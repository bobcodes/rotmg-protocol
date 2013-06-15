package tetapovuw
{
   import tytojonib.Kyjefe;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.external.ExternalInterface;


   public class Mowy extends Kyjefe
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mowy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const mekycogan:String = "rotmg.KabamDotComLib.getKabamGamePage";

      private static const leput:String = "https://www.kabam.com";

      private static const TOP:String = "_top";

      public var view:Tanuf;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.addOnce(this.lyb);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         navigateToURL(new URLRequest(this.sorebukyn()),TOP);
         return;
      }

      private function sorebukyn() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = null;
         var _loc1_:String = leput;
         _loc2_=ExternalInterface.call(mekycogan);
         if((_loc2_)&&(_loc2_.length))
         {
            _loc1_=_loc2_;
         }
         return _loc1_;
      }
   }

}