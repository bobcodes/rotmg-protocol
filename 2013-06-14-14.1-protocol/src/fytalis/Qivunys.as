package fytalis
{
   import hilonec.PlayerMenu;
   import com.company.assembleegameclient.game.Pajemiz;
   import com.company.assembleegameclient.objects.Player;


   public class Qivunys extends Object
   {
      public function Qivunys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function create(param1:Pajemiz, param2:Player) : PlayerMenu {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:PlayerMenu = new PlayerMenu();
         _loc3_.init(param1,param2);
         return _loc3_;
      }
   }

}