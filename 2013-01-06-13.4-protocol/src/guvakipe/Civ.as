package guvakipe
{
[CLASS557]   import com.company.assembleegameclient.objects.Player;
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.GameObject;


   public class Civ extends Object
   {
      public function Civ() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var player:Player;

      public var gameObjects:Dictionary;

      public function fujofegyl(param1:int) : GameObject {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:GameObject = this.gameObjects[param1];
         if(!_loc2_&&this.player.objectId_==param1)
         {
            _loc2_=this.player;
         }
         return _loc2_;
      }
   }
[/CLASS]
}