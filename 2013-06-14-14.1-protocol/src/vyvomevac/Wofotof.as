package vyvomevac
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import kabam.rotmg.assets.Zewiciciq;


   public class Wofotof extends Sprite
   {
      public function Wofotof() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.livyn=0;
         this.cylopo();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.lydo);
         return;
      }

      public var tinypyzaj:Fumy;

      public const ficebedok:DisplayObject = new Zewiciciq.StarburstSpinner();

      public var lutufada:Number;

      private var livyn:Number;

      private var vipi:Number;

      private function cylopo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.ficebedok);
         this.ficebedok.x=-1*width/2;
         this.ficebedok.y=-1*height/2;
         return;
      }

      private function lydo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.lydo);
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryhah();
         rotation=this.lutufada*this.livyn;
         return;
      }

      private function ryhah() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = this.tinypyzaj.wyzujonuj()/1000;
         if(this.vipi)
         {
            this.livyn=this.livyn+(_loc1_-this.vipi);
         }
         this.vipi=_loc1_;
         return;
      }
   }

}