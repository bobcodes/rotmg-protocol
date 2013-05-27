package tuma
{
   import fulaw.Vihekivuc;
   import fulaw.Dasin;
   import kabam.rotmg.assets.model.Jyzirilof;
   import fulaw.Jimi;


   public class Zamebyfok extends Object
   {
      public function Zamebyfok() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:XML;

      public var model:Vihekivuc;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XMLList = this.data.SkinsList.Objects.Object;
         for each (_loc2_ in _loc1_)
         {
            this.sipaj(_loc2_);
         }
         return;
      }

      private function sipaj(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         _loc2_=param1.AnimatedTexture.File;
         var _loc3_:int = param1.AnimatedTexture.Index;
         var _loc4_:Dasin = new Dasin();
         _loc4_.id=param1.@type;
         _loc4_.name=param1.DisplayId;
         _loc4_.unlockLevel=param1.UnlockLevel;
         _loc4_.ladewavaq=new Jyzirilof(_loc2_,_loc3_);
         var _loc5_:Jimi = this.model.lyt(param1.PlayerClassType);
         _loc5_.socucu.lyloquruv(_loc4_);
         return;
      }
   }

}