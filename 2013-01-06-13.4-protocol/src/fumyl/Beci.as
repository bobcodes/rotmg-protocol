package fumyl
{
[CLASS101]   import kabam.rotmg.assets.services.Vohemija;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import tehakab.Pytowiwow;
   import tehakab.Copaqufiv;
   import com.company.util.AssetLibrary;
   import gicuzum.Caty;
   import com.company.assembleegameclient.util.Currency;
   import flash.display.Bitmap;
   import flash.display.BitmapData;


   public class Beci extends Object
   {
      public function Beci() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var characters:Vohemija;

      public function make(param1:Pytowiwow) : Vector.<DisplayObject> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Vector.<Copaqufiv> = null;
         var _loc3_:* = 0;
         _loc2_=param1.pyzaqice();
         _loc3_=_loc2_.length;
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(_loc3_,true);
         var _loc5_:* = 0;
         while(_loc5_<_loc3_)
         {
            _loc4_[_loc5_]=this.tidemiziw(_loc2_[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }

      private function tidemiziw(param1:Copaqufiv) : CharacterSkinListItem {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CharacterSkinListItem = new CharacterSkinListItem();
         _loc2_.rug(this.makeIcon(param1));
         _loc2_.duzopuly(param1);
         _loc2_.godowu(AssetLibrary.zovy("lofiInterface2",5));
         _loc2_.fotykes(this.duvih());
         return _loc2_;
      }

      private function duvih() : Caty {
         return new Caty("",16,0,Currency.vusap);
      }

      private function makeIcon(param1:Copaqufiv) : Bitmap {
         var _loc2_:BitmapData = this.characters.makeIcon(param1.jaqyb);
         return new Bitmap(_loc2_);
      }
   }
[/CLASS]
}