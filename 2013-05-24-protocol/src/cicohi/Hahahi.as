package cicohi
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.events.Event;


   public class Hahahi extends Sprite
   {
      public function Hahahi() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(this.background=new Sprite());
         addChild(this.container=new Sprite());
         this.background.visible=false;
         this.background.mouseEnabled=true;
         return;
      }

      private var background:Sprite;

      private var container:DisplayObjectContainer;

      private var jabakywip:Sprite;

      private var bycabefeh:DisplayObject;

      public function vope(param1:int=1381653) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Graphics = this.background.graphics;
         _loc2_.clear();
         _loc2_.beginFill(param1,0.6);
         _loc2_.drawRect(0,0,800,600);
         _loc2_.endFill();
         this.background.visible=true;
         return;
      }

      public function show(param1:Sprite, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.lebiqif();
         this.hymus(param1);
         return;
      }

      public function lecy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background.visible=false;
         this.lebiqif();
         return;
      }

      public function push(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jabakywip.visible=false;
         this.bycabefeh=param1;
         addChild(param1);
         this.background.visible=true;
         return;
      }

      public function fobu() : DisplayObject {
         return this.bycabefeh;
      }

      public function pop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeChild(this.bycabefeh);
         this.jabakywip.visible=true;
         return;
      }

      private function hymus(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jabakywip=param1;
         param1.addEventListener(Event.REMOVED,this.paj);
         this.container.addChild(param1);
         return;
      }

      private function paj(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.target as Sprite;
         if(this.jabakywip==_loc2_)
         {
            this.background.visible=false;
            this.jabakywip=null;
         }
         return;
      }

      private function lebiqif() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.jabakywip)&&(this.container.contains(this.jabakywip)))
         {
            this.jabakywip.removeEventListener(Event.REMOVED,this.paj);
            this.container.removeChild(this.jabakywip);
            this.background.visible=false;
         }
         return;
      }
   }

}