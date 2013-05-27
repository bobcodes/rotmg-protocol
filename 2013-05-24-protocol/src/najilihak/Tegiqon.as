package najilihak
{
   import cuwyg.Nihuvi;
   import fulaw.Vihekivuc;
   import kabam.rotmg.assets.services.Cafe;
   import sonepyc.Symukytu;
   import com.company.assembleegameclient.objects.Player;
   import fulaw.Jimi;
   import fulaw.Dasin;


   public class Tegiqon extends Object
   {
      public function Tegiqon() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Nihuvi;

      public var classes:Vihekivuc;

      public var factory:Cafe;

      public function execute(param1:Symukytu) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Player = null;
         var _loc3_:* = 0;
         var _loc4_:Jimi = null;
         _loc2_=(param1.player)||(this.model.player);
         _loc3_=param1.skinID;
         _loc4_=this.classes.lyt(_loc2_.objectType_);
         var _loc5_:Dasin = _loc4_.socucu.sek(_loc3_);
         _loc2_.majicak=_loc3_;
         _loc2_.skin=this.factory.maso(_loc5_.ladewavaq);
         _loc2_.tijusu=false;
         return;
      }
   }

}