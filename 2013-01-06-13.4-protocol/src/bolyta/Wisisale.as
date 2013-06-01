package bolyta
{
[CLASS1872]   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import kabam.rotmg.assets.Ceny;


   public class Wisisale extends Sprite
   {
      public function Wisisale() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.woce=0;
         this.vuwa();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.tucyr);
         return;
      }

      public var ropedaduc:Porilawyz;

      public const fejo:DisplayObject = new Ceny.StarburstSpinner();

      public var mudug:Number;

      private var woce:Number;

      private var kek:Number;

      private function vuwa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.fejo);
         this.fejo.x=-1*width/2;
         this.fejo.y=-1*height/2;
         return;
      }

      private function tucyr(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.tucyr);
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pidec();
         rotation=this.mudug*this.woce;
         return;
      }

      private function pidec() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = this.ropedaduc.jipojig()/1000;
         if(this.kek)
         {
            this.woce=this.woce+(_loc1_-this.kek);
         }
         this.kek=_loc1_;
         return;
      }
   }
[/CLASS]
}