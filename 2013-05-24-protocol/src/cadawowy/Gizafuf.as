package cadawowy
{
   import __AS3__.vec.Vector;


   public class Gizafuf extends Object
   {
      public function Gizafuf(param1:Vector.<Kacyhoty>) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.nenizi=param1;
         return;
      }

      private var nenizi:Vector.<Kacyhoty>;

      private var selected:Kacyhoty;

      public function setSelected(param1:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Kacyhoty = null;
         for each (_loc2_ in this.nenizi)
         {
            if(_loc2_.getValue()==param1)
            {
               this.sih(_loc2_);
               return;
            }
         }
         return;
      }

      public function zega() : Kacyhoty {
         return this.selected;
      }

      private function sih(param1:Kacyhoty) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.selected!=null)
         {
            this.selected.setSelected(false);
         }
         this.selected=param1;
         this.selected.setSelected(true);
         return;
      }
   }

}