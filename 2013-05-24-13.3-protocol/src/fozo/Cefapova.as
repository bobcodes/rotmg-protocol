package fozo
{
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.utils.getQualifiedClassName;


   public class Cefapova extends Object
   {
      public function Cefapova(param1:Zajys) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Butyk = null;
         super();
         this.limefaqy=param1;
         this.limefaqy.addEventListener(Hoqyf.vaviguq,this.nohavuri);
         this.limefaqy.addEventListener(Hoqyf.nesicy,this.pyvefehy);
         for each (_loc2_ in this.limefaqy.qyv)
         {
            this.hatofu(_loc2_.container);
         }
         return;
      }

      private const _filter:RegExp = new RegExp("^mx\\.|^spark\\.|^flash\\.");

      private var limefaqy:Zajys;

      public function destroy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Butyk = null;
         this.limefaqy.removeEventListener(Hoqyf.vaviguq,this.nohavuri);
         this.limefaqy.removeEventListener(Hoqyf.nesicy,this.pyvefehy);
         for each (_loc1_ in this.limefaqy.qyv)
         {
            this.tyweg(_loc1_.container);
         }
         return;
      }

      private function nohavuri(param1:Hoqyf) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hatofu(param1.container);
         return;
      }

      private function pyvefehy(param1:Hoqyf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tyweg(param1.container);
         return;
      }

      private function hatofu(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(Event.ADDED_TO_STAGE,this.mohema,true);
         param1.addEventListener(Event.ADDED_TO_STAGE,this.zadovycic);
         return;
      }

      private function tyweg(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.removeEventListener(Event.ADDED_TO_STAGE,this.mohema,true);
         param1.removeEventListener(Event.ADDED_TO_STAGE,this.zadovycic);
         return;
      }

      private function mohema(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:DisplayObject = null;
         var _loc3_:String = null;
         _loc2_=param1.target as DisplayObject;
         _loc3_=getQualifiedClassName(_loc2_);
         var _loc4_:Boolean = this._filter.test(_loc3_);
         if(_loc4_)
         {
            return;
         }
         var _loc5_:Class = _loc2_["constructor"];
         var _loc6_:Butyk = this.limefaqy.wafuweb(_loc2_);
         while(_loc6_)
         {
            _loc6_.hubumiwek(_loc2_,_loc5_);
            _loc6_=_loc6_.parent;
         }
         return;
      }

      private function zadovycic(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:DisplayObjectContainer = null;
         _loc2_=param1.target as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,this.zadovycic);
         var _loc3_:Class = _loc2_["constructor"];
         var _loc4_:Butyk = this.limefaqy.sijymad(_loc2_);
         _loc4_.hubumiwek(_loc2_,_loc3_);
         return;
      }
   }

}