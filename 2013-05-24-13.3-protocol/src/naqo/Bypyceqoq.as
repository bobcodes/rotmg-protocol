package naqo
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import kabam.rotmg.assets.Tomuja;


   public class Bypyceqoq extends Sprite
   {
      public function Bypyceqoq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.baped=0;
         this.rehil();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.paj);
         return;
      }

      public var kivod:Suqid;

      public const bywudo:DisplayObject = new Tomuja.StarburstSpinner();

      public var nab:Number;

      private var baped:Number;

      private var qynigezar:Number;

      private function rehil() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.bywudo);
         this.bywudo.x=-1*width/2;
         this.bywudo.y=-1*height/2;
         return;
      }

      private function paj(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.paj);
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hecebijik();
         rotation=this.nab*this.baped;
         return;
      }

      private function hecebijik() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = this.kivod.socaqudaw()/1000;
         if(this.qynigezar)
         {
            this.baped=this.baped+(_loc1_-this.qynigezar);
         }
         this.qynigezar=_loc1_;
         return;
      }
   }

}