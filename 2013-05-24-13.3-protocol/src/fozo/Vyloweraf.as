package fozo
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Vyloweraf extends Object
   {
      public function Vyloweraf(param1:Zajys) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Butyk = null;
         super();
         this.limefaqy=param1;
         this.limefaqy.addEventListener(Hoqyf.tebowomyq,this.zehejul);
         this.limefaqy.addEventListener(Hoqyf.wimug,this.genileda);
         for each (_loc2_ in this.limefaqy.zydifeha)
         {
            this.gikidobac(_loc2_.container);
         }
         return;
      }

      private var limefaqy:Zajys;

      public function destroy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Butyk = null;
         this.limefaqy.removeEventListener(Hoqyf.tebowomyq,this.zehejul);
         this.limefaqy.removeEventListener(Hoqyf.wimug,this.genileda);
         for each (_loc1_ in this.limefaqy.zydifeha)
         {
            this.mupy(_loc1_.container);
         }
         return;
      }

      private function zehejul(param1:Hoqyf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gikidobac(param1.container);
         return;
      }

      private function genileda(param1:Hoqyf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mupy(param1.container);
         return;
      }

      private function gikidobac(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(Zefo.tyrotoby,this.cigaza);
         return;
      }

      private function mupy(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.removeEventListener(Zefo.tyrotoby,this.cigaza);
         return;
      }

      private function cigaza(param1:Zefo) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:DisplayObject = null;
         param1.stopImmediatePropagation();
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc3_=param1.target as DisplayObject;
         var _loc4_:Class = _loc3_["constructor"];
         this.limefaqy.sijymad(_loc2_).hubumiwek(_loc3_,_loc4_);
         return;
      }
   }

}