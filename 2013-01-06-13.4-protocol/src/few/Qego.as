package few
{
[CLASS1794]   import sogi.Vydosyb;


   public class Qego extends Object
   {
      public function Qego() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      protected var kyvyqada:Vydosyb;

      public function get bufitot() : Vydosyb {
         return this.kyvyqada;
      }

      public function set bufitot(param1:Vydosyb) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!==this.kyvyqada)
         {
            this.kyvyqada=param1;
         }
         return;
      }

      public function get tafumapoq() : Vydosyb {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.kyvyqada)
         {
            return null;
         }
         var _loc1_:Vydosyb = this.kyvyqada;
         while(_loc1_.next)
         {
            _loc1_=_loc1_.next;
         }
         return _loc1_;
      }

      public function remove(param1:Vydosyb) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vydosyb = this.kyvyqada;
         if(_loc2_==param1)
         {
            this.kyvyqada=param1.next;
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
[/CLASS]
}