package nec
{
   import byzany.Nagumy;


   public class Noz extends Object implements Zirewe
   {
      public function Noz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const jahuke:RegExp = new RegExp("(\\{([^\\{]+?)\\})","gi");

      private var segeb:String = "";

      private var cin:Array;

      private var provider:Nagumy;

      public function setPattern(param1:String) : Noz {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.segeb=param1;
         return this;
      }

      public function menyhaky(param1:Nagumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.provider=param1;
         return;
      }

      public function getString() : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         this.cin=this.segeb.match(this.jahuke);
         var _loc1_:String = this.segeb;
         for each (_loc2_ in this.cin)
         {
            _loc1_=_loc1_.replace(_loc2_,this.provider.getValue(_loc2_.substr(1,_loc2_.length-2)));
         }
         return _loc1_.replace(new RegExp("\\\\n","g"),"\n");
      }
   }

}