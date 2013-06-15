package tyk
{
   import __AS3__.vec.Vector;


   public class Bujyqap extends Object
   {
      public function Bujyqap(param1:Vector.<Tidys>) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.wofulo=param1;
         return;
      }

      private var wofulo:Vector.<Tidys>;

      private var selected:Tidys;

      public function setSelected(param1:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Tidys = null;
         for each (_loc2_ in this.wofulo)
         {
            if(_loc2_.getValue()==param1)
            {
               this.fukeluk(_loc2_);
               return;
            }
         }
         return;
      }

      public function gype() : Tidys {
         return this.selected;
      }

      private function fukeluk(param1:Tidys) : void {
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

}