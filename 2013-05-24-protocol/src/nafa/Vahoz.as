package nafa
{
   import flash.display.Sprite;
   import hotewa.Baqifa;
   import aaa.rotmg.net.Server;
   import com.company.assembleegameclient.game.GameSprite;
   import aaa.rotmg.config.UserConfig;
   import flash.events.Event;
   import pov.Rus;
   import pov.Jocite;


   public class Vahoz extends Sprite
   {
      public function Vahoz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.talobenor=new Gymowe();
         this.talobenor.addEventListener(Hutisame.myhon,this.jedehe);
         addChild(this.talobenor);
         return;
      }

      private var model:Baqifa;

      private var server:Server;

      private var talobenor:Gymowe;

      private var nazu:GameSprite;

      public function initialize(param1:Baqifa, param2:Server) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.model=param1;
         this.server=param2;
         return;
      }

      private function jedehe(param1:Hutisame) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.talobenor);
         this.nazu=new GameSprite(this.server,UserConfig.dugol,false,this.model.hidife()[0].charId(),-1,null,this.model,param1.sofabe);
         this.nazu.isEditor=true;
         this.nazu.addEventListener(Event.COMPLETE,this.san);
         this.nazu.addEventListener(Rus.RECONNECT,this.san);
         this.nazu.addEventListener(Jocite.DEATH,this.san);
         addChild(this.nazu);
         return;
      }

      private function san(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pazama();
         addChild(this.talobenor);
         return;
      }

      private function noto(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pazama();
         addChild(this.talobenor);
         return;
      }

      private function pazama() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nazu.removeEventListener(Event.COMPLETE,this.san);
         this.nazu.removeEventListener(Rus.RECONNECT,this.san);
         this.nazu.removeEventListener(Jocite.DEATH,this.san);
         removeChild(this.nazu);
         this.nazu=null;
         return;
      }
   }

}