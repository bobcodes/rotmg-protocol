package lyfer
{
[CLASS732]   import flash.display.Sprite;
   import zib.Bebemed;
   import bikyvym.Voduzak;
   import tinava.Dab;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   import tinava.Busake;


   public class Fyfepovah extends Sprite implements Bebemed
   {
      public function Fyfepovah() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var wop:Voduzak;

      private const madibuwu:Dab = new Dab();

      private const jukyresyb:Dab = new Dab(Boolean);

      private const kiwebezoz:Dab = new Dab(uint,String,Boolean);

      private var loader:Loader;

      private var lowemycu;

      private var ditih:String;

      private var cohasizy:String;

      public function load(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wop.info("LiveSteamApi load");
         addChild(this.loader=new Loader());
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.jyhoseb);
         this.loader.load(new URLRequest(param1));
         return;
      }

      private function jyhoseb(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.jyhoseb);
         this.lowemycu=param1.target.content;
         this.lowemycu.addEventListener("STEAM_MICRO_TXN_AUTH",this.meh);
         this.viwov.dispatch();
         return;
      }

      private function meh(param1:*) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.wop.debug("LiveSteamApi onSteamMicroTxnAuthEvent: {0}",[this.cohasizy]);
         var _loc2_:uint = uint(param1.appID);
         var _loc3_:String = String(param1.orderID);
         var _loc4_:Boolean = Boolean(param1.isAuthorized);
         this.kiwebezoz.dispatch(_loc2_,_loc3_,_loc4_);
         return;
      }

      public function requestSessionTicket() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("LiveSteamApi requestSessionTicket");
         this.lowemycu.requestSessionTicket(this.kovico);
         return;
      }

      private function kovico(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = !(param1==null);
         this.wop.debug("LiveSteamApi sessionTicket: {0}",[this.cohasizy]);
         this.wypesic.dispatch(_loc2_);
         return;
      }

      public function nin() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Object = {};
         _loc1_.steamid=this.ditih=(this.ditih)||(this.lowemycu.getSteamID());
         _loc1_.sessionticket=this.cohasizy;
         return _loc1_;
      }

      public function danyhuw() : String {
         return this.lowemycu.getSteamID();
      }

      public function myruve(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.lowemycu.setStatFromInt(param1,param2);
         return;
      }

      public function get viwov() : Dab {
         return this.madibuwu;
      }

      public function get wypesic() : Dab {
         return this.jukyresyb;
      }

      public function get vibiqynyf() : Busake {
         return this.kiwebezoz;
      }

      public function getPersonaName() : String {
         return this.lowemycu.getPersonaName();
      }
   }
[/CLASS]
}