package dec
{
[CLASS492]   import flash.display.Sprite;
   import dylaqezo.Vusun;
   import wyjimigo.Server;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.events.Event;
   import jodahije.Puvyveh;
   import jodahije.Pukuduly;


   public class Tani extends Sprite
   {
      public function Tani() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.kepafohi=new Piwiqyh();
         this.kepafohi.addEventListener(Zalurik.vyvocur,this.cotiqiw);
         addChild(this.kepafohi);
         return;
      }

      private var model:Vusun;

      private var server:Server;

      private var kepafohi:Piwiqyh;

      private var dewapyz:GameSprite;

      public function initialize(param1:Vusun, param2:Server) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.model=param1;
         this.server=param2;
         return;
      }

      private function cotiqiw(param1:Zalurik) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.kepafohi);
         this.dewapyz=new GameSprite(this.server,Parameters.jasad,false,this.model.qiziwizom()[0].charId(),-1,null,this.model,param1.zekovow);
         this.dewapyz.isEditor=true;
         this.dewapyz.addEventListener(Event.COMPLETE,this.wevy);
         this.dewapyz.addEventListener(Puvyveh.RECONNECT,this.wevy);
         this.dewapyz.addEventListener(Pukuduly.DEATH,this.wevy);
         addChild(this.dewapyz);
         return;
      }

      private function wevy(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cakyfy();
         addChild(this.kepafohi);
         return;
      }

      private function losod(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cakyfy();
         addChild(this.kepafohi);
         return;
      }

      private function cakyfy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dewapyz.removeEventListener(Event.COMPLETE,this.wevy);
         this.dewapyz.removeEventListener(Puvyveh.RECONNECT,this.wevy);
         this.dewapyz.removeEventListener(Pukuduly.DEATH,this.wevy);
         removeChild(this.dewapyz);
         this.dewapyz=null;
         return;
      }
   }
[/CLASS]
}