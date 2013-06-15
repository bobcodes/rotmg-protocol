package taz
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.events.KeyboardEvent;


   public class Vagyf extends Sprite
   {
      public function Vagyf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tonykuco=new Dictionary();
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var tonykuco:Dictionary;

      private var niz:int = 0;

      private var selected_:Fetypu = null;

      public function hihawu() : int {
         return this.selected_.voliwicub;
      }

      public function lyh(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Fetypu = null;
         var _loc2_:* = 0;
         while(_loc2_<numChildren)
         {
            _loc3_=getChildAt(_loc2_) as Fetypu;
            if(_loc3_==null)
            {
            }
            else
            {
               if(_loc3_.voliwicub==param1)
               {
                  this.setSelected(_loc3_);
                  break;
               }
            }
            _loc2_++;
         }
         return;
      }

      protected function setSelected(param1:Fetypu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(stage.focus!=null)
         {
            return;
         }
         var _loc2_:Fetypu = this.tonykuco[param1.keyCode];
         if(_loc2_==null)
         {
            return;
         }
         _loc2_.callback_(_loc2_);
         return;
      }

      protected function dyby(param1:String, param2:int, param3:Function, param4:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Fetypu = new Fetypu(param1,param3,param4);
         _loc5_.y=this.niz;
         addChild(_loc5_);
         this.tonykuco[param2]=_loc5_;
         if(this.selected_==null)
         {
            this.setSelected(_loc5_);
         }
         this.niz=this.niz+30;
         return;
      }

      protected function sorimo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.niz=this.niz+30;
         return;
      }
   }

}