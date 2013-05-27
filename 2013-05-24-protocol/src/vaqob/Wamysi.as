package vaqob
{
   import nyvubeze.PlayerMenu;
   import com.company.assembleegameclient.game.Nukomesih;
   import com.company.assembleegameclient.objects.Player;


   public class Wamysi extends Object
   {
      public function Wamysi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function create(param1:Nukomesih, param2:Player) : PlayerMenu {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:PlayerMenu = new PlayerMenu();
         _loc3_.init(param1,param2);
         return _loc3_;
      }
   }

}