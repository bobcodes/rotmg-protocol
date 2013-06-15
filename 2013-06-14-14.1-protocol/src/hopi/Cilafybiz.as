package hopi
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.events.Event;


   public class Cilafybiz extends Sprite
   {
      public function Cilafybiz() {
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

      private var wede:Sprite;

      private var mofehi:DisplayObject;

      public function wydyra(param1:int=1381653) : void {
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.bikucud();
         this.gunuvyciw(param1);
         return;
      }

      public function jogugili() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.visible=false;
         this.bikucud();
         return;
      }

      public function push(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wede.visible=false;
         this.mofehi=param1;
         addChild(param1);
         this.background.visible=true;
         return;
      }

      public function katev() : DisplayObject {
         return this.mofehi;
      }

      public function pop() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         removeChild(this.mofehi);
         this.wede.visible=true;
         return;
      }

      private function gunuvyciw(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wede=param1;
         param1.addEventListener(Event.REMOVED,this.lydo);
         this.container.addChild(param1);
         return;
      }

      private function lydo(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.target as Sprite;
         if(this.wede==_loc2_)
         {
            this.background.visible=false;
            this.wede=null;
         }
         return;
      }

      private function bikucud() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.wede)&&(this.container.contains(this.wede)))
         {
            this.wede.removeEventListener(Event.REMOVED,this.lydo);
            this.container.removeChild(this.wede);
            this.background.visible=false;
         }
         return;
      }
   }

}