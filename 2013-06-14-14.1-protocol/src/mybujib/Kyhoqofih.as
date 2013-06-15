package mybujib
{
   import com.company.assembleegameclient.map.Map;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import mavew.Qyryl;
   import com.company.assembleegameclient.objects.GameObject;
   import mavew.QuestToolTip;
   import com.company.assembleegameclient.parameters.Parameters;
   import mavew.Tomyn;
   import com.company.assembleegameclient.map.Quest;
   import com.company.assembleegameclient.map.Qawosiwi;


   public class Kyhoqofih extends Kuvybuqec
   {
      public function Kyhoqofih(param1:Map) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(16352321,12919330,true);
         this.map_=param1;
         return;
      }

      public var map_:Map;

      public function refreshToolTip() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         cagemec(this.getToolTip(go_,getTimer()));
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.onMouseOver(param1);
         this.refreshToolTip();
         return;
      }

      override protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onMouseOut(param1);
         this.refreshToolTip();
         return;
      }

      private function getToolTip(param1:GameObject, param2:int) : Qyryl {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==null||param1.texture_==null)
         {
            return null;
         }
         if(this.piluhuc(param2))
         {
            return new QuestToolTip(go_);
         }
         if(Parameters.data_.showQuestPortraits)
         {
            return new Tomyn(param1);
         }
         return null;
      }

      private function piluhuc(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Quest = this.map_.quest_;
         return (picolumah)||(_loc2_.isNew(param1));
      }

      override public function draw(param1:int, param2:Qawosiwi) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc3_:GameObject = this.map_.quest_.getObject(param1);
         if(_loc3_!=go_)
         {
            byrapywyd(_loc3_);
            cagemec(this.getToolTip(_loc3_,param1));
         }
         else
         {
            if(go_!=null)
            {
               _loc4_=viponoke is QuestToolTip;
               _loc5_=this.piluhuc(param1);
               if(_loc4_!=_loc5_)
               {
                  cagemec(this.getToolTip(_loc3_,param1));
               }
            }
         }
         super.draw(param1,param2);
         return;
      }
   }

}