package dulywywo
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.events.KeyboardEvent;


   public class Lidyvamu extends Sprite
   {
      public function Lidyvamu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyba=new Dictionary();
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var dyba:Dictionary;

      private var zogawuzo:int = 0;

      private var selected_:Moqy = null;

      public function gicawol() : int {
         return this.selected_.figawumel;
      }

      public function heqenage(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Moqy = null;
         var _loc2_:* = 0;
         while(_loc2_<numChildren)
         {
            _loc3_=getChildAt(_loc2_) as Moqy;
            if(_loc3_==null)
            {
            }
            else
            {
               if(_loc3_.figawumel==param1)
               {
                  this.setSelected(_loc3_);
                  break;
               }
            }
            _loc2_++;
         }
         return;
      }

      protected function setSelected(param1:Moqy) : void {
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(stage.focus!=null)
         {
            return;
         }
         var _loc2_:Moqy = this.dyba[param1.keyCode];
         if(_loc2_==null)
         {
            return;
         }
         _loc2_.callback_(_loc2_);
         return;
      }

      protected function qoqyk(param1:String, param2:int, param3:Function, param4:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Moqy = new Moqy(param1,param3,param4);
         _loc5_.y=this.zogawuzo;
         addChild(_loc5_);
         this.dyba[param2]=_loc5_;
         if(this.selected_==null)
         {
            this.setSelected(_loc5_);
         }
         this.zogawuzo=this.zogawuzo+30;
         return;
      }

      protected function pobuqire() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zogawuzo=this.zogawuzo+30;
         return;
      }
   }

}