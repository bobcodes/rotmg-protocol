package jediwip
{
   import cycuka.Sinaf;


   public class Zymyvug extends Object implements Tunyhazo
   {
      public function Zymyvug() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const nefekeno:RegExp = new RegExp("(\\{([^\\{]+?)\\})","gi");

      private var vivuna:String = "";

      private var juh:Array;

      private var provider:Sinaf;

      public function setPattern(param1:String) : Zymyvug {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vivuna=param1;
         return this;
      }

      public function zivadova(param1:Sinaf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.provider=param1;
         return;
      }

      public function getString() : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         this.juh=this.vivuna.match(this.nefekeno);
         var _loc1_:String = this.vivuna;
         for each (_loc2_ in this.juh)
         {
            _loc1_=_loc1_.replace(_loc2_,this.provider.getValue(_loc2_.substr(1,_loc2_.length-2)));
         }
         return _loc1_.replace(new RegExp("\\\\n","g"),"\n");
      }
   }

}