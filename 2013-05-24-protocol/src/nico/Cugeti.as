package nico
{
   import flash.display.Sprite;
   import qazoz.Gopefiro;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import wujahega.Size;


   public class Cugeti extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cugeti() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const pyzifok:int = 5;

      public static const WIDTH:int = 442;

      public static const HEIGHT:int = 400;

      private const list:Gopefiro = this.deqap();

      private var dym:Vector.<DisplayObject>;

      private function deqap() : Gopefiro {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gopefiro = new Gopefiro();
         _loc1_.setSize(new Size(WIDTH,HEIGHT));
         _loc1_.luhofy.add(this.goqa);
         _loc1_.gynivy(pyzifok);
         addChild(_loc1_);
         return _loc1_;
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dym=param1;
         this.list.setItems(param1);
         this.goqa(this.list.nabesom());
         return;
      }

      private function goqa(param1:Boolean) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:CharacterSkinListItem = null;
         var _loc2_:int = CharacterSkinListItem.WIDTH;
         if(!param1)
         {
            _loc2_=_loc2_+Gopefiro.rewafupa;
         }
         for each (_loc3_ in this.dym)
         {
            _loc3_.setWidth(_loc2_);
         }
         return;
      }

      public function vuc() : Number {
         return this.list.vuc();
      }
   }

}