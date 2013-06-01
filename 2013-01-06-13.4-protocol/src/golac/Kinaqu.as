package golac
{
[CLASS901]   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.display.BlendMode;
   import flash.events.Event;
   import flash.events.TimerEvent;


   public class Kinaqu extends Sprite
   {
      public function Kinaqu() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         x=y=this.radius;
         this.mipuguc();
         addEventListener(Event.ADDED_TO_STAGE,this.cuqozi);
         addEventListener(Event.REMOVED_FROM_STAGE,this.tucyr);
         return;
      }

      private const naqol:Sprite = this.feby();

      private const jyjewijy:Sprite = this.riwe();

      private const pedekofy:Sprite = this.lozenuson();

      private const timer:Timer = new Timer(25);

      private const radius:int = 22;

      private const color:uint = 16777215;

      private function feby() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = null;
         _loc1_=new Sprite();
         _loc1_.blendMode=BlendMode.LAYER;
         _loc1_.graphics.beginFill(this.color);
         _loc1_.graphics.drawCircle(0,0,this.radius);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function riwe() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.blendMode=BlendMode.ERASE;
         _loc1_.graphics.beginFill(16777215*0.6);
         _loc1_.graphics.drawCircle(0,0,this.radius/2);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function lozenuson() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,this.radius,this.radius);
         _loc1_.graphics.endFill();
         return _loc1_;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naqol.addChild(this.jyjewijy);
         this.naqol.addChild(this.pedekofy);
         this.naqol.mask=this.pedekofy;
         addChild(this.naqol);
         return;
      }

      private function cuqozi(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.addEventListener(TimerEvent.TIMER,this.tuqupa);
         this.timer.start();
         return;
      }

      private function tucyr(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timer.stop();
         this.timer.removeEventListener(TimerEvent.TIMER,this.tuqupa);
         return;
      }

      private function tuqupa(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pedekofy.rotation=this.pedekofy.rotation+20;
         return;
      }
   }
[/CLASS]
}