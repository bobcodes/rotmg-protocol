package fysy
{
   import flash.display.Sprite;
   import bemav.Pejemewe;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import typoc.Size;


   public class Caj extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Caj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const pybywy:int = 5;

      public static const WIDTH:int = 442;

      public static const HEIGHT:int = 400;

      private const list:Pejemewe = this.hunekycu();

      private var mumun:Vector.<DisplayObject>;

      private function hunekycu() : Pejemewe {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pejemewe = new Pejemewe();
         _loc1_.setSize(new Size(WIDTH,HEIGHT));
         _loc1_.bozari.add(this.jedafahap);
         _loc1_.wysycoviw(pybywy);
         addChild(_loc1_);
         return _loc1_;
      }

      public function setItems(param1:Vector.<DisplayObject>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mumun=param1;
         this.list.setItems(param1);
         this.jedafahap(this.list.qucetan());
         return;
      }

      private function jedafahap(param1:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:CharacterSkinListItem = null;
         var _loc2_:int = CharacterSkinListItem.WIDTH;
         if(!param1)
         {
            _loc2_=_loc2_+Pejemewe.fewafawih;
         }
         for each (_loc3_ in this.mumun)
         {
            _loc3_.setWidth(_loc2_);
         }
         return;
      }

      public function bika() : Number {
         return this.list.bika();
      }
   }

}