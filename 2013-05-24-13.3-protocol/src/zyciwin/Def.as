package zyciwin
{
   import flash.display.Sprite;
   import cyt.Zivovype;
   import komawowag.Becepog;
   import tulunyno.Hugyqufyq;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   import tulunyno.Vobaqe;


   public class Def extends Sprite implements Zivovype
   {
      public function Def() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qiqely:Becepog;

      private const jap:Hugyqufyq = new Hugyqufyq();

      private const jiwiwi:Hugyqufyq = new Hugyqufyq(Boolean);

      private const ripa:Hugyqufyq = new Hugyqufyq(uint,String,Boolean);

      private var loader:Loader;

      private var zefy;

      private var gimoni:String;

      private var vofir:String;

      public function load(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qiqely.info("LiveSteamApi load");
         addChild(this.loader=new Loader());
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.niforuqef);
         this.loader.load(new URLRequest(param1));
         return;
      }

      private function niforuqef(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.niforuqef);
         this.zefy=param1.target.content;
         this.zefy.addEventListener("STEAM_MICRO_TXN_AUTH",this.cuzuse);
         this.qefijo.dispatch();
         return;
      }

      private function cuzuse(param1:*) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.qiqely.debug("LiveSteamApi onSteamMicroTxnAuthEvent: {0}",[this.vofir]);
         var _loc2_:uint = uint(param1.appID);
         var _loc3_:String = String(param1.orderID);
         var _loc4_:Boolean = Boolean(param1.isAuthorized);
         this.ripa.dispatch(_loc2_,_loc3_,_loc4_);
         return;
      }

      public function requestSessionTicket() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.debug("LiveSteamApi requestSessionTicket");
         this.zefy.requestSessionTicket(this.wego);
         return;
      }

      private function wego(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = !(param1==null);
         this.qiqely.debug("LiveSteamApi sessionTicket: {0}",[this.vofir]);
         this.ratosuk.dispatch(_loc2_);
         return;
      }

      public function hypo() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Object = {};
         _loc1_.steamid=this.gimoni=(this.gimoni)||(this.zefy.getSteamID());
         _loc1_.sessionticket=this.vofir;
         return _loc1_;
      }

      public function berygo() : String {
         return this.zefy.getSteamID();
      }

      public function bipegy(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zefy.setStatFromInt(param1,param2);
         return;
      }

      public function get qefijo() : Hugyqufyq {
         return this.jap;
      }

      public function get ratosuk() : Hugyqufyq {
         return this.jiwiwi;
      }

      public function get fuperyp() : Vobaqe {
         return this.ripa;
      }

      public function getPersonaName() : String {
         return this.zefy.getPersonaName();
      }
   }

}