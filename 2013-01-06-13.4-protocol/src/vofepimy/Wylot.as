package vofepimy
{
[CLASS58]   import syfuqycy.Gyz;
   import leselo.Account;
   import qiwyz.Bozakehy;
   import dylaqezo.Vusun;
   import dutes.Lezoh;
   import rysuho.Gyry;
   import bikyvym.Voduzak;
   import flash.utils.Timer;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.util.Vokekizac;
   import flash.events.TimerEvent;


   public class Wylot extends Gyz
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wylot() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const zucenuby:int = 1000;

      public var account:Account;

      public var client:Bozakehy;

      public var model:Vusun;

      public var mikuqyf:Lezoh;

      public var fewan:Gyry;

      public var wop:Voduzak;

      private var tym:Object;

      private var jor:Timer;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.info("GetUserDataTask start");
         this.tym=this.metyvofop();
         this.sendRequest();
         Parameters.jugywebi=false;
         return;
      }

      private function sendRequest() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/list",this.tym);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.pot(param2);
         }
         else
         {
            this.qunanel(param2);
         }
         return;
      }

      public function metyvofop() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.game_net_user_id=this.account.fyp();
         _loc1_.game_net=this.account.myqem();
         _loc1_.play_platform=this.account.rom();
         _loc1_.do_login=Parameters.jugywebi;
         Vokekizac.jugajoj(_loc1_,this.account.dera());
         return _loc1_;
      }

      private function pot(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fewan.dispatch(XML(param1));
         pylebodyq(true);
         if(this.jor!=null)
         {
            this.qehehaku();
         }
         return;
      }

      private function qunanel(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mikuqyf.dispatch("error.loadError");
         if(param1=="Account credentials not valid")
         {
            this.rahikatud();
         }
         else
         {
            this.zikapoqif();
         }
         return;
      }

      private function rahikatud() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.info("GetUserDataTask invalid credentials");
         this.account.clear();
         this.client.sendRequest("/char/list",this.tym);
         return;
      }

      private function zikapoqif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.info("GetUserDataTask error - retrying");
         this.jor=new Timer(zucenuby,1);
         this.jor.addEventListener(TimerEvent.TIMER_COMPLETE,this.dyzepew);
         this.jor.start();
         return;
      }

      private function qehehaku() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jor.stop();
         this.jor.removeEventListener(TimerEvent.TIMER_COMPLETE,this.dyzepew);
         this.jor=null;
         return;
      }

      private function dyzepew(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qehehaku();
         this.sendRequest();
         return;
      }
   }
[/CLASS]
}