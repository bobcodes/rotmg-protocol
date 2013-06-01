package bifunaj
{
[CLASS1561]

   public class Zut extends Object
   {
      public function Zut(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.fetag=new Nicap(param1);
         this.nazudef();
         this.value=this.gyvupedo();
         return;
      }

      private var value;

      private var fetag:Nicap;

      private var token:Qehybe;

      public function getValue() : * {
         return this.value;
      }

      private function nazudef() : Qehybe {
         return this.token=this.fetag.ziti();
      }

      private function rafaz() : Array {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = new Array();
         this.nazudef();
         if(this.token.type==Zovabuny.gatawury)
         {
            return _loc1_;
         }
         do
         {
            _loc1_.push(this.gyvupedo());
            this.nazudef();
            if(this.token.type==Zovabuny.gatawury)
            {
               return _loc1_;
            }
            if(this.token.type==Zovabuny.hibyr)
            {
               this.nazudef();
            }
            else
            {
               this.fetag.sac("Expecting ] or , but found "+this.token.value);
            }
         }
         while(true);
      }

      private function babebug() : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.nazudef();
         if(this.token.type==Zovabuny.qenilyger)
         {
            return _loc1_;
         }
         while(true)
         {
         }
      }

      private function gyvupedo() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.token==null)
         {
            this.fetag.sac("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case Zovabuny.zuqakohu:
               return this.babebug();
            case Zovabuny.lip:
               return this.rafaz();
            case Zovabuny.ryzalowad:
            case Zovabuny.tyha:
            case Zovabuny.buqysuci:
            case Zovabuny.mah:
            case Zovabuny.NULL:
               return this.token.value;
            default:
               this.fetag.sac("Unexpected "+this.token.value);
               return null;
         }
      }
   }
[/CLASS]
}