package dopumitud
{
   import gag.Fijarih;
   import ruwa.Account;
   import negirilu.Fuzi;
   import hotewa.Baqifa;
   import raqu.Mezafi;
   import jiha.Kysysine;
   import komawowag.Becepog;
   import flash.utils.Timer;
   import aaa.rotmg.config.UserConfig;
   import com.company.util.Vuwewuc;
   import flash.events.TimerEvent;


   public class Wib extends Fijarih
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wib() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const dutajoqi:int = 1000;

      public var account:Account;

      public var client:Fuzi;

      public var model:Baqifa;

      public var ticekati:Mezafi;

      public var visakopu:Kysysine;

      public var qiqely:Becepog;

      private var mevyban:Object;

      private var lunakepow:Timer;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.info("GetUserDataTask start");
         this.mevyban=this.lemasoqu();
         this.sendRequest();
         UserConfig.niqeqoly=false;
         return;
      }

      private function sendRequest() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/list",this.mevyban);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.qija(param2);
         }
         else
         {
            this.zotah(param2);
         }
         return;
      }

      public function lemasoqu() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.game_net_user_id=this.account.zyz();
         _loc1_.game_net=this.account.vajydor();
         _loc1_.play_platform=this.account.bicydyn();
         _loc1_.do_login=UserConfig.niqeqoly;
         Vuwewuc.hohohev(_loc1_,this.account.venupog());
         return _loc1_;
      }

      private function qija(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.visakopu.dispatch(XML(param1));
         syjavimu(true);
         if(this.lunakepow!=null)
         {
            this.letikakid();
         }
         return;
      }

      private function zotah(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ticekati.dispatch("error.loadError");
         if(param1=="Account credentials not valid")
         {
            this.votol();
         }
         else
         {
            this.tysimy();
         }
         return;
      }

      private function votol() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.info("GetUserDataTask invalid credentials");
         this.account.clear();
         this.client.sendRequest("/char/list",this.mevyban);
         return;
      }

      private function tysimy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.info("GetUserDataTask error - retrying");
         this.lunakepow=new Timer(dutajoqi,1);
         this.lunakepow.addEventListener(TimerEvent.TIMER_COMPLETE,this.jed);
         this.lunakepow.start();
         return;
      }

      private function letikakid() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lunakepow.stop();
         this.lunakepow.removeEventListener(TimerEvent.TIMER_COMPLETE,this.jed);
         this.lunakepow=null;
         return;
      }

      private function jed(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.letikakid();
         this.sendRequest();
         return;
      }
   }

}