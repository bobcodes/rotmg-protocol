package noniq
{
   import flash.display.Sprite;
   import lemugo.Wokycuku;
   import jovurora.Server;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.events.Event;
   import huv.Barisyz;
   import huv.Sebype;


   public class Cysekyrow extends Sprite
   {
      public function Cysekyrow() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.laciduk=new Visemoba();
         this.laciduk.addEventListener(Cywyqyd.pyvubebib,this.sowuzala);
         addChild(this.laciduk);
         return;
      }

      private var model:Wokycuku;

      private var server:Server;

      private var laciduk:Visemoba;

      private var jesan:GameSprite;

      public function initialize(param1:Wokycuku, param2:Server) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.model=param1;
         this.server=param2;
         return;
      }

      private function sowuzala(param1:Cywyqyd) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.laciduk);
         this.jesan=new GameSprite(this.server,Parameters.rowika,false,this.model.zycelady()[0].charId(),-1,null,this.model,param1.weviq,false);
         this.jesan.isEditor=true;
         this.jesan.addEventListener(Event.COMPLETE,this.lofijejor);
         this.jesan.addEventListener(Barisyz.RECONNECT,this.lofijejor);
         this.jesan.addEventListener(Sebype.DEATH,this.lofijejor);
         addChild(this.jesan);
         return;
      }

      private function lofijejor(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pano();
         addChild(this.laciduk);
         return;
      }

      private function cewu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pano();
         addChild(this.laciduk);
         return;
      }

      private function pano() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jesan.removeEventListener(Event.COMPLETE,this.lofijejor);
         this.jesan.removeEventListener(Barisyz.RECONNECT,this.lofijejor);
         this.jesan.removeEventListener(Sebype.DEATH,this.lofijejor);
         removeChild(this.jesan);
         this.jesan=null;
         return;
      }
   }

}