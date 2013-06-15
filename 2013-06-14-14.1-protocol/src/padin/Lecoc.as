package padin
{
   import flash.display.Sprite;
   import tam.Sav;
   import hunavefeg.Depyrew;
   import mukyrosu.Qanyduk;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   import mukyrosu.Cisymifok;


   public class Lecoc extends Sprite implements Sav
   {
      public function Lecoc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var con:Depyrew;

      private const kuc:Qanyduk = new Qanyduk();

      private const cuhyb:Qanyduk = new Qanyduk(Boolean);

      private const woza:Qanyduk = new Qanyduk(uint,String,Boolean);

      private var loader:Loader;

      private var ciqocu;

      private var titesorid:String;

      private var zuv:String;

      public function load(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.con.info("LiveSteamApi load");
         addChild(this.loader=new Loader());
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.pevi);
         this.loader.load(new URLRequest(param1));
         return;
      }

      private function pevi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.pevi);
         this.ciqocu=param1.target.content;
         this.ciqocu.addEventListener("STEAM_MICRO_TXN_AUTH",this.rati);
         this.nelypef.dispatch();
         return;
      }

      private function rati(param1:*) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.con.debug("LiveSteamApi onSteamMicroTxnAuthEvent: {0}",[this.zuv]);
         var _loc2_:uint = uint(param1.appID);
         var _loc3_:String = String(param1.orderID);
         var _loc4_:Boolean = Boolean(param1.isAuthorized);
         this.woza.dispatch(_loc2_,_loc3_,_loc4_);
         return;
      }

      public function requestSessionTicket() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.con.debug("LiveSteamApi requestSessionTicket");
         this.ciqocu.requestSessionTicket(this.vyraj);
         return;
      }

      private function vyraj(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = !(param1==null);
         this.con.debug("LiveSteamApi sessionTicket: {0}",[this.zuv]);
         this.fysoq.dispatch(_loc2_);
         return;
      }

      public function zico() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Object = {};
         _loc1_.steamid=this.titesorid=(this.titesorid)||(this.ciqocu.getSteamID());
         _loc1_.sessionticket=this.zuv;
         return _loc1_;
      }

      public function lakovoma() : String {
         return this.ciqocu.getSteamID();
      }

      public function zahigequv(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ciqocu.setStatFromInt(param1,param2);
         return;
      }

      public function get nelypef() : Qanyduk {
         return this.kuc;
      }

      public function get fysoq() : Qanyduk {
         return this.cuhyb;
      }

      public function get syha() : Cisymifok {
         return this.woza;
      }

      public function getPersonaName() : String {
         return this.ciqocu.getPersonaName();
      }
   }

}