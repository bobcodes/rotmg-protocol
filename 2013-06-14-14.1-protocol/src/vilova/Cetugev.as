package vilova
{
   import gycu.Siv;
   import pugem.Account;
   import gokyc.Rud;
   import lemugo.Wokycuku;
   import pomujukir.Simoqo;
   import civino.Povaseh;
   import hunavefeg.Depyrew;
   import flash.utils.Timer;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.util.Bycaqa;
   import flash.events.TimerEvent;


   public class Cetugev extends Siv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cetugev() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const quculuf:int = 1000;

      public var account:Account;

      public var client:Rud;

      public var model:Wokycuku;

      public var jyhos:Simoqo;

      public var vujen:Povaseh;

      public var con:Depyrew;

      private var zajiqefe:Object;

      private var cynuvyfi:Timer;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.info("GetUserDataTask start");
         this.zajiqefe=this.hifuvah();
         this.sendRequest();
         RotmgParameters.jiqovezu=false;
         return;
      }

      private function sendRequest() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/char/list",this.zajiqefe);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.wihefona(param2);
         }
         else
         {
            this.jazig(param2);
         }
         return;
      }

      public function hifuvah() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.game_net_user_id=this.account.tamy();
         _loc1_.game_net=this.account.cug();
         _loc1_.play_platform=this.account.rarofu();
         _loc1_.do_login=RotmgParameters.jiqovezu;
         Bycaqa.timokujo(_loc1_,this.account.pedavitu());
         return _loc1_;
      }

      private function wihefona(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vujen.dispatch(XML(param1));
         dom(true);
         if(this.cynuvyfi!=null)
         {
            this.peh();
         }
         return;
      }

      private function jazig(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jyhos.dispatch("error.loadError");
         if(param1=="Account credentials not valid")
         {
            this.include();
         }
         else
         {
            this.mohogy();
         }
         return;
      }

      private function include() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.info("GetUserDataTask invalid credentials");
         this.account.clear();
         this.client.sendRequest("/char/list",this.zajiqefe);
         return;
      }

      private function mohogy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.info("GetUserDataTask error - retrying");
         this.cynuvyfi=new Timer(quculuf,1);
         this.cynuvyfi.addEventListener(TimerEvent.TIMER_COMPLETE,this.veqamovun);
         this.cynuvyfi.start();
         return;
      }

      private function peh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cynuvyfi.stop();
         this.cynuvyfi.removeEventListener(TimerEvent.TIMER_COMPLETE,this.veqamovun);
         this.cynuvyfi=null;
         return;
      }

      private function veqamovun(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.peh();
         this.sendRequest();
         return;
      }
   }

}