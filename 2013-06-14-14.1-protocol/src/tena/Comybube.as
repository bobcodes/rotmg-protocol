package tena
{
   import tytojonib.Kyjefe;
   import pak.Jote;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Dictionary;


   public class Comybube extends Kyjefe
   {
      public function Comybube() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cumu:Jote;

      public var view:GameSprite;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cumu.add(this.lubeha);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cumu.remove(this.lubeha);
         return;
      }

      private function lubeha(param1:String="") : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setFocus(this.fiqih(param1));
         return;
      }

      private function fiqih(param1:String) : GameObject {
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