package tubovetyc
{
[CLASS1646]   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.events.KeyboardEvent;


   public class Sesy extends Sprite
   {
      public function Sesy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ravejy=new Dictionary();
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var ravejy:Dictionary;

      private var wona:int = 0;

      private var selected_:Tepojyhob = null;

      public function tyvi() : int {
         return this.selected_.boko;
      }

      public function powakos(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Tepojyhob = null;
         var _loc2_:* = 0;
         while(_loc2_<numChildren)
         {
            _loc3_=getChildAt(_loc2_) as Tepojyhob;
            if(_loc3_==null)
            {
            }
            else
            {
               if(_loc3_.boko==param1)
               {
                  this.setSelected(_loc3_);
                  break;
               }
            }
            _loc2_++;
         }
         return;
      }

      protected function setSelected(param1:Tepojyhob) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.selected_!=null)
         {
            this.selected_.setSelected(false);
         }
         this.selected_=param1;
         this.selected_.setSelected(true);
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(stage.focus!=null)
         {
            return;
         }
         var _loc2_:Tepojyhob = this.ravejy[param1.keyCode];
         if(_loc2_==null)
         {
            return;
         }
         _loc2_.callback_(_loc2_);
         return;
      }

      protected function pehakocur(param1:String, param2:int, param3:Function, param4:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Tepojyhob = new Tepojyhob(param1,param3,param4);
         _loc5_.y=this.wona;
         addChild(_loc5_);
         this.ravejy[param2]=_loc5_;
         if(this.selected_==null)
         {
            this.setSelected(_loc5_);
         }
         this.wona=this.wona+30;
         return;
      }

      protected function docezyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wona=this.wona+30;
         return;
      }
   }
[/CLASS]
}