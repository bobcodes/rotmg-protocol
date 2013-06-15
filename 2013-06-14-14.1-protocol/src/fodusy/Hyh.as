package fodusy
{
   import wahyqise.Tuco;
   import poho.Kyhy;
   import kabam.rotmg.assets.services.Bytedif;
   import firo.Binifyra;
   import com.company.assembleegameclient.objects.Player;
   import poho.Dywygave;
   import poho.Pom;


   public class Hyh extends Object
   {
      public function Hyh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var model:Tuco;

      public var classes:Kyhy;

      public var factory:Bytedif;

      public function execute(param1:Binifyra) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Player = null;
         var _loc3_:* = 0;
         var _loc4_:Dywygave = null;
         _loc2_=(param1.player)||(this.model.player);
         _loc3_=param1.skinID;
         _loc4_=this.classes.gug(_loc2_.objectType_);
         var _loc5_:Pom = _loc4_.sybiwu.vobydozid(_loc3_);
         _loc2_.cagibyg=_loc3_;
         _loc2_.skin=this.factory.koqinal(_loc5_.fegotu);
         _loc2_.zenaf=false;
         return;
      }
   }

}