package nico
{
   import kabam.rotmg.assets.services.Cafe;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import fulaw.Toloku;
   import fulaw.Dasin;
   import com.company.util.AssetLibrary;
   import qazoz.Nyzur;
   import com.company.assembleegameclient.util.Currency;
   import flash.display.Bitmap;
   import flash.display.BitmapData;


   public class Nucoz extends Object
   {
      public function Nucoz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var characters:Cafe;

      public function make(param1:Toloku) : Vector.<DisplayObject> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Vector.<Dasin> = null;
         var _loc3_:* = 0;
         _loc2_=param1.labef();
         _loc3_=_loc2_.length;
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(_loc3_,true);
         var _loc5_:* = 0;
         while(_loc5_<_loc3_)
         {
            _loc4_[_loc5_]=this.tocevuh(_loc2_[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }

      private function tocevuh(param1:Dasin) : CharacterSkinListItem {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CharacterSkinListItem = new CharacterSkinListItem();
         _loc2_.zepipy(this.makeIcon(param1));
         _loc2_.kyzosak(param1);
         _loc2_.lukowu(AssetLibrary.jeqycu("lofiInterface2",5));
         _loc2_.jal(this.borev());
         return _loc2_;
      }

      private function borev() : Nyzur {
         return new Nyzur("",16,0,Currency.fejubu);
      }

      private function makeIcon(param1:Dasin) : Bitmap {
         var _loc2_:BitmapData = this.characters.makeIcon(param1.ladewavaq);
         return new Bitmap(_loc2_);
      }
   }

}