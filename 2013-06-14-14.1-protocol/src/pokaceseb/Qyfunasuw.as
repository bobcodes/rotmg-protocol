package pokaceseb
{
   import flash.display.Sprite;
   import typoc.Vymy;
   import typoc.Layout;
   import typoc.Size;
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.display.Graphics;


   public class Qyfunasuw extends Sprite implements Vymy
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qyfunasuw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.layout=faqicobyt;
         this.size=vih;
         super();
         addChild(this.container);
         addChild(this.fihud);
         return;
      }

      private static const faqicobyt:Layout = new Zakylaqa();

      private static const vih:Size = new Size(0,0);

      public const qepiw:Qanyduk = new Qanyduk();

      private const list:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);

      private const container:Sprite = new Sprite();

      private const fihud:Shape = new Shape();

      private var layout:Layout;

      private var size:Size;

      private var offset:int = 0;

      public function piteze() : Layout {
         return this.layout;
      }

      public function cegoh(param1:Layout) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.layout=(param1)||(faqicobyt);
         param1.layout(this.list,-this.offset);
         return;
      }

      public function dahekuq() : Size {
         return this.size;
      }

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=(param1)||(vih);
         this.mype();
         return;
      }

      public function gujuno() : Size {
         var _loc1_:Rectangle = this.container.getRect(this.container);
         return new Size(_loc1_.width,_loc1_.height);
      }

      private function mype() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Graphics = this.fihud.graphics;
         _loc1_.clear();
         _loc1_.beginFill(10027263);
         _loc1_.drawRect(0,0,this.size.width,this.size.height);
         _loc1_.endFill();
         this.container.mask=this.fihud;
         return;
      }

      public function addItem(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buroditegiz(param1);
         this.zuza();
         this.qepiw.dispatch();
         return;
      }

      public function nyqe(param1:int) : DisplayObject {
         return this.list[param1];
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jozufibot();
         this.davybyle(param1);
         this.offset=0;
         this.zuza();
         this.qepiw.dispatch();
         return;
      }

      public function tilolyhu() : int {
         return this.list.length;
      }

      private function jozufibot() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.list.length;
         while(_loc1_--)
         {
            this.container.removeChild(this.list[_loc1_]);
         }
         this.list.length=0;
         return;
      }

      private function davybyle(param1:Vector.<DisplayObject>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObject = null;
         for each (_loc2_ in param1)
         {
            this.buroditegiz(_loc2_);
         }
         return;
      }

      private function buroditegiz(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.push(param1);
         this.container.addChild(param1);
         return;
      }

      public function qoquj(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.offset=param1;
         this.zuza();
         return;
      }

      public function bibec() : int {
         return this.offset;
      }

      public function zuza() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.layout.layout(this.list,-this.offset);
         return;
      }
   }

}