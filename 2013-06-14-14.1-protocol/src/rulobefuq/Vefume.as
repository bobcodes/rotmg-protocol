package rulobefuq
{
   import flash.system.Security;
   import flash.net.LocalConnection;
   import kam.tyl;


   public class Vefume extends Object
   {
      public function Vefume() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const bac:String = "localhost";

      private const lucaqysy:Array = [tyl.mileqalo(-904,-904),"realmofthemadgod.appspot.com"];

      private const fypidutym:Array = [tyl.mileqalo(-905,-905),"rotmgtesting.appspot.com"];

      private const doweq:Array = ["xlate.kabam.com"];

      private const pem:Array = this.lucaqysy.concat(this.fypidutym).concat(this.doweq);

      public var client:Hahukora;

      private var conegi:String;

      public function tac() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         for each (_loc1_ in this.pem)
         {
            Security.allowDomain(_loc1_);
         }
         return;
      }

      public function lale() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.client.gypypapis())||(this.zorik());
      }

      public function kydaper() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.gibuv();
         return !(this.lucaqysy.indexOf(_loc1_)==-1);
      }

      private function zorik() : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         var _loc1_:String = this.gibuv();
         var _loc2_:* = _loc1_==this.bac;
         for each (_loc3_ in this.pem)
         {
            _loc2_=(_loc2_)||_loc1_==_loc3_;
         }
         return _loc2_;
      }

      private function gibuv() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.conegi=(this.conegi)||(new LocalConnection().domain);
      }
   }

}