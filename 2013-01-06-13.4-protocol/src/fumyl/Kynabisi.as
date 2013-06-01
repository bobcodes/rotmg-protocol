package fumyl
{
[CLASS103]   import flash.display.Sprite;
   import gicuzum.Rulumyh;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import lehih.Size;


   public class Kynabisi extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kynabisi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const bykize:int = 5;

      public static const WIDTH:int = 442;

      public static const HEIGHT:int = 400;

      private const list:Rulumyh = this.vosejyqa();

      private var kina:Vector.<DisplayObject>;

      private function vosejyqa() : Rulumyh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Rulumyh = new Rulumyh();
         _loc1_.setSize(new Size(WIDTH,HEIGHT));
         _loc1_.huweqihi.add(this.futike);
         _loc1_.qege(bykize);
         addChild(_loc1_);
         return _loc1_;
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kina=param1;
         this.list.setItems(param1);
         this.futike(this.list.jure());
         return;
      }

      private function futike(param1:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:CharacterSkinListItem = null;
         var _loc2_:int = CharacterSkinListItem.WIDTH;
         if(!param1)
         {
            _loc2_=_loc2_+Rulumyh.pogo;
         }
         for each (_loc3_ in this.kina)
         {
            _loc3_.setWidth(_loc2_);
         }
         return;
      }

      public function hocagydyq() : Number {
         return this.list.hocagydyq();
      }
   }
[/CLASS]
}