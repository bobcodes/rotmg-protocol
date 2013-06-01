package jalo
{
[CLASS222]   import minobyb.Vol;
   import bywyhiguj.hebesuco;
   import flash.display.LoaderInfo;
   import minobyb.Pycilylu;
   import flash.system.Capabilities;
   import flash.net.LocalConnection;


   public class Puz extends Object implements Vol
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Puz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const pom:String = "Desktop";

      private static const jusymo:String = hebesuco.keri(543,243);

      private static const wulyvo:String = "realmofthemadgod.appspot.com";

      private static const zoge:String = "rotmgtesting.appspot.com";

      private static const zigimo:String = "Production";

      public var loaderInfo:LoaderInfo;

      public var hifaryqe:Berasode;

      private var mobibope:Boolean = false;

      private var tafuv:Pycilylu;

      public function lenurakid() : String {
         return "production".toLowerCase();
      }

      public function surusul() : Pycilylu {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.tafuv;
      }

      private function wehitaso() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mobibope=true;
         this.tofykac(this.lenurakid());
         return;
      }

      private function tofykac(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = this.hipucevo(param1);
         this.tafuv=_loc2_?Pycilylu.wybebic:this.hifaryqe.surusul(param1);
         return;
      }

      private function hipucevo(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1==Berasode.vusif&&!this.lyri();
      }

      private function lyri() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.fypodyzas()?this.zypewyqyw():this.fiq();
      }

      private function fypodyzas() : Boolean {
         return Capabilities.playerType==pom;
      }

      private function zypewyqyw() : Boolean {
         var _loc1_:Object = this.loaderInfo.parameters;
         return _loc1_.deployment==zigimo;
      }

      private function fiq() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:LocalConnection = new LocalConnection();
         return _loc1_.domain==jusymo||_loc1_.domain==wulyvo;
      }
   }
[/CLASS]
}