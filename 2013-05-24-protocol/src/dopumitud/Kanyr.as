package dopumitud
{
   import gag.Fijarih;
   import aaa.rotmg.account.Account;
   import nasokuqa.Lotop;
   import komawowag.Becepog;
   import aaa.rotmg.net.HttpClientWrapper;
   import flash.utils.getTimer;
   import com.company.assembleegameclient.util.offer.Offers;


   public class Kanyr extends Fijarih
   {
      public function Kanyr() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var model:Lotop;

      public var qiqely:Becepog;

      public var client:HttpClientWrapper;

      private var target:String;

      private var guid:String;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.target=this.account.nuce()+"/getoffers";
         this.guid=this.account.getUserId();
         this.citekopu();
         this.vosewu();
         return;
      }

      private function citekopu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = getTimer();
         if(!(this.guid==this.model.niziwyh)||_loc1_-this.model.byryqapu>Lotop.zigota)
         {
            this.model.niziwyh=this.guid;
            this.model.byryqapu=_loc1_;
         }
         return;
      }

      private function vosewu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest(this.target,this.wyh());
         return;
      }

      private function wyh() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.venupog();
         _loc1_.time=this.model.byryqapu;
         _loc1_.game_net_user_id=this.account.zyz();
         _loc1_.game_net=this.account.getGameNet();
         _loc1_.play_platform=this.account.getPlayPlatform();
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.zanonoly(param2);
         }
         else
         {
            this.zotah(param2);
         }
         syjavimu(param1);
         return;
      }

      private function zanonoly(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.mynuroqyl=new Offers(new XML(param1));
         return;
      }

      private function zotah(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qiqely.error(param1);
         return;
      }
   }

}