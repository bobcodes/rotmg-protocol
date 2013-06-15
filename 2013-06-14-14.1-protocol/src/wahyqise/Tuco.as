package wahyqise
{
   import com.company.assembleegameclient.objects.Player;
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.GameObject;


   public class Tuco extends Object
   {
      public function Tuco() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var player:Player;

      public var gameObjects:Dictionary;

      public function tomu(param1:int) : GameObject {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:GameObject = this.gameObjects[param1];
         if(!_loc2_&&this.player.objectId_==param1)
         {
            _loc2_=this.player;
         }
         return _loc2_;
      }
   }

}