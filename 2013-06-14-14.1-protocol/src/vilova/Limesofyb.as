package vilova
{
   import gycu.Siv;
   import pugem.Account;
   import kylelimib.Zazasinip;
   import hunavefeg.Depyrew;
   import gokyc.Rud;
   import flash.utils.getTimer;
   import com.company.assembleegameclient.util.offer.Offers;


   public class Limesofyb extends Siv
   {
      public function Limesofyb() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var model:Zazasinip;

      public var con:Depyrew;

      public var client:Rud;

      private var target:String;

      private var guid:String;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.target=this.account.vyj()+"/getoffers";
         this.guid=this.account.getUserId();
         this.ninupowi();
         this.menini();
         return;
      }

      private function ninupowi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = getTimer();
         if(!(this.guid==this.model.fytes)||_loc1_-this.model.mavuq>Zazasinip.cebypugaq)
         {
            this.model.fytes=this.guid;
            this.model.mavuq=_loc1_;
         }
         return;
      }

      private function menini() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest(this.target,this.zamuhezi());
         return;
      }

      private function zamuhezi() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.pedavitu();
         _loc1_.time=this.model.mavuq;
         _loc1_.game_net_user_id=this.account.tamy();
         _loc1_.game_net=this.account.cug();
         _loc1_.play_platform=this.account.rarofu();
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.ninit(param2);
         }
         else
         {
            this.jazig(param2);
         }
         dom(param1);
         return;
      }

      private function ninit(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model.puputazes=new Offers(new XML(param1));
         return;
      }

      private function jazig(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.con.error(param1);
         return;
      }
   }

}