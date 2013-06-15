package jiwej
{


   public class Ruti extends Object
   {
      public function Ruti(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.fif=new Dewofi(param1);
         this.vap();
         this.value=this.rojyzov();
         return;
      }

      private var value;

      private var fif:Dewofi;

      private var token:Nedyhyqu;

      public function getValue() : * {
         return this.value;
      }

      private function vap() : Nedyhyqu {
         return this.token=this.fif.fud();
      }

      private function relybujih() : Array {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = new Array();
         this.vap();
         if(this.token.type==Ruvyzu.bihygu)
         {
            return _loc1_;
         }
         while(_loc1_.push(this.rojyzov()), this.vap(), this.token.type!=Ruvyzu.bihygu)
         {
            if(this.token.type==Ruvyzu.vosemyqi)
            {
               this.vap();
            }
            else
            {
               this.fif.wedabyfyj("Expecting ] or , but found "+this.token.value);
            }
         }
         return _loc1_;
      }

      private function riruzywaj() : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.vap();
         if(this.token.type==Ruvyzu.wavoragu)
         {
            return _loc1_;
         }
         while(true)
         {
            if(this.token.type==Ruvyzu.laq)
            {
               _loc2_=String(this.token.value);
               this.vap();
               if(this.token.type==Ruvyzu.kepohove)
               {
                  this.vap();
                  _loc1_[_loc2_]=this.rojyzov();
                  this.vap();
                  if(this.token.type==Ruvyzu.wavoragu)
                  {
                     break;
                  }
                  if(this.token.type==Ruvyzu.vosemyqi)
                  {
                     this.vap();
                  }
                  else
                  {
                     this.fif.wedabyfyj("Expecting } or , but found "+this.token.value);
                  }
               }
               else
               {
                  this.fif.wedabyfyj("Expecting : but found "+this.token.value);
               }
            }
            else
            {
               this.fif.wedabyfyj("Expecting string but found "+this.token.value);
            }
         }
         return _loc1_;
      }

      private function rojyzov() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.token==null)
         {
            this.fif.wedabyfyj("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case Ruvyzu.sebofe:
               return this.riruzywaj();
            case Ruvyzu.paqydoja:
               return this.relybujih();
            case Ruvyzu.laq:
            case Ruvyzu.baf:
            case Ruvyzu.zekomy:
            case Ruvyzu.fokadut:
            case Ruvyzu.NULL:
               return this.token.value;
            default:
               this.fif.wedabyfyj("Unexpected "+this.token.value);
               return null;
         }
      }
   }

}