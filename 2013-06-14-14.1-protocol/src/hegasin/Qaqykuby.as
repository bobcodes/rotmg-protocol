package hegasin
{
   import qypajun.Gaz;


   public class Qaqykuby extends Object
   {
      public function Qaqykuby() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      protected var sas:Gaz;

      public function get ryvulavaj() : Gaz {
         return this.sas;
      }

      public function set ryvulavaj(param1:Gaz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!==this.sas)
         {
            this.sas=param1;
         }
         return;
      }

      public function get qyr() : Gaz {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.sas)
         {
            return null;
         }
         var _loc1_:Gaz = this.sas;
         while(_loc1_.next)
         {
            _loc1_=_loc1_.next;
         }
         return _loc1_;
      }

      public function remove(param1:Gaz) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Gaz = this.sas;
         if(_loc2_==param1)
         {
            this.sas=param1.next;
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