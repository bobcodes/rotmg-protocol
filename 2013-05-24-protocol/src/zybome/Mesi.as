package zybome
{
   import likikul.Wubeh;
   import likikul.Fop;


   public class Mesi extends Object
   {
      public function Mesi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var client:Wubeh;

      public var radizafop:Fop;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.client.jibumuriz())
         {
            this.radizafop.saqilibur();
         }
         return;
      }
   }

}