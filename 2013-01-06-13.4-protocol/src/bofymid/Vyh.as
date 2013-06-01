package bofymid
{
[CLASS198]   import flash.system.Security;
   import flash.net.LocalConnection;
   import bywyhiguj.hebesuco;


   public class Vyh extends Object
   {
      public function Vyh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const hyt:String = "localhost";

      private const nyp:Array = [hebesuco.keri(543,243),"realmofthemadgod.appspot.com"];

      private const fova:Array = [hebesuco.keri(544,244),"rotmgtesting.appspot.com"];

      private const kygybobol:Array = ["xlate.kabam.com"];

      private const wyzunura:Array = this.nyp.concat(this.fova).concat(this.kygybobol);

      public var client:Maqy;

      private var zysatedal:String;

      public function wir() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = null;
         for each (_loc1_ in this.wyzunura)
         {
            Security.allowDomain(_loc1_);
         }
         return;
      }

      public function nofakije() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.client.tifo())||(this.rukarel());
      }

      public function fip() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.vabunel();
         return !(this.nyp.indexOf(_loc1_)==-1);
      }

      private function rukarel() : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         var _loc1_:String = this.vabunel();
         var _loc2_:* = _loc1_==this.hyt;
         for each (_loc3_ in this.wyzunura)
         {
            _loc2_=(_loc2_)||_loc1_==_loc3_;
         }
         return _loc2_;
      }

      private function vabunel() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.zysatedal=(this.zysatedal)||(new LocalConnection().domain);
      }
   }
[/CLASS]
}