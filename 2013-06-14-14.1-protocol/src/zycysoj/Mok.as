package zycysoj
{
   import poho.Kyhy;
   import poho.Pom;
   import kabam.rotmg.assets.model.Fip;
   import poho.Dywygave;


   public class Mok extends Object
   {
      public function Mok() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:XML;

      public var model:Kyhy;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XMLList = this.data.SkinsList.Objects.Object;
         for each (_loc2_ in _loc1_)
         {
            this.dobokyqum(_loc2_);
         }
         return;
      }

      private function dobokyqum(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         _loc2_=param1.AnimatedTexture.File;
         var _loc3_:int = param1.AnimatedTexture.Index;
         var _loc4_:Pom = new Pom();
         _loc4_.id=param1.@type;
         _loc4_.name=param1.DisplayId;
         _loc4_.unlockLevel=param1.UnlockLevel;
         _loc4_.fegotu=new Fip(_loc2_,_loc3_);
         var _loc5_:Dywygave = this.model.gug(param1.PlayerClassType);
         _loc5_.sybiwu.ruricoke(_loc4_);
         return;
      }
   }

}