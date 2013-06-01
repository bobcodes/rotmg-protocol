package tizozowof
{
[CLASS742]   import flash.display.Sprite;
   import jyfugaq.Pesuqarut;
   import vakelac.Rifi;
   import bikyvym.Voduzak;
   import tinava.Dab;
   import flash.display.Loader;
   import flash.system.Security;
   import flash.events.Event;
   import flash.net.URLRequest;


   public class Kyju extends Sprite implements Fedyl
   {
      public function Kyju() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.madibuwu=new Dab();
         this.cyvyfevym=new Dab(Object);
         return;
      }

      public var local:Pesuqarut;

      public var hifitu:Rifi;

      public var wop:Voduzak;

      private var madibuwu:Dab;

      private var cyvyfevym:Dab;

      private var loader:Loader;

      private var lowemycu;

      public function load(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         Security.allowDomain(param1);
         this.wop.info("kongregate api loading");
         addChild(this.loader=new Loader());
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.jyhoseb);
         this.loader.load(new URLRequest(param1));
         return;
      }

      private function jyhoseb(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.jyhoseb);
         this.lowemycu=param1.target.content;
         this.lowemycu.services.connect();
         this.nuqymy();
         this.viwov.dispatch();
         this.wop.info("kongregate api loaded");
         return;
      }

      private function nuqymy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.lowemycu.services.isGuest())
         {
            this.wop.info("kongregate guest detected - listening for external login");
            this.lowemycu.services.addEventListener("login",this.wigudiw);
         }
         return;
      }

      private function wigudiw(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.info("external login from kongregate detected");
         this.hifitu.dispatch();
         return;
      }

      public function get viwov() : Dab {
         return this.madibuwu;
      }

      public function resu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.info("showRegistrationBox request sent to kongregate");
         this.lowemycu.services.showRegistrationBox();
         return;
      }

      public function isGuest() : Boolean {
         return this.lowemycu.services.isGuest();
      }

      public function wapen() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {};
         _loc1_.userId=this.lowemycu.services.getUserId();
         _loc1_.username=this.lowemycu.services.getUsername();
         _loc1_.gameAuthToken=this.lowemycu.services.getGameAuthToken();
         return _loc1_;
      }

      public function myruve(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.lowemycu.stats.submit(param1,param2);
         return;
      }

      public function paweral() : String {
         return this.lowemycu.services.getUsername();
      }

      public function getUserId() : String {
         return this.lowemycu.services.getUserId();
      }

      public function purchaseItems(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lowemycu.mtx.purchaseItems([param1],this.wepicyf);
         return;
      }

      private function wepicyf(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cyvyfevym.dispatch(param1);
         return;
      }

      public function get jecyp() : Dab {
         return this.cyvyfevym;
      }
   }
[/CLASS]
}