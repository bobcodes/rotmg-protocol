package warude
{
[CLASS1161]   import sybyzowo.PlayerMenu;
   import com.company.assembleegameclient.game.Tosahafu;
   import com.company.assembleegameclient.objects.Player;


   public class Rasifo extends Object
   {
      public function Rasifo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function create(param1:Tosahafu, param2:Player) : PlayerMenu {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:PlayerMenu = new PlayerMenu();
         _loc3_.init(param1,param2);
         return _loc3_;
      }
   }
[/CLASS]
}