package mulypagy
{
   import zevyd.Kujyketyh;
   import kam.tyl;
   import flash.display.LoaderInfo;
   import zevyd.Wufoduj;
   import flash.system.Capabilities;
   import flash.net.LocalConnection;


   public class Hycuqe extends Object implements Kujyketyh
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hycuqe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const qeq:String = "Desktop";

      private static const kuf:String = tyl.mileqalo(-904,-904);

      private static const fybe:String = "realmofthemadgod.appspot.com";

      private static const wykyd:String = "rotmgtesting.appspot.com";

      private static const penesyz:String = "Production";

      public var loaderInfo:LoaderInfo;

      public var nosedale:Fiponivu;

      private var hugyjoqyz:Boolean = false;

      private var vyrovevi:Wufoduj;

      public function hacohylat() : String {
         return "production".toLowerCase();
      }

      public function jozeguk() : Wufoduj {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.vyrovevi;
      }

      private function pityqawu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hugyjoqyz=true;
         this.rosaburul(this.hacohylat());
         return;
      }

      private function rosaburul(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = this.sib(param1);
         this.vyrovevi=_loc2_?Wufoduj.nobuta:this.nosedale.jozeguk(param1);
         return;
      }

      private function sib(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1==Fiponivu.piqyg&&!this.fitohoke();
      }

      private function fitohoke() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.wyvoged()?this.qilak():this.sof();
      }

      private function wyvoged() : Boolean {
         return Capabilities.playerType==qeq;
      }

      private function qilak() : Boolean {
         var _loc1_:Object = this.loaderInfo.parameters;
         return _loc1_.deployment==penesyz;
      }

      private function sof() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:LocalConnection = new LocalConnection();
         return _loc1_.domain==kuf||_loc1_.domain==fybe;
      }
   }

}