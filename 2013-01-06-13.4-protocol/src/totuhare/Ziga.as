package totuhare
{
[CLASS1649]   import koqeko.Kevut;


   public class Ziga extends Object implements Qebar
   {
      public function Ziga() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var jaqyb:String;

      private var tokens:Object;

      private var nylowoky:String = "";

      private var qupibi:String = "";

      private var provider:Kevut;

      public function vanajo(param1:String, param2:Object=null) : Ziga {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jaqyb=param1;
         this.tokens=param2;
         return this;
      }

      public function setPrefix(param1:String) : Ziga {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qupibi=param1;
         return this;
      }

      public function setPostfix(param1:String) : Ziga {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nylowoky=param1;
         return this;
      }

      public function suhuvy(param1:Kevut) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.provider=param1;
         return;
      }

      public function getString() : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc1_:String = this.jaqyb;
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
         return this.qupibi+_loc1_+this.nylowoky;
      }
   }
[/CLASS]
}