package najilihak
{
   import wegyluke.Hez;
   import nago.Hol;
   import hotewa.Baqifa;
   import fulaw.Vihekivuc;
   import nico.Nucoz;
   import murez.ReskinCharacterView;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import fulaw.Toloku;


   public class Majurav extends Object
   {
      public function Majurav() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var naval:Hez;

      public var libefobav:Hol;

      public var player:Baqifa;

      public var model:Vihekivuc;

      public var factory:Nucoz;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.libefobav.dispatch();
         this.naval.dispatch(this.tybelofaz());
         return;
      }

      private function tybelofaz() : ReskinCharacterView {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ReskinCharacterView = new ReskinCharacterView();
         _loc1_.tefenam(this.deqap());
         _loc1_.x=(800-_loc1_.width)*0.5;
         _loc1_.y=(600-_loc1_.pujokewu)*0.5;
         return _loc1_;
      }

      private function deqap() : Vector.<DisplayObject> {
         var _loc1_:Toloku = this.husybebyq();
         return this.factory.make(_loc1_);
      }

      private function husybebyq() : Toloku {
         return this.model.zega().socucu;
      }
   }

}