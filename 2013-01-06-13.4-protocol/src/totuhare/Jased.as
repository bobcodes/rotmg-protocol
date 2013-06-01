package totuhare
{
[CLASS1650]   import koqeko.Kevut;


   public class Jased extends Object implements Qebar
   {
      public function Jased() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const qepim:RegExp = new RegExp("(\\{([^\\{]+?)\\})","gi");

      private var lazisode:String = "";

      private var jokozyv:Array;

      private var provider:Kevut;

      public function setPattern(param1:String) : Jased {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lazisode=param1;
         return this;
      }

      public function suhuvy(param1:Kevut) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.provider=param1;
         return;
      }

      public function getString() : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         this.jokozyv=this.lazisode.match(this.qepim);
         var _loc1_:String = this.lazisode;
         for each (_loc2_ in this.jokozyv)
         {
            _loc1_=_loc1_.replace(_loc2_,this.provider.getValue(_loc2_.substr(1,_loc2_.length-2)));
         }
         return _loc1_.replace(new RegExp("\\\\n","g"),"\n");
      }
   }
[/CLASS]
}