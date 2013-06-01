package tif
{
   import flash.display.Sprite;
   import wujahega.Nub;
   import wujahega.Layout;
   import wujahega.Size;
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.display.Graphics;


   public class Zaputuga extends Sprite implements Nub
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zaputuga() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.layout=wajonus;
         this.size=gaca;
         super();
         addChild(this.container);
         addChild(this.feketa);
         return;
      }

      private static const wajonus:Layout = new Wovi();

      private static const gaca:Size = new Size(0,0);

      public const dabyfa:Hugyqufyq = new Hugyqufyq();

      private const list:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);

      private const container:Sprite = new Sprite();

      private const feketa:Shape = new Shape();

      private var layout:Layout;

      private var size:Size;

      private var offset:int = 0;

      public function caz() : Layout {
         return this.layout;
      }

      public function qih(param1:Layout) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.layout=(param1)||(wajonus);
         param1.layout(this.list,-this.offset);
         return;
      }

      public function wepilyby() : Size {
         return this.size;
      }

      public function setSize(param1:Size) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.size=(param1)||(gaca);
         this.qugefapo();
         return;
      }

      public function cil() : Size {
         var _loc1_:Rectangle = this.container.getRect(this.container);
         return new Size(_loc1_.width,_loc1_.height);
      }

      private function qugefapo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Graphics = this.feketa.graphics;
         _loc1_.clear();
         _loc1_.beginFill(10027263);
         _loc1_.drawRect(0,0,this.size.width,this.size.height);
         _loc1_.endFill();
         this.container.mask=this.feketa;
         return;
      }

      public function addItem(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.batajuhul(param1);
         this.gizu();
         this.dabyfa.dispatch();
         return;
      }

      public function dytipahir(param1:int) : DisplayObject {
         return this.list[param1];
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pydome();
         this.fevugaci(param1);
         this.offset=0;
         this.gizu();
         this.dabyfa.dispatch();
         return;
      }

      public function qetodufeq() : int {
         return this.list.length;
      }

      private function pydome() : void {
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

      private function fevugaci(param1:Vector.<DisplayObject>) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:DisplayObject = null;
         for each (_loc2_ in param1)
         {
            this.batajuhul(_loc2_);
         }
         return;
      }

      private function batajuhul(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.list.push(param1);
         this.container.addChild(param1);
         return;
      }

      public function wiboce(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.offset=param1;
         this.gizu();
         return;
      }

      public function sywemog() : int {
         return this.offset;
      }

      public function gizu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.layout.layout(this.list,-this.offset);
         return;
      }
   }

}