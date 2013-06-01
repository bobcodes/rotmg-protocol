package civop
{
[CLASS1371]   import __AS3__.vec.Vector;


   public class Qis extends Object
   {
      public function Qis(param1:Vector.<Bymuwujez>) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.lynywoqej=param1;
         return;
      }

      private var lynywoqej:Vector.<Bymuwujez>;

      private var selected:Bymuwujez;

      public function setSelected(param1:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Bymuwujez = null;
         for each (_loc2_ in this.lynywoqej)
         {
            if(_loc2_.getValue()==param1)
            {
               this.gurub(_loc2_);
               return;
            }
         }
         return;
      }

      public function docew() : Bymuwujez {
         return this.selected;
      }

      private function gurub(param1:Bymuwujez) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.selected!=null)
         {
            this.selected.setSelected(false);
         }
         this.selected=param1;
         this.selected.setSelected(true);
         return;
      }
   }
[/CLASS]
}