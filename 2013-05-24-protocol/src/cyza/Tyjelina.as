package cyza
{
   import gag.Fijarih;
   import dopumitud.Jetemiqon;
   import ruwa.Account;
   import negirilu.Fuzi;
   import vavufer.Bicowu;
   import flash.net.SharedObject;
   import gag.Bysyg;
   import com.company.assembleegameclient.util.GUID;


   public class Tyjelina extends Fijarih implements Jetemiqon
   {
      public function Tyjelina() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var client:Fuzi;

      private var data:Bicowu;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qyved();
         if(this.data.username)
         {
            this.vol();
         }
         else
         {
            this.ceperoq();
         }
         return;
      }

      private function qyved() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var rotmg:SharedObject = null;
         this.data=new Bicowu();
         rotmg=SharedObject.getLocal("RotMG","/");
         return;
      }

      private function vol() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zehunisi = new Zehunisi();
         _loc1_.account=this.account;
         _loc1_.client=this.client;
         _loc1_.data=this.data;
         _loc1_.davifuju.addOnce(this.fywecip);
         _loc1_.start();
         return;
      }

      private function fywecip(param1:Bysyg, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         syjavimu(true);
         return;
      }

      private function ceperoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.tesaw(GUID.create(),null);
         syjavimu(true);
         return;
      }
   }

}