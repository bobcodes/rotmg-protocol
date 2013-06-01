package nec
{
   import byzany.Nagumy;


   public class Feti extends Object implements Zirewe
   {
      public function Feti() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var ladewavaq:String;

      private var tokens:Object;

      private var pydi:String = "";

      private var kyro:String = "";

      private var provider:Nagumy;

      public function lysano(param1:String, param2:Object=null) : Feti {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ladewavaq=param1;
         this.tokens=param2;
         return this;
      }

      public function setPrefix(param1:String) : Feti {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyro=param1;
         return this;
      }

      public function setPostfix(param1:String) : Feti {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pydi=param1;
         return this;
      }

      public function menyhaky(param1:Nagumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.provider=param1;
         return;
      }

      public function getString() : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc1_:String = this.ladewavaq;
         for (_loc2_ in this.tokens)
         {
            _loc3_=this.tokens[_loc2_];
            if(_loc3_.charAt(0)=="{"&&_loc3_.charAt(_loc3_.length-1)=="}")
            {
               _loc3_=this.provider.getValue(_loc3_.substr(1,_loc3_.length-2));
            }
            _loc1_=_loc1_.replace("{"+_loc2_+"}",_loc3_);
         }
         _loc1_=_loc1_.replace(new RegExp("\\\\n","g"),"\n");
         return this.kyro+_loc1_+this.pydi;
      }
   }

}