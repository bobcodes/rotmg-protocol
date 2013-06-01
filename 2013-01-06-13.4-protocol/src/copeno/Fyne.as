package copeno
{
[CLASS1662]   import com.company.assembleegameclient.map.Map;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import pigeguwo.Jazyv;
   import com.company.assembleegameclient.objects.GameObject;
   import pigeguwo.QuestToolTip;
   import com.company.assembleegameclient.parameters.Parameters;
   import pigeguwo.Qyto;
   import com.company.assembleegameclient.map.Quest;
   import com.company.assembleegameclient.map.Fot;


   public class Fyne extends Wyj
   {
      public function Fyne(param1:Map) {
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
         volokyd(this.getToolTip(go_,getTimer()));
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.onMouseOut(param1);
         this.refreshToolTip();
         return;
      }

      private function getToolTip(param1:GameObject, param2:int) : Jazyv {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==null||param1.texture_==null)
         {
            return null;
         }
         if(this.semohohy(param2))
         {
            return new QuestToolTip(go_);
         }
         if(Parameters.data_.showQuestPortraits)
         {
            return new Qyto(param1);
         }
         return null;
      }

      private function semohohy(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Quest = this.map_.quest_;
         return (dupo)||(_loc2_.isNew(param1));
      }

      override public function draw(param1:int, param2:Fot) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc3_:GameObject = this.map_.quest_.getObject(param1);
         if(_loc3_!=go_)
         {
            bicu(_loc3_);
            volokyd(this.getToolTip(_loc3_,param1));
         }
         else
         {
            if(go_!=null)
            {
               _loc4_=picazivu is QuestToolTip;
               _loc5_=this.semohohy(param1);
               if(_loc4_!=_loc5_)
               {
                  volokyd(this.getToolTip(_loc3_,param1));
               }
            }
         }
         super.draw(param1,param2);
         return;
      }
   }
[/CLASS]
}