package vipyjasar
{
[CLASS1158]   import tysenyzy.Zovisis;
   import tiqydad.Fevirofow;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.utils.Dictionary;


   public class Qojotecim extends Zovisis
   {
      public function Qojotecim() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var vyq:Fevirofow;

      public var view:GameSprite;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vyq.add(this.saw);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vyq.remove(this.saw);
         return;
      }

      private function saw(param1:String="") : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setFocus(this.zumy(param1));
         return;
      }

      private function zumy(param1:String) : GameObject {
         var _loc6_:* = true;
         var _loc7_:* = false;
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
[/CLASS]
}