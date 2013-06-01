package kezafezad
{
[CLASS972]   import flash.display.Sprite;
   import lehih.Mysop;
   import lehih.Layout;
   import lehih.Size;
   import tinava.Dab;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.display.Graphics;


   public class Lazahyq extends Sprite implements Mysop
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Lazahyq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.layout=mop;
         this.size=guculis;
         super();
         addChild(this.container);
         addChild(this.lak);
         return;
      }

      private static const mop:Layout = new Gywomisu();

      private static const guculis:Size = new Size(0,0);

      public const weco:Dab = new Dab();

      private const list:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);

      private const container:Sprite = new Sprite();

      private const lak:Shape = new Shape();

      private var layout:Layout;

      private var size:Size;

      private var offset:int = 0;

      public function jiza() : Layout {
         return this.layout;
      }

      public function tadynamo(param1:Layout) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.layout=(param1)||(mop);
         param1.layout(this.list,-this.offset);
         return;
      }

      public function vucu() : Size {
         return this.size;
      }

      public function setSize(param1:Size) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=(param1)||(guculis);
         this.fizyj();
         return;
      }

      public function sesybiho() : Size {
         var _loc1_:Rectangle = this.container.getRect(this.container);
         return new Size(_loc1_.width,_loc1_.height);
      }

      private function fizyj() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Graphics = this.lak.graphics;
         _loc1_.clear();
         _loc1_.beginFill(10027263);
         _loc1_.drawRect(0,0,this.size.width,this.size.height);
         _loc1_.endFill();
         this.container.mask=this.lak;
         return;
      }

      public function addItem(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cefa(param1);
         this.mepipu();
         this.weco.dispatch();
         return;
      }

      public function wohoguwo(param1:int) : DisplayObject {
         return this.list[param1];
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.novi();
         this.rukuwod(param1);
         this.offset=0;
         this.mepipu();
         this.weco.dispatch();
         return;
      }

      public function vure() : int {
         return this.list.length;
      }

      private function novi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.list.length;
         while(_loc1_--)
         {
            this.container.removeChild(this.list[_loc1_]);
         }
         this.list.length=0;
         return;
      }

      private function rukuwod(param1:Vector.<DisplayObject>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObject = null;
         for each (_loc2_ in param1)
         {
            this.cefa(_loc2_);
         }
         return;
      }

      private function cefa(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.list.push(param1);
         this.container.addChild(param1);
         return;
      }

      public function dabetedij(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.offset=param1;
         this.mepipu();
         return;
      }

      public function vydah() : int {
         return this.offset;
      }

      public function mepipu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.layout.layout(this.list,-this.offset);
         return;
      }
   }
[/CLASS]
}