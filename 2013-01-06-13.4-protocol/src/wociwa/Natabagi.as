package wociwa
{
[CLASS1314]   import guvakipe.Civ;
   import tehakab.Supuvygac;
   import kabam.rotmg.assets.services.Vohemija;
   import fadowu.Fotigy;
   import com.company.assembleegameclient.objects.Player;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;


   public class Natabagi extends Object
   {
      public function Natabagi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Civ;

      public var classes:Supuvygac;

      public var factory:Vohemija;

      public function execute(param1:Fotigy) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Player = null;
         var _loc3_:* = 0;
         var _loc4_:Cusifyha = null;
         _loc2_=(param1.player)||(this.model.player);
         _loc3_=param1.skinID;
         _loc4_=this.classes.waqy(_loc2_.objectType_);
         var _loc5_:Copaqufiv = _loc4_.pikyremo.vobasyg(_loc3_);
         _loc2_.bazygajap=_loc3_;
         _loc2_.skin=this.factory.wivyh(_loc5_.jaqyb);
         _loc2_.pimijaz=false;
         return;
      }
   }
[/CLASS]
}