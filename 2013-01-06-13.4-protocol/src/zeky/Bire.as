package zeky
{
[CLASS92]   import tehakab.Supuvygac;
   import tehakab.Copaqufiv;
   import kabam.rotmg.assets.model.Kybepujyf;
   import tehakab.Cusifyha;


   public class Bire extends Object
   {
      public function Bire() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:XML;

      public var model:Supuvygac;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XMLList = this.data.SkinsList.Objects.Object;
         for each (_loc2_ in _loc1_)
         {
            this.cedonok(_loc2_);
         }
         return;
      }

      private function cedonok(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         _loc2_=param1.AnimatedTexture.File;
         var _loc3_:int = param1.AnimatedTexture.Index;
         var _loc4_:Copaqufiv = new Copaqufiv();
         _loc4_.id=param1.@type;
         _loc4_.name=param1.DisplayId;
         _loc4_.unlockLevel=param1.UnlockLevel;
         _loc4_.jaqyb=new Kybepujyf(_loc2_,_loc3_);
         var _loc5_:Cusifyha = this.model.waqy(param1.PlayerClassType);
         _loc5_.pikyremo.nutehe(_loc4_);
         return;
      }
   }
[/CLASS]
}