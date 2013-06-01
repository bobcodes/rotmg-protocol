package vofepimy
{
[CLASS736]   import syfuqycy.Gyz;
   import leselo.Account;
   import helepebas.Zedypina;
   import bikyvym.Voduzak;
   import qiwyz.Bozakehy;
   import flash.utils.getTimer;
   import com.company.assembleegameclient.util.offer.Offers;


   public class Vofulofin extends Gyz
   {
      public function Vofulofin() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var model:Zedypina;

      public var wop:Voduzak;

      public var client:Bozakehy;

      private var target:String;

      private var guid:String;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.target=this.account.pyfiqa()+"/getoffers";
         this.guid=this.account.getUserId();
         this.guwik();
         this.guzob();
         return;
      }

      private function guwik() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = getTimer();
         if(!(this.guid==this.model.tocizice)||_loc1_-this.model.pymup>Zedypina.wiqikal)
         {
            this.model.tocizice=this.guid;
            this.model.pymup=_loc1_;
         }
         return;
      }

      private function guzob() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest(this.target,this.diwywipi());
         return;
      }

      private function diwywipi() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.dera();
         _loc1_.time=this.model.pymup;
         _loc1_.game_net_user_id=this.account.fyp();
         _loc1_.game_net=this.account.myqem();
         _loc1_.play_platform=this.account.rom();
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.lahotypy(param2);
         }
         else
         {
            this.qunanel(param2);
         }
         pylebodyq(param1);
         return;
      }

      private function lahotypy(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model.cok=new Offers(new XML(param1));
         return;
      }

      private function qunanel(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wop.error(param1);
         return;
      }
   }
[/CLASS]
}