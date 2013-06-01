package dacuje
{
[CLASS206]   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.events.Event;


   public class Vamusu extends Sprite
   {
      public function Vamusu() {
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

      private var tucot:Sprite;

      private var jicihugyc:DisplayObject;

      public function henefozom(param1:int=1381653) : void {
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
         this.hihu();
         this.liga(param1);
         return;
      }

      public function sedyne() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.visible=false;
         this.hihu();
         return;
      }

      public function push(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tucot.visible=false;
         this.jicihugyc=param1;
         addChild(param1);
         this.background.visible=true;
         return;
      }

      public function vapis() : DisplayObject {
         return this.jicihugyc;
      }

      public function pop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeChild(this.jicihugyc);
         this.tucot.visible=true;
         return;
      }

      private function liga(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tucot=param1;
         param1.addEventListener(Event.REMOVED,this.tucyr);
         this.container.addChild(param1);
         return;
      }

      private function tucyr(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = param1.target as Sprite;
         if(this.tucot==_loc2_)
         {
            this.background.visible=false;
            this.tucot=null;
         }
         return;
      }

      private function hihu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.tucot)&&(this.container.contains(this.tucot)))
         {
            this.tucot.removeEventListener(Event.REMOVED,this.tucyr);
            this.container.removeChild(this.tucot);
            this.background.visible=false;
         }
         return;
      }
   }
[/CLASS]
}