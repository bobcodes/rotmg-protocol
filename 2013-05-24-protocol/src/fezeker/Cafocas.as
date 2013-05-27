package fezeker
{
   import com.company.assembleegameclient.map.Map;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import povopito.Ryduwi;
   import com.company.assembleegameclient.objects.GameObject;
   import povopito.QuestToolTip;
   import aaa.rotmg.config.UserConfig;
   import povopito.Zuwoqede;
   import com.company.assembleegameclient.map.Quest;
   import com.company.assembleegameclient.map.Wypyj;


   public class Cafocas extends Hocajicov
   {
      public function Cafocas(param1:Map) {
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
         tyvu(this.getToolTip(go_,getTimer()));
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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

      private function getToolTip(param1:GameObject, param2:int) : Ryduwi {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==null||param1.texture_==null)
         {
            return null;
         }
         if(this.dogugiwi(param2))
         {
            return new QuestToolTip(go_);
         }
         if(UserConfig.data_.showQuestPortraits)
         {
            return new Zuwoqede(param1);
         }
         return null;
      }

      private function dogugiwi(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Quest = this.map_.quest_;
         return (vefymyjul)||(_loc2_.isNew(param1));
      }

      override public function draw(param1:int, param2:Wypyj) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc3_:GameObject = this.map_.quest_.getObject(param1);
         if(_loc3_!=go_)
         {
            linotes(_loc3_);
            tyvu(this.getToolTip(_loc3_,param1));
         }
         else
         {
            if(go_!=null)
            {
               _loc4_=rezaf is QuestToolTip;
               _loc5_=this.dogugiwi(param1);
               if(_loc4_!=_loc5_)
               {
                  tyvu(this.getToolTip(_loc3_,param1));
               }
            }
         }
         super.draw(param1,param2);
         return;
      }
   }

}