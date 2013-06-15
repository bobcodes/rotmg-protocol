package fysy
{
   import kabam.rotmg.assets.services.Bytedif;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import poho.Wumyziju;
   import poho.Pom;
   import com.company.util.AssetLibrary;
   import bemav.Telir;
   import com.company.assembleegameclient.util.Currency;
   import flash.display.Bitmap;
   import flash.display.BitmapData;


   public class Rehijuh extends Object
   {
      public function Rehijuh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var characters:Bytedif;

      public function make(param1:Wumyziju) : Vector.<DisplayObject> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Vector.<Pom> = null;
         var _loc3_:* = 0;
         _loc2_=param1.gywemih();
         _loc3_=_loc2_.length;
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(_loc3_,true);
         var _loc5_:* = 0;
         while(_loc5_<_loc3_)
         {
            _loc4_[_loc5_]=this.deram(_loc2_[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }

      private function deram(param1:Pom) : CharacterSkinListItem {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CharacterSkinListItem = new CharacterSkinListItem();
         _loc2_.qymido(this.makeIcon(param1));
         _loc2_.qej(param1);
         _loc2_.jico(AssetLibrary.tem("lofiInterface2",5));
         _loc2_.nisopyba(this.qeta());
         return _loc2_;
      }

      private function qeta() : Telir {
         return new Telir("",16,0,Currency.win);
      }

      private function makeIcon(param1:Pom) : Bitmap {
         var _loc2_:BitmapData = this.characters.makeIcon(param1.fegotu);
         return new Bitmap(_loc2_);
      }
   }

}