package taruco
{
   import flash.display.Sprite;
   import wuwulyni.Wyzazeqi;
   import sygoquja.Loty;
   import hunavefeg.Depyrew;
   import mukyrosu.Qanyduk;
   import flash.display.Loader;
   import flash.system.Security;
   import flash.events.Event;
   import flash.net.URLRequest;


   public class Kobydo extends Sprite implements Hosoqoqy
   {
      public function Kobydo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.kuc=new Qanyduk();
         this.dimytasy=new Qanyduk(Object);
         return;
      }

      public var local:Wyzazeqi;

      public var syciqiwez:Loty;

      public var con:Depyrew;

      private var kuc:Qanyduk;

      private var dimytasy:Qanyduk;

      private var loader:Loader;

      private var ciqocu;

      public function load(param1:String) : void {
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS4]_loc4_:* = [/OFS]true;
         [OFS8]Security[/OFS].[OFS12]allowDomain[/OFS][OFS12]([/OFS][OFS11]param1[/OFS][OFS12])[/OFS];
         this.[OFS17]con[/OFS].[OFS23]info[/OFS][OFS23]([/OFS][OFS20]"kongregate api loading"[/OFS][OFS23])[/OFS];
         [OFS45]addChild[/OFS][OFS45]([/OFS]this.[OFS39]loader[/OFS][OFS39]=[/OFS][OFS33]new [/OFS][OFS33]Loader[/OFS][OFS33]([/OFS][OFS33])[/OFS][OFS45])[/OFS];
         this.[OFS49]loader[/OFS].[OFS52]contentLoaderInfo[/OFS].[OFS64]addEventListener[/OFS][OFS64]([/OFS][OFS55]Event[/OFS].[OFS57]COMPLETE[/OFS][OFS64],[/OFS]this.[OFS61]pevi[/OFS][OFS64])[/OFS];
         this.[OFS68]loader[/OFS].[OFS79]load[/OFS][OFS79]([/OFS][OFS75]new [/OFS][OFS75]URLRequest[/OFS][OFS75]([/OFS][OFS74]param1[/OFS][OFS75])[/OFS][OFS79])[/OFS];
         [OFS83]return[/OFS];
      }

      private function pevi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.pevi);
         this.ciqocu=param1.target.content;
         this.ciqocu.services.connect();
         this.lujywykyc();
         this.nelypef.dispatch();
         this.con.info("kongregate api loaded");
         return;
      }

      private function lujywykyc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.ciqocu.services.isGuest())
         {
            this.con.info("kongregate guest detected - listening for external login");
            this.ciqocu.services.addEventListener("login",this.begutijed);
         }
         return;
      }

      private function begutijed(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.con.info("external login from kongregate detected");
         this.syciqiwez.dispatch();
         return;
      }

      public function get nelypef() : Qanyduk {
         return this.kuc;
      }

      public function fijehiv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.con.info("showRegistrationBox request sent to kongregate");
         this.ciqocu.services.showRegistrationBox();
         return;
      }

      public function isGuest() : Boolean {
         return this.ciqocu.services.isGuest();
      }

      public function tiredin() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.userId=this.ciqocu.services.getUserId();
         _loc1_.username=this.ciqocu.services.getUsername();
         _loc1_.gameAuthToken=this.ciqocu.services.getGameAuthToken();
         return _loc1_;
      }

      public function zahigequv(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ciqocu.stats.submit(param1,param2);
         return;
      }

      public function dodet() : String {
         return this.ciqocu.services.getUsername();
      }

      public function getUserId() : String {
         return this.ciqocu.services.getUserId();
      }

      public function purchaseItems(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ciqocu.mtx.purchaseItems([param1],this.gubebinu);
         return;
      }

      private function gubebinu(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dimytasy.dispatch(param1);
         return;
      }

      public function get vomabejo() : Qanyduk {
         return this.dimytasy;
      }
   }

}