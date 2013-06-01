package voryzijow
{
   import voto.Cala;
   import cocyrycag.sicebesyq;
   import flash.display.LoaderInfo;
   import voto.Nemo;
   import flash.system.Capabilities;
   import flash.net.LocalConnection;


   public class Nujyfo extends Object implements Cala
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nujyfo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const sugiri:String = "Desktop";

      private static const rowaky:String = sicebesyq.miquname(274,-804);

      private static const licy:String = "realmofthemadgod.appspot.com";

      private static const wota:String = "rotmgtesting.appspot.com";

      private static const rirudud:String = "Production";

      public var loaderInfo:LoaderInfo;

      public var wodiryvah:Surodimes;

      private var wodejivuf:Boolean = false;

      private var rasibaj:Nemo;

      public function higodoqo() : String {
         return "production".toLowerCase();
      }

      public function jeluf() : Nemo {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.rasibaj;
      }

      private function manejekev() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wodejivuf=true;
         this.buwarunah(this.higodoqo());
         return;
      }

      private function buwarunah(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = this.fynis(param1);
         this.rasibaj=_loc2_?Nemo.duke:this.wodiryvah.jeluf(param1);
         return;
      }

      private function fynis(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1==Surodimes.baby&&!this.qigosaky();
      }

      private function qigosaky() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.ronale()?this.cogyp():this.vyv();
      }

      private function ronale() : Boolean {
         return Capabilities.playerType==sugiri;
      }

      private function cogyp() : Boolean {
         var _loc1_:Object = this.loaderInfo.parameters;
         return _loc1_.deployment==rirudud;
      }

      private function vyv() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:LocalConnection = new LocalConnection();
         return _loc1_.domain==rowaky||_loc1_.domain==licy;
      }
   }

}