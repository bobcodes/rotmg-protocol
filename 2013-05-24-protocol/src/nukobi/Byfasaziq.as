package nukobi
{
   import flash.display.Sprite;
   import vapihufy.Hogoh;
   import regym.Naciru;
   import komawowag.Becepog;
   import tulunyno.Hugyqufyq;
   import flash.display.Loader;
   import flash.system.Security;
   import flash.events.Event;
   import flash.net.URLRequest;


   public class Byfasaziq extends Sprite implements Fozydo
   {
      public function Byfasaziq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.jap=new Hugyqufyq();
         this.cezakaqi=new Hugyqufyq(Object);
         return;
      }

      public var local:Hogoh;

      public var vudy:Naciru;

      public var qiqely:Becepog;

      private var jap:Hugyqufyq;

      private var cezakaqi:Hugyqufyq;

      private var loader:Loader;

      private var zefy;

      public function load(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         Security.allowDomain(param1);
         this.qiqely.info("kongregate api loading");
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
         this.zefy.services.connect();
         this.padizykog();
         this.qefijo.dispatch();
         this.qiqely.info("kongregate api loaded");
         return;
      }

      private function padizykog() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.zefy.services.isGuest())
         {
            this.qiqely.info("kongregate guest detected - listening for external login");
            this.zefy.services.addEventListener("login",this.belor);
         }
         return;
      }

      private function belor(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiqely.info("external login from kongregate detected");
         this.vudy.dispatch();
         return;
      }

      public function get qefijo() : Hugyqufyq {
         return this.jap;
      }

      public function kur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.info("showRegistrationBox request sent to kongregate");
         this.zefy.services.showRegistrationBox();
         return;
      }

      public function isGuest() : Boolean {
         return this.zefy.services.isGuest();
      }

      public function litafukic() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.userId=this.zefy.services.getUserId();
         _loc1_.username=this.zefy.services.getUsername();
         _loc1_.gameAuthToken=this.zefy.services.getGameAuthToken();
         return _loc1_;
      }

      public function bipegy(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zefy.stats.submit(param1,param2);
         return;
      }

      public function nenyzeqe() : String {
         return this.zefy.services.getUsername();
      }

      public function getUserId() : String {
         return this.zefy.services.getUserId();
      }

      public function purchaseItems(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zefy.mtx.purchaseItems([param1],this.regun);
         return;
      }

      private function regun(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cezakaqi.dispatch(param1);
         return;
      }

      public function get sagut() : Hugyqufyq {
         return this.cezakaqi;
      }
   }

}