package fop
{
   import qov.Kalefu;
   import hycaka.Ruh;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Dictionary;


   public class Nota extends Kalefu
   {
      public function Nota() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var jejowiqo:Ruh;

      public var view:GameSprite;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jejowiqo.add(this.tev);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jejowiqo.remove(this.tev);
         return;
      }

      private function tev(param1:String="") : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setFocus(this.vebudosy(param1));
         return;
      }

      private function vebudosy(param1:String) : GameObject {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:GameObject = null;
         if(param1=="")
         {
            return this.view.map.player_;
         }
         var _loc2_:Dictionary = this.view.map.goDict_;
         for each (_loc3_ in _loc2_)
         {
            if(_loc3_.name_==param1)
            {
               return _loc3_;
            }
         }
         return this.view.map.player_;
      }
   }

}