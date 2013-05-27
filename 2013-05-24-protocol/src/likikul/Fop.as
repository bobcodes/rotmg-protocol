package likikul
{
   import flash.system.Security;
   import flash.net.LocalConnection;
   import cocyrycag.sicebesyq;


   public class Fop extends Object
   {
      public function Fop() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const cag:String = "localhost";

      private const tequbaj:Array = [sicebesyq.miquname(274,-804),"realmofthemadgod.appspot.com"];

      private const rotihudy:Array = [sicebesyq.miquname(273,-805),"rotmgtesting.appspot.com"];

      private const kasonobe:Array = ["xlate.kabam.com"];

      private const tyh:Array = this.tequbaj.concat(this.rotihudy).concat(this.kasonobe);

      public var client:Wubeh;

      private var zipidy:String;

      public function saqilibur() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = null;
         for each (_loc1_ in this.tyh)
         {
            Security.allowDomain(_loc1_);
         }
         return;
      }

      public function diwur() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.client.pesigemut())||(this.fovusok());
      }

      public function mefobi() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.quqat();
         return !(this.tequbaj.indexOf(_loc1_)==-1);
      }

      private function fovusok() : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         var _loc1_:String = this.quqat();
         var _loc2_:* = _loc1_==this.cag;
         for each (_loc3_ in this.tyh)
         {
            _loc2_=(_loc2_)||_loc1_==_loc3_;
         }
         return _loc2_;
      }

      private function quqat() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.zipidy=(this.zipidy)||(new LocalConnection().domain);
      }
   }

}