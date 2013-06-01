package coh
{
   import tif.Zaputuga;
   import ruwysepyd.Junefolef;
   import tulunyno.Hugyqufyq;
   import tif.Hokizeka;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;


   public class Zepiter extends Zaputuga
   {
      public function Zepiter(param1:Array) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         qih(this.rej());
         setItems(this.dohera(param1));
         this.ready.addOnce(gizu);
         return;
      }

      private const jiguvovu:Junefolef = new Junefolef();

      public const ready:Hugyqufyq = this.jiguvovu.complete;

      public const selected:Hugyqufyq = new Hugyqufyq(String);

      private function rej() : Hokizeka {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hokizeka = new Hokizeka();
         _loc1_.gynivy(2);
         return _loc1_;
      }

      private function dohera(param1:Array) : Vector.<DisplayObject> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc2_.push(this.vimakepy(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }

      private function vimakepy(param1:Object) : Nukamote {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nukamote = new Nukamote(param1.category,param1.info);
         _loc2_.addEventListener(MouseEvent.CLICK,this.zeg);
         this.jiguvovu.push(_loc2_.textChanged);
         return _loc2_;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nukamote = param1.currentTarget as Nukamote;
         this.selected.dispatch(_loc2_.info);
         return;
      }
   }

}