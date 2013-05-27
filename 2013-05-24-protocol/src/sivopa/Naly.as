package sivopa
{
   import laho.Bolyroty;


   public class Naly extends Object
   {
      public function Naly() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      protected var tipopiqy:Bolyroty;

      public function get naril() : Bolyroty {
         return this.tipopiqy;
      }

      public function set naril(param1:Bolyroty) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!==this.tipopiqy)
         {
            this.tipopiqy=param1;
         }
         return;
      }

      public function get wukycasew() : Bolyroty {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.tipopiqy)
         {
            return null;
         }
         var _loc1_:Bolyroty = this.tipopiqy;
         while(_loc1_.next)
         {
            _loc1_=_loc1_.next;
         }
         return _loc1_;
      }

      public function remove(param1:Bolyroty) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bolyroty = this.tipopiqy;
         if(_loc2_==param1)
         {
            this.tipopiqy=param1.next;
         }
         while(_loc2_)
         {
            if(_loc2_.next==param1)
            {
               _loc2_.next=param1.next;
            }
            _loc2_=_loc2_.next;
         }
         return;
      }
   }

}