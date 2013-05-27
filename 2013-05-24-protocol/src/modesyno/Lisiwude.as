package modesyno
{


   public class Lisiwude extends Object
   {
      public function Lisiwude(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.jorur=new Mude(param1);
         this.pinure();
         this.value=this.haryvoji();
         return;
      }

      private var value;

      private var jorur:Mude;

      private var token:Rar;

      public function getValue() : * {
         return this.value;
      }

      private function pinure() : Rar {
         return this.token=this.jorur.dywyjuq();
      }

      private function pubagy() : Array {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Array = new Array();
         this.pinure();
         if(this.token.type==Botic.lahe)
         {
            return _loc1_;
         }
         do
         {
            _loc1_.push(this.haryvoji());
            this.pinure();
            if(this.token.type==Botic.lahe)
            {
               return _loc1_;
            }
            if(this.token.type==Botic.nesebut)
            {
               this.pinure();
            }
            else
            {
               this.jorur.mubip("Expecting ] or , but found "+this.token.value);
            }
         }
         while(true);
      }

      private function nejysogi() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.pinure();
         if(this.token.type==Botic.cezakeg)
         {
            return _loc1_;
         }
         while(true)
         {
         }
      }

      private function haryvoji() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.token==null)
         {
            this.jorur.mubip("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case Botic.kiluky:
               return this.nejysogi();
            case Botic.rapu:
               return this.pubagy();
            case Botic.kocada:
            case Botic.ficypufy:
            case Botic.wacy:
            case Botic.mozuf:
            case Botic.NULL:
               return this.token.value;
            default:
               this.jorur.mubip("Unexpected "+this.token.value);
               return null;
         }
      }
   }

}