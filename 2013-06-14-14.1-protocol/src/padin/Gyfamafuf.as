package padin
{
   import gycu.Siv;
   import flash.display.LoaderInfo;
   import tam.Sav;
   import tefabezo.Fipuji;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import hunavefeg.Depyrew;
   import refeced.Rytoquqo;
   import flash.display.DisplayObject;


   public class Gyfamafuf extends Siv
   {
      public function Gyfamafuf() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var ciqocu:Sav;

      public var qukacefi:Fipuji;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var con:Depyrew;

      private var pevojal:Rytoquqo;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.con.debug("startTask");
         this.qukacefi.ciqocu.addChild(this.ciqocu as DisplayObject);
         this.ciqocu.nelypef.addOnce(this.requestSessionTicket);
         this.ciqocu.load(this.info.RotmgParameters.steam_api_path);
         return;
      }

      private function requestSessionTicket() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.con.debug("requestSessionTicket");
         this.ciqocu.fysoq.addOnce(this.rogof);
         this.ciqocu.requestSessionTicket();
         return;
      }

      private function rogof(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.con.debug("session received - isValid? {0}",[param1]);
         if(param1)
         {
            dom(true);
         }
         else
         {
            this.tatosoqu();
         }
         return;
      }

      private function tatosoqu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pevojal=(this.pevojal)||(new Rytoquqo());
         this.pevojal.ok.addOnce(this.fibi);
         this.ridecy.dispatch(this.pevojal);
         return;
      }

      private function fibi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         this.requestSessionTicket();
         return;
      }
   }

}